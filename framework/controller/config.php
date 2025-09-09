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
    function update(){
        global $version;

        $url = 'https://vcos.edsup.org/version/vcos/lastest/';
        $content = file_get_contents($url);
        $versionData = json_decode($content);
        
        $data['current_version']=$version;
        $data['lastest_version']=$versionData->version;
        $data['content']=view('config/update',$data);
        $data['title']='อัพเดต';
        return view('_template/main',$data);
    }
    function release(){
        global $version;
        
        $data['current_version']=$version;
        $data['release_version']=date('YmdHi');
        $data['content']=view('config/release',$data);
        $data['title']='สร้างข้อมูลรุ่นอัพเดต';
        return view('_template/main',$data);
    }
    
    function create_release($param){
        global $version;
        $release_version=$param['version'];
        $url = 'https://vcos.edsup.org/version/vcos/lastest/release.php?version='.$release_version;
        $content = file_get_contents($url);
        $versionData = json_decode($content);
        if($release_version==$versionData->version){
            $data['content']='สร้างข้อมูลรุ่นอัพเดตเรียบร้อย';
            $versionFile = fopen("version.php", "w");
            $txt = '<?php
            $version="'.$release_version.'";';
            fwrite($versionFile , $txt);
        }else{
            $data['content']='ข้อมูลรุ่นอัพเดตไม่ถูกต้องโปรดตรวจสอบ Ropository Server.'.$url;
        }
        $data['title']='สร้างข้อมูลรุ่นอัพเดต';
        return view('_template/main',$data);
    }
}