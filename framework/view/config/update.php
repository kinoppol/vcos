<?php
helper('view/card');

$data['content']='รุ่นปัจจุบัน '.$current_version.'<br>';    
$data['content'].='รุ่นล่าสุด '.$lastest_version.'<br><hr>';    

if($current_version==$lastest_version){
$data['content'].='ตอนนี้ระบบเป็นรุ่นล่าสุดแล้ว อย่างไรก็ตามคุณสามารถ <a href="'.site_url('./install_lastest.php',true).'" class="btn btn-secondary">ติดตั้งระบบใหม่อีกครั้ง</a>';    
}else{
$data['content'].='มีระบบรุ่นใหม่ให้อัพเดตสุดแล้ว <a href="'.site_url('./install_lastest.php',true).'" class="btn btn-primary">ติดตั้งชุดอัพเดตระบบทันที</a>';    
}


$data['title']='ตรวจสอบการปรับปรุงระบบ';

print card($data);

