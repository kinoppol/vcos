<?php
class main{
    function index(){
        
        $content='ยินดีต้อนรับเข้าสู่ระบบประเมินออนไลน์ โปรดเลือกตัวชี้วัดเพื่อดำเนินการ';
        helper('sneat/menu');
        $menu=view('_menu/admin_cvm').view('_menu/admin_school').view('_menu/user_menu');
        return view('_template/main',array('content'=>$content,'title'=>'หน้าหลัก','menu'=>$menu));
    }
    function dashboard(){
        $store=model('store');
        $stores=$store->get_store(array('id'=>$_SESSION['user']['store_id'],'status'=>'operated'));
        $data['title']=$stores[0]['name'];
        $data['store_name']=$stores[0]['name'];
        $data['sub_name']=$stores[0]['sub_name'];

        $data['content']='Hello';
        return view('_template/main',$data);
    }
}