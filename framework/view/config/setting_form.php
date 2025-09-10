<?php
helper('view/card');
helper('view/form');


$form['inputs']=array(
    array(
        'type'=>'text',
        'required'=>true,
        'placeholder'=>'Management System...',
        'name'=>'systemName',
        'label'=>'ชื่อระบบ(ภาษาอังกฤษ)',
        'value'=>$systemName,
    ),array(
        'type'=>'text',
        'required'=>true,
        'placeholder'=>'ระบบบริหารจัดการ...',
        'name'=>'systemThaiName',
        'label'=>'ชื่อระบบ(ภาษาไทย)',
        'value'=>$systemThaiName,
    ),array(
        'type'=>'text',
        'required'=>false,
        'placeholder'=>'MS...',
        'name'=>'systemSubName',
        'label'=>'ชื่อย่อระบบ',
        'value'=>$systemSubName,
    ),array(
        'type'=>'text',
        'required'=>false,
        'placeholder'=>'MS...',
        'name'=>'systemLogo',
        'label'=>'สัญลักษณ์',
        'value'=>$systemLogo,
    ),array(
        'type'=>'text',
        'required'=>false,
        'placeholder'=>'MS...',
        'name'=>'menuTitle',
        'label'=>'ข้อความเหนือเมนู',
        'value'=>$menuTitle,
    ),array(
        'type'=>'text',
        'required'=>false,
        'placeholder'=>'MS...',
        'name'=>'homePage',
        'label'=>'หน้าหลัก',
        'value'=>$homePage,
    ),array(
        'type'=>'switch',
        'def'=>($userSelfUpdate==true?true:false),
        'placeholder'=>'MS...',
        'name'=>'userSelfUpdate',
        'label'=>'อนุญาตให้ผู้ใช้แก้ไขข้อมูลส่วนตัว',
        'value'=>true,
    ),array(
        'type'=>'submit',
        'value'=>'บันทึก',
    )
);

foreach($form['inputs'] as $input){
    $data['content'].=form_gen_input($input);   
}
$data['content']=form_gen_form(['content'=>$data['content'],'action'=>site_url('config/save_config')]);    

$data['title']='ข้อมูลระบบ';
//$data['content']=form_gen_input_text($form['input_text']);
print card($data);