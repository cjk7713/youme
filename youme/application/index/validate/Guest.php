<?php
namespace app\index\validate;

use think\Validate;

class Guest extends Validate
{
    protected $rule = [
        'gname' => 'require|max:20|unique:guest',
        'gdesc'  =>  'require|max:255',
//        'glink'  =>  'require|unique:guest',
//        'gname'  =>  'require|max:25|unique:guest',
//        'gname'  =>  'require|max:25|unique:guest',
    ];
    protected $message = [
        'gname.require' => '用户名不能为空',
        'gname.unique' => '用户名不能重复',
        'gname.max' => '用户名不能多于20位',
        'gdesc.require' => '评论内容不能为空',
        'gdesc.max' => '评论不能多于255',
//        'glink.require' => '个人链接不能为空',
//        'glink.unique' => '个人链接不能重复',
    ];
}
//验证