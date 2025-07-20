<?php
class package_manager{
    function installed_modules(){

        $content=view('package_manager/list_package');
        return view('_template/main',array('content'=>$content,'title'=>'จัดการแพ็คเกจ'));
    }
    function online_install(){      
        $content=view('package_manager/online_install');
        return view('_template/main',array('content'=>$content,'title'=>'จัดการแพ็คเกจ'));
    }
    function upload_install(){      
        $content=view('package_manager/upload_install');
        return view('_template/main',array('content'=>$content,'title'=>'จัดการแพ็คเกจ'));
    }
    function export_cloud_sql(){
        global $db;
        helper('database/export_db');
        //error_reporting(0);
        $content=export_db($db);
        $file_dest='install/db.sql';
        $file=fopen($file_dest,'w');
        fwrite($file,$content);
        fclose($file);
        return 'บันทึกข้อมูลเรียบร้อยแล้วปิดหน้าต่างได้';
    }
    function import(){

        $content='Hello-BUY';
        return view('_template/main',array('content'=>$content,'title'=>'จัดซื้อจัดจ้าง'));
    }
    function update(){
        $update_data=array(
            'url'=>'https://vcos.edsup.org/package/modules/vcos_module_rms-main.zip',
            'zip_dir'=>'vcos_module_rms-main',
            'package_dir'=>'rms',
        );

        helper('package/update');

        update_package($update_data);
    }
}