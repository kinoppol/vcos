<?php
function xTimeAgo ($oldTime, $newTime) {
$timeCalc = strtotime($newTime) - strtotime($oldTime);

if ($timeCalc > (60*60*24)) {$timeCalc = round($timeCalc/60/60/24) . " days ago";}
else if ($timeCalc > (60*60)) {$timeCalc = round($timeCalc/60/60) . " hours ago";}
else if ($timeCalc > 60) {$timeCalc = round($timeCalc/60) . " minutes ago";}
else if ($timeCalc > 0) {$timeCalc .= " seconds ago";}

return $timeCalc;
}