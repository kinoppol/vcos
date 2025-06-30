<?php

$menu['ดูแลระบบ']=array(
    'management'=>array(
        'label'=>'จัดการผู้ใช้',
        'bullet'=>'tf-icons bx bx-group',
        'url'=>site_url('management'),
        'item'=>array(
                'list_user'=>array(
                'label'=>'ผู้ใช้ทั้งหมด',
                'url'=>site_url('management/list_user'),
            ),
                'user_type'=>array(
                'label'=>'ประเภทผู้ใช้',
                'url'=>site_url('management/user_type'),
            ),
        ),
    ),
    /*'setting'=>array(
        'label'=>'ตั้งค่าการทำงาน',
        'url'=>site_url('setting'),
        'bullet'=>'tf-icons bx bx-cog',
        'item'=>array(/*
            'store'=>array(
                'label'=>'ข้อมูลร้าน',
                'bullet'=>'fa fa-shopping-cart',
                'url'=>site_url('config/store'),
            ),
            'time'=>array(
                'label'=>'เวลาทำการ',
                'bullet'=>'fa fa-clock-o',
                'url'=>site_url('config/time'),
            ),
        ),
    ),*/
    'backup'=>array(
        'label'=>'สำรองข้อมูล',
        'bullet'=>'tf-icons bx bx-id-card',
        'url'=>site_url('backup'),
        'item'=>array(
                'list_user'=>array(
                'label'=>'ส่งออกข้อมูล',
                'url'=>site_url('backup/export'),
            ),
                'user_type'=>array(
                'label'=>'นำเข้าข้อมูล',
                'url'=>site_url('backup/import'),
            ),
        ),
    )
);

print gen_menu($menu);