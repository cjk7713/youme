<?php
namespace app\admin\controller;
//use think\Controller;//引入命名空间
//use app\admin\model\Link as Links;//使用模型进行数据操作
class Link extends Base
{
    public function lst()
    {
        $linkres=\think\Db::name('link')->order('id', 'desc')->paginate(4);
        $this->assign('linkres',$linkres);
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }

//    public function add()//使用模型进行数据操作
//    {
//        if(request()->isPost()){
//            $links=new Links();
//            $links->data([
//                'title'=>input('title'),
//                'url'=>input('url'),
//                'desc'=>input('desc'),
//            ]);
//            $validate = \think\Loader::validate('Link');
//
//            if($validate->check($links)) {
//                if ($links->save()) {
//                    return $this->success('添加友情链接成功!', 'lst');
//                } else {
//                    return $this->error('添加失败!');
//                }
//            }else{
//                return $this->error($validate->getError());
//            }
//            return;
//        }
//        return $this->fetch();//调用think\Controller里的fetch,布局模板
//    }

    /**
     * @return mixed|void
     * 添加
     */
    public function add()
    {
       if(request()->isPost()){
            $data=[
                'title'=>input('title'),
                'url'=>input('url'),
                'desc'=>input('desc'),
                'status'=>input('status')?1:0,
            ];
           $validate = \think\Loader::validate('Link');

           if($validate->check($data)) {
               $db = \think\Db::name('link')->insert($data);
               if ($db) {
                   return $this->success('添加友情链接成功!', 'lst');
               } else {
                   return $this->error('添加失败!');
               }
           }else{
               return $this->error($validate->getError());
           }
           return;
       }
       return $this->fetch();//调用think\Controller里的fetch,布局模板
    }

    //删除
    public function del(){
        $id=input('id');
        if(db('link')->delete($id)){
            return $this->success('删除连接成功','lst');
        }else{
            return $this->error('删除连接失败');
        }
    }
    //修改
    public function edit(){
        if(request()->isPost()) {
            $data=[
                'id'=>input('id'),
                'title'=>input('title'),
                'url'=>input('url'),
                'desc'=>input('desc'),
                'status'=>input('status')?1:0,
            ];
//            var_dump(input('post.'));
//            var_dump(input('post.'));die;
            $validate = \think\Loader::validate('Link');
            if($validate->check($data)) {
                if ($db = \think\Db::name('link')->update($data)) {

                    return $this->success('修改成功', 'lst');
                } else {
                    return $this->error('修改失败');
                }
            }else{
                return $this->error($validate->getError());
            }
            //验证
            return;
        }
        $id=input('id');
        $links=db('link')->where('id', $id)->find();
        $this->assign('links',$links);
        return $this->fetch();
    }
}
