<?php
function xTimeAgo ($oldTime, $newTime) {
$timeCalc = strtotime($newTime) - strtotime($oldTime);

if ($timeCalc > (60*60*24)) {$timeCalc = round($timeCalc/60/60/24) . " วันที่ผ่านมา";}
else if ($timeCalc > (60*60)) {$timeCalc = round($timeCalc/60/60) . " ชั่วโมงที่ผ่านมา";}
else if ($timeCalc > 60) {$timeCalc = round($timeCalc/60) . " นาทีที่ผ่านมา";}
else if ($timeCalc > 0) {$timeCalc .= " วินาทีที่ผ่านมา";}
else {$timeCalc = " ตอนนี้";}

return $timeCalc;
}