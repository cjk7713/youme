<?php
namespace app\index\controller;
use think\Controller;//引入命名空间
class Base extends Controller
{
    public function _initialize()
    {
        $this->nav();
    }
    public function nav(){
//        导航栏
        $navres=\think\Db::name('cate')->order('id','asc')->select();
         $this->assign('navres',$navres);

//        $tag_key=\think\Db::name('article')->field('keywords')->select();
////        var_dump($tag_key);
//        $tag_key=self::ralate($tag_key);
//        $this->assign('tag_key',$tag_key);
//右侧栏的标签搜索
        $tag_key=\think\Db::name('article')->field('keywords')->select();
        $tag_arr=array();
        foreach ($tag_key as $v) {
            foreach ($v as $m){
                $tag_arr[]=$m;
            }
        }
        $tag_key=array_unique($tag_arr);
        $this->assign('tag_key',$tag_key);
//        print_r($tag_arr);
//        array_flip($v);反转数组中所有的键以及它们关联的值：
//        $tag_key=array_unique($tag_key);//可以把一唯素组去除重复；
//        $this->assign('tag_key',$tag_key);

//
//        $arr_key=explode(',',$tag_key);
//        static $key_ralateres=array();
//
////
//
//            $ralateres=arr_unique($ralateres);
////            $ralateres=array_unique($ralateres);//可以把一唯素组去除重复；
////
////        }
////        $this->assign('tag_key',$tag_key);
        $rlink=\think\Db::name('link')->where('status','1')->select();
        $this->assign('rlink',$rlink);

        $gue=\think\Db::name('guest')->order('id','desc')->limit(4)->select();
        $this->assign('gue',$gue);
        return ;

    }

}