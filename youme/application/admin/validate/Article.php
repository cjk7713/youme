<?php
namespace app\admin\validate;

use think\Validate;

class Article extends Validate
{
    protected $rule = [
        'title'  =>  'require|max:100|unique:article',
        'keywords'=>'require'
    ];
    protected $message = [
        'title.require'  =>  '标题名称不能为空',
        'title.unique'  =>  '标题名称不能重复',
        'title.max'  =>  '标题不能多于100位',
        'keywords.require'  =>  '关键字不能为空',
    ];
}
//验证