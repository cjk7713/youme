<?php
namespace app\index\controller;
//use think\Controller;//引入命名空间
class Article extends Base
{
    public function index()
    {
        $id=input('artid');

        db('article')->where('id', $id)->setInc('click');//使用助手函数每次访问字段自增加一setInc可添加自增位数
        $arts=\think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.title,a.content,a.time,a.click,a.id,a.cateid,c.catename,a.keywords,a.id,a.pic')->find($id);
        $prev=\think\Db::name('article')->where('id','<',$id)->where('cateid',$arts['cateid'])->order('id desc')->limit(1)->value('id');
        $next=\think\Db::name('article')->where('id','>',$id)->where('cateid',$arts['cateid'])->order('id','asc')->limit(1)->value('id');
        $ralateres=$this->ralate($arts['keywords']);
//        var_dump($ralateres);
        $this->assign('ralateres',$ralateres);
        $this->assign('arts',$arts);
        $this->assign('prev',$prev);
        $this->assign('next',$next);
        return $this->fetch('article');//调用think\Controller里的fetch,布局模板
    }
    public function ralate($keywords){
        $arr=explode(',',$keywords);
        static $ralateres=array();
        foreach ($arr as $k=>$v) {
            $map['keywords'] = ['like', '%' . $v . '%'];
            $artres = \think\Db::name('article')->order('id', 'desc')->where($map)->field('id,title,time')->limit(10)->select();
            $ralateres=array_merge($ralateres,$artres);
            $ralateres=arr_unique($ralateres);
//            $ralateres=array_unique($ralateres);//可以把一唯素组去除重复；

        }
        return $ralateres;
    }

}
