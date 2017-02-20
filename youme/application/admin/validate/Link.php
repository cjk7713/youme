<?php
namespace app\admin\validate;

use think\Validate;

class Link extends Validate
{
    protected $rule = [
//        'title'  =>  'require|max:25|unique:link',
        'title'  =>  'require|max:25',
        'url'=>'require'
    ];
    protected $message = [
        'title.require'  =>  '连接标题不能为空',
        'title.max'  =>  '链接标题不能多于25位',
        'url.require'  =>  '地址不能为空',
    ];
//    protected $scene = [
//        'edit'  =>  ['catename'],
//    ];
}
//验证