<?php
namespace app\index\controller;
//use think\Controller;//引入命名空间
//use app\index\model\Guest as GuestModel;

class Guest extends Base
{
    public function index()
    {
//        $linkres=\think\Db::name('guest')->order('id', 'desc')->select();
//        $this->assign('linkres',$linkres);

        $linkres = \think\Db::name('guest')->order('id', 'asc')->select();
        $res = "";
        foreach ($linkres as $ke => $v) {
            $v['gtime'] = date("Y-m-d H:i:s", $v['gtime']);
            if ($v['gface'] == 0) {
                $v['gface'] = "__PUBLIC__/static/uploads/face/akl.jpg";
            }
            $res .= <<<EOF
<ul class="msg" id="cmt1605">
    <li class="msgname" id="{$v['gname']}"><img class="avatar"width="32" src="
    {$v['gface']}
    "/>&nbsp;<span class="commentname"><a
            href="" rel="nofollow">{$v['gname']}</a></span><br/>
        <small>&nbsp;发布于&nbsp;{$v['gtime']}&nbsp;&nbsp;</small>
    </li>
    <li class="msgarticle">{$v['gdesc']}</li>
</ul>
EOF;
        }
        $this->assign('res', $res);

        return $this->fetch('guest');//调用think\Controller里的fetch,布局模板
    }


    public function add()
    {
        $guest = \think\Request::instance();

        /*
         if(!$guest->post('gname')) {
             return ['sta' => '请填写称呼'];
         }
         if(!$guest->post('gdesc')) {
             return ['sta' => '请填写评论内容'];
         }*/
//            $guestM=new GuestModel();
//            $guestres=$guestM->output($guest);
        $gname = $guest->post('gname');
        $gdesc = $guest->post('gdesc');
        $glink = $guest->post('glink');
        $ylink = $guest->post('ylink');
        $gtitle = $guest->post('gtitle');
        $gtime = time();

        if ($ylink == 2) {
            $data = [
                'desc' => $gdesc,
                'url' => $glink,
                'title' => $gtitle,
                'status' => 0,
            ];

            $validate = \think\Loader::validate('Link');
//            return ['sta'=>'报警'];
            if ($validate->check($data)) {
                \think\Db::name('link')->insert($data);
                return ['sta' => '2'];
            } else {
                return ['sta' => $validate->getError()];
            }
        } else {
            $data = [
                'gname' => $gname,
                'gdesc' => $gdesc,
//                'glink'=>$glink,
//            'gface' => $gface,
                'gtime' => $gtime,
            ];
//        if ($gface) {//判断文件是否上传
//            move_uploaded_file($gface,ROOT_PATH . 'public/static' . DS . 'uploads/face');
//
//            return ['sta' => $gface];
//            $file=$guest->file('gface');
////            $info = $file->move(ROOT_PATH . 'public/static' . DS . 'uploads/face');
//            if ($info) {
//                return ['sta' => $gface];
//            }
//            die;
//        } else {
//            return ['sta' => '没头像'];
//        }
            $validate = \think\Loader::validate('Guest');
            if ($validate->check($data)) {
                \think\Db::name('guest')->insert($data);
                $gface = "/youme/public//static/uploads/face/akl.jpg";
                $restime = date("Y-m-d H:i:s", $gtime);
                $res = <<<EOF
<ul class="msg" id="cmt1605">
    <li class="msgname"><img class="avatar"width="32" src="{$gface}"/>&nbsp;<span class="commentname"><a
            href="" rel="nofollow">{$gname}</a></span><br/>
        <small>&nbsp;发布于&nbsp;{$restime}&nbsp;&nbsp;</small>
    </li>
    <li class="msgarticle">{$gdesc}</li>
</ul>
EOF;
//            return ['sta'=>$gdesc];
                return ['sta' => '1', 'guestres' => $res];
            } else {
                return ['sta' => $validate->getError()];
            }
        }
    }

}