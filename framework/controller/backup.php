<?php
class backup{
    function export(){

        $content=view('backup/export_panel');
        return view('_template/main',array('content'=>$content,'title'=>'ส่งออกข้อมูล'));
    }
    function export_sql(){
        global $db;
        helper('database/export_db');
        error_reporting(0);
        header('Content-Type: application/octet-stream');   
        header("Content-Transfer-Encoding: Binary"); 
        header("Content-disposition: attachment; filename=\"".time().".sql\"");  
        $content=export_db($db);
        return $content;
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
        //return $content;
    }
    function import(){

        $content='Hello-BUY';
        return view('_template/main',array('content'=>$content,'title'=>'จัดซื้อจัดจ้าง'));
    }
}