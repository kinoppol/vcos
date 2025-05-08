<?php

$menu['สวัสดี']=array(
    'index'=>array(
        'label'=>'โมดูล Hello',
        'bullet'=>'tf-icons bx bx-home',
        'url'=>module_url('hello','index'),
    ),
    'subMenu'=>array(
        'label'=>'เมนูย่อย',
        'bullet'=>'tf-icons bx bx-list-plus',
        'url'=>module_url('hello','subMenu'),
        'item'=>array(
                'menu1'=>array(
                'label'=>'เมนูย่อย 1',
                'url'=>module_url('hello','menu1'),
            ),
                'menu2'=>array(
                'label'=>'เมนูย่อย 2',
                'url'=>module_url('hello','menu2'),
            ),
        ),
    ),
);
print gen_menu($menu);