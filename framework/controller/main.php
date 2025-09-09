<?php
class main{
    function index(){
        global $system;
        if(empty($system['homePage'])){
            return redirect(site_url('package_manager/installed_modules'));
        }else{
            return redirect($system['homePage']);
        }
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