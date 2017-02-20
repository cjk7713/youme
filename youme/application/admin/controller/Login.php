<?php
namespace app\admin\controller;
use think\Controller;//引入命名空间
use app\admin\model\Login as Log;//使用模型进行数据操作
class Login extends Controller
{
    public function index()
    {
//        $linkres=\think\Db::name('link')->paginate(2);
//        $this->assign('linkres',$linkres);
        if(request()->isPost()){
            $login=new Log();
            $static=$login->login(trim(input('username')),input('password'),input('vrityimg'));
            if($static==4) {
                return $this->error('验证码或用户名错误');
            }else {
                if ($static == 1) {
                    return $this->success('登录成功', 'Index/index');
                } elseif ($static == 2) {
                    return $this->error('账号或者密码错误');
                } else {
                    return $this->error('用户为空或不存在');
                }
            }
        }
        return $this->fetch('login');//调用think\Controller里的fetch,布局模板
    }
    public function logout(){
        session(null);
        return $this->success('退出成功',url('index'));
    }
}
