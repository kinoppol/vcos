<?php
helper('view/card');
helper('view/form');

$form['inputs']=array(
    array(
        'type'=>'text',
        'required'=>true,
        'placeholder'=>'http://some.url.com',
        'name'=>'package_url',
        'label'=>'ระบุแหล่งติดตั้ง (URL)',
    ),array(
        'type'=>'submit',
        'value'=>'ติดตั้ง',
    )
);

foreach($form['inputs'] as $input){
    $data['content'].=form_gen_input($input);    
}

$data['title']='ติดตั้งแพ็คเกจจากอินเทอร์เน็ต';
print card($data);