<?php
namespace app\admin\validate;

use think\Validate;

class Admin extends Validate
{
    protected $rule = [
        'username'  =>  'require|max:25|unique:admin',

        'password'=>'require|min:5',
    ];
    protected $message = [
        'username.require'  =>  '用户名不能为空',
        'username.unique'  =>  '用户名不能重复',
        'username.max'  =>  '用户名不能多于10位',
        'password.min'  =>  '密码不能为空',
        'password.min'  =>  '密码不能小于5为',
    ];
    protected $scene = [
        'edit'  =>  ['username'],
    ];
}
//验证