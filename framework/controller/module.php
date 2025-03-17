<?php
class module{
    function index($param=''){

        $content=$param['mod'];
        return view('_template/main',array('content'=>$content,'title'=>'โมดูล'));
    }
}