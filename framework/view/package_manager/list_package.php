<?php
helper('view/card');
$data['title']='แพ็คเกจที่ติดตั้งแล้ว';

$modulesTable='';
foreach($modules as $m){
      $modulesTable.='<tr>
  <td>'.$m.'</td>
  <td>

    <div class="dropdown">
        <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
            data-bs-toggle="dropdown">
            <i class="bx bx-dots-vertical-rounded"></i>
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item"
                href="'.site_url('package_manager/update/module/'.$m).'"><i
                    class="bx bx-down-arrow-circle me-1"></i> อัปเดต</a>
            <a class="dropdown-item"
                href="'.site_url('package_manager/uninstall/module/'.$m).'"
                onClick="return confirm(\'ยืนยันถอนการติดตั้งโมดูล '.$m.'\');"><i
                    class="bx bx-trash me-1"></i> ถอนการติดตั้ง</a>
        </div>
    </div>
  </td>
  </tr>';

}

$data['content']='<div class="text-nowrap">
                      <table class="table">
                          <thead>
                              <tr>
                                  <th>โมดูล</th>
                                  <th>ดำเนินการ</th>
                              </tr>
                          </thead>
                          <tbody class="table-border-bottom-0">'.$modulesTable.'                         
                          </tbody>
                        </table>
                        </div>';



print card($data);