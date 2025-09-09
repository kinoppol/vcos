<?php
helper('view/card');

$data['content']='รุ่นก่อนหน้า '.$current_version.'<br>';    
$data['content'].='รุ่นที่กำหนด '.$release_version.'<br><hr>';    

$data['content'].='<a href="'.site_url('config/create_release/version/'.$release_version).'" class="btn btn-primary">สร้างรุ่นอัพเดต</a>';    



$data['title']='กำหนดรุ่นอัพเดต';

print card($data);

