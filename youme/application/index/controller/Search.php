<?php
namespace app\index\controller;
use think\Controller;//引入命名空间
class Search extends Base
{
    public function index()
    {
        $edtSearch=input('edtSearch');
        $map['a.keywords']=['like','%'.$edtSearch.'%'];
        $artres=\think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.id,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('id','desc')->where($map)->paginate(2);//连表查询+按。。。
        $this->assign('artres',$artres);

        return $this->fetch('lst');//调用think\Controller里的fetch,布局模板
    }
}
