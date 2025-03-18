<?php
helper('view/card');
helper('view/form');

$form['inputs']=array(
    array(
        'type'=>'file',
        'required'=>true,
        'name'=>'package',
        'label'=>'เลือกไฟล์ .zip',
    ),array(
        'type'=>'submit',
        'value'=>'ติดตั้ง',
    )
);

foreach($form['inputs'] as $input){
    $data['content'].=form_gen_input($input);    
}

$data['title']='ติดตั้งแพ็คเกจจากไฟล์ภายในเครื่อง';
print card($data);