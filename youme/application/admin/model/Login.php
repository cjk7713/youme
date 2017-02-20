<?php
namespace app\admin\model;

use think\Model;

class Login extends Model
{
    //用户和密码验证
    public function login($username, $password, $code)
    {
        $admin = \think\Db::name('admin')->where('username', '=', $username)->find();
        $captcha = new \think\captcha\Captcha();//验证码sl
        if (!$captcha->check($code)) {
            return 4;
        }else {
            if ($admin) {
                if ($admin['password'] == md5($password)) {
                    \think\Session::set('id', $admin['id']);
                    \think\Session::set('username', $admin['username']);
                    return 1;
                } else {
                    return 2;
                }
            } else {
                return 3;
            }
        }
    }
    // 验证码检测

}