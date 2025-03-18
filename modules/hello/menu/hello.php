<?php

$menu['สวัสดี']=array(
    'index'=>array(
        'label'=>'โมดูล Hello',
        'bullet'=>'tf-icons bx bx-home',
        'url'=>module_url('hello','index'),
    ),
);
print gen_menu($menu);