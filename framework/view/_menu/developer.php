<?php

$menu['จัดการระบบ']=array(
    'package_manager'=>array(
        'label'=>'จัดการแพ็คเกจ',
        'bullet'=>'tf-icons bx bx-box',
        'url'=>site_url('package_manager'),
        'item'=>array(
                'list'=>array(
                'label'=>'แพ็คเกจที่ติดตั้งแล้ว',
                'url'=>site_url('package_manager/installed_modules'),
            ),
                'online'=>array(
                'label'=>'ติดตั้งจากอินเทอร์เน็ต',
                'url'=>site_url('package_manager/online_install'),
            ),
                'upload'=>array(
                'label'=>'ติดตั้งจากไฟล์ในเครื่อง',
                'url'=>site_url('package_manager/upload_install'),
            ),
        ),
    ),
    'config'=>array(
        'label'=>'ตั้งค่าระบบ',
        'url'=>site_url('config'),
        'bullet'=>'tf-icons bx bx-cog',
        'item'=>array(
            'store'=>array(
                'label'=>'ข้อมูลระบบ',
                'bullet'=>'fa fa-shopping-cart',
                'url'=>site_url('config/application'),
            ),
            'time'=>array(
                'label'=>'การซ่อมบำรุง',
                'bullet'=>'fa fa-clock-o',
                'url'=>site_url('config/maintenance'),
            ),
        ),
    )
);

print gen_menu($menu);