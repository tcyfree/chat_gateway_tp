<?php
namespace app\index\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        $fromid = input("fromid");
        $toid =  input('toid');
        $this->assign('fromid',$fromid);
        $this->assign('toid',$toid);
        return $this->fetch();
    }


    public function lists(){

        $this->assign('fromid',input('fromid'));
        return $this->fetch();
    }


}
