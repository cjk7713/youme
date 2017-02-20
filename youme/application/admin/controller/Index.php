<?php
namespace app\admin\controller;
//use think\Controller;//引入命名空间
class Index extends Base
{
    public function index()
    {
//        echo \think\Session::get('id');
        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }
}