<?php
namespace app\admin\controller;
//use think\Controller;//引入命名空间
class Admin extends Base
{
    public function lst()
    {
        $adminres=\think\Db::name('admin')->order('id', 'asc')->paginate(3);
        $this->assign('adminres',$adminres);
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }

    /**
     * @return mixed|void
     * 添加
     */
    public function add()
    {
       if(request()->isPost()){
            $data=[
                'username'=>input('username'),
                'password'=>md5(input('password')),
            ];
           $validate = \think\Loader::validate('Admin');

           if($validate->check($data)) {
               $db = \think\Db::name('admin')->insert($data);
               if ($db) {
                   return $this->success('添加管理员成功', 'lst');
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
        if($id==1){
            return $this->error('该管理员不能删除');
        }
        if(db('admin')->delete($id)){
            return $this->success('删除成功','lst');
        }else{
            return $this->error('删除失败');
        }
    }
    //修改
    public function edit(){
        $id=input('id');
        if(request()->isPost()) {
            var_dump(input('post.'));
            $userinfo = \think\Db::name('admin')->find($id);
            $password=$userinfo['password'];
            $data = [
                'id' => input('id'),
                'username' => input('username'),
                'password' => input('password')?md5(input('password')):$password,
            ];
            $validate = \think\Loader::validate('Admin');
            if($validate->scene('edit')->check($data)) {
                if ($db = \think\Db::name('admin')->update($data)) {
                    return $this->success('修改管理员成功', 'lst');
                } else {
                    return $this->error('修改失败');
                }
            }else{
                return $this->error($validate->getError());
            }
            //验证
            return;
        }
        $admins=db('admin')->find($id);
        $this->assign('admins',$admins);//分配到模板
        return $this->fetch();
    }
}
