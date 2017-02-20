<?php
namespace app\index\controller;
//use think\Controller;//引入命名空间
class Index extends Base
{
    public function index()
    {


//        var_dump($result);

//        $result = \think\Db::name('article')->order('time', 'asc')->select();
//        $result = \think\Db::name('article')->order('id', 'asc')->paginate(3);


//        foreach ($result as $k=>$v){
//            $res_id[]=$v['cateid'];
//        }
//        $cates=\think\Db::name('cate')->field('catename')->where('id','in',$res_id)->select();
//        $catename=$cates;
//        $this->assign('catename',$catename);
//上面的利用关联合并成下面
        $result=\think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.id,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('id','desc')->paginate(2);
        $this->assign('result',$result);

        return $this->fetch();//调用think\Controller里的fetch,布局模板
    }
}
