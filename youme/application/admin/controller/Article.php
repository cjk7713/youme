<?php
namespace app\admin\controller;
//use think\Controller;//引入命名空间
class article extends Base
{
    public function lst()
    {
//        $artres=\think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->select();
        $artres=\think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.id,a.title,a.pic,a.click,a.time,c.catename')->order('id', 'desc')->paginate(5);//使用分页杂项
        $this->assign('artres',$artres);
//        var_dump($artres);die;
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }
    public function add()
    {
        if(request()->isPost()){
            $data=[
                'title'=>input('title'),
                'keywords'=>input('keywords'),
                'desc'=>input('desc'),
                'cateid'=>input('cateid'),
                'content'=>input('content'),
                'time'=>time()
            ];
            if($_FILES['pic']['tmp_name']) {//判断文件是否上传
                // 获取表单上传文件 例如上传了001.jpg
                $file = request()->file('pic');

                // 移动到框架应用根目录/public/uploads/ 目录下
                $info = $file->move(ROOT_PATH . 'public/static' . DS . 'uploads');
//                var_dump($info);
                if($info){
                    $data['pic']='/static/uploads/'.date('Ymd').'/'.$info->getFilename();

                    // 成功上传后 获取上传信息
                    // 输出 jpg
//                    echo $info->getExtension();
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
//                    echo $info->getSaveName();
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
//                    echo $info->getFilename();
                    // 上传失败获取错误信息
//                    echo $file->getError();die;
                }else{
//                    echo 'mo';
                    return $this->error($file->getError());
                }
            }else{
                $data['pic']='';
            }
            $validate = \think\Loader::validate('Article');
            if($validate->check($data)) {
                $db = \think\Db::name('article')->insert($data);
                if ($db) {
                    return $this->success('添加栏目陈宫!', 'lst');
//                    return $this->success($data['pic']);
                } else {
                    return $this->error('添加失败!');
                }
            } else{
                    return $this->error($validate->getError());
            }
            return ;
        }
        $cateres=db('cate')->select();
        $this->assign('cateres',$cateres);
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }
    public function edit()
    {
        if(request()->isPost()){
            $data=[
                'id'=>input('id'),
                'title'=>input('title'),
                'keywords'=>input('keywords'),
                'desc'=>input('desc'),
                'cateid'=>input('cateid'),
                'content'=>input('content'),
//                'time'=>time()
            ];
            if($_FILES['pic']['tmp_name']) {//判断文件是否上传
                // 获取表单上传文件 例如上传了001.jpg
                $file = request()->file('pic');
                // 移动到框架应用根目录/public/uploads/ 目录下
                $info = $file->move(ROOT_PATH . 'public/static' . DS . 'uploads');
//                var_dump($info);
                if($info){
                    $data['pic']='/static/uploads/'.date('Ymd').'/'.$info->getFilename();

                    // 成功上传后 获取上传信息
                    // 输出 jpg
//                    echo $info->getExtension();
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
//                    echo $info->getSaveName();
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
//                    echo $info->getFilename();
                    // 上传失败获取错误信息
//                    echo $file->getError();die;
                }else{
//                    echo 'mo';
                    return $this->error($file->getError());
                }
            }else{
                $data['pic']='';
            }
            $validate = \think\Loader::validate('Article');
            if($validate->check($data)) {
                $db = \think\Db::name('article')->update($data);
                if ($db) {
                    return $this->success('修改文章陈宫!', 'lst');
//                    return $this->success($data['pic']);
                } else {
                    return $this->error('修改失败!');
                }
            } else{
                return $this->error($validate->getError());
            }
            return ;
        }
        // table方法必须指定完整的数据表名
        $arts=\think\Db::name('article')->where('id',input('id'))->find();
        $cateres=db('cate')->select();
        $this->assign('cateres',$cateres);//分配到模板
        $this->assign('arts',$arts);
//        var_dump($arts);
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }
    public function del(){
        $id=input('id');
        if(db('article')->delete($id)){
            return $this->success('删除文章成功','lst');
        }else{
            return $this->error('删除文章失败');
        }
    }
}
