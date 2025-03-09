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
        'name'=>'thaiSystemName',
        'label'=>'ชื่อระบบ(ภาษาไทย)',
        'value'=>$thaiSystemName,
    ),array(
        'type'=>'text',
        'required'=>false,
        'placeholder'=>'MS...',
        'name'=>'subSystemName',
        'label'=>'ชื่อย่อระบบ',
        'value'=>$subSystemName,
    ),array(
        'type'=>'submit',
        'value'=>'บันทึก',
    )
);

foreach($form['inputs'] as $input){
    $data['content'].=form_gen_input($input);    
}


$data['title']='ข้อมูลระบบ';
//$data['content']=form_gen_input_text($form['input_text']);
print card($data);