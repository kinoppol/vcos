<?php
$data['title']='เลือก';
$data['content']='
<a href="'.site_url('backup/export_sql').'" target="_blank" class="btn btn-primary">ดาวน์โหลด</a><br>
<a href="'.site_url('backup/export_cloud_sql').'" target="_blank" class="btn btn-primary">บันทึกบนคลาวด์</a>
';

helper('view/card');

print card($data);