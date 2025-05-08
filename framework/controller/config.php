<?php
class config{
    
    function index(){
       
        $content='ตั้งค่า-PTS';
        helper('sneat/menu');
        return view('_template/main',array('content'=>$content,'title'=>'ตั้งค่า'));
    }
    function application(){
        $systemModel = model('system_model');
        $config_data=$systemModel->get_config();
        $data['title']='ตั้งค่าระบบ';
        $data['content']=view('config/setting_form',$config_data);
        return view('_template/main',$data);
    }
    function maintenance(){
        $data['content']='ตั้งค่าเวลาการทำงาน.';
        return view('_template/main',$data);
    }

    function save_config(){
        $systemModel = model('system_model');
        //print_r($_POST);
        foreach($_POST as $id=>$value){
            //print 'UC';
            $systemModel->update_config_if_empty_create($id,$value);
        }
        return redirect(site_url('config/application'));
    }
}