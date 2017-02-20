<?php
namespace app\admin\controller;
use think\Controller;//引入命名空间
class Base extends Controller
{
    /*
     * 登录session验证跳转
     */
    public function _initialize() //预先执行的初始化方法
    {
        if(!session('id')){
            $this->error('请先登录系统','Login/index');
        }else{

//           $this->redirect('Login/index');
        }
    }

}
