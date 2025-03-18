<?php
class module{
    function exec($param=''){
        helper('module');
        $mod_result=module_run($param);
        return view('_template/main',array('content'=>$mod_result['content'],'title'=>$mod_result['title']));
    }
}