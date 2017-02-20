<?php
/**
 * 2017/2/7 12:50
 */
namespace app\admin\controller;
//use think\Controller;//引入命名空间
//use app\admin\model\Link as Links;//使用模型进行数据操作
class Guest extends Base
{
    public function lst()
    {
        $guestres=\think\Db::name('guest')->order('id', 'desc')->paginate(5);
        $this->assign('guestres',$guestres);
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }


    //删除
    public function del(){
        $id=input('id');
        if(db('guest')->delete($id)){
            return $this->success('删除连接成功','lst');
        }else{
            return $this->error('删除连接失败');
        }
    }
    //修改
}
