<?php
helper('package/zip');
function update_package($data=array()){
    
define('UPDATER_PATH', str_replace('\\','/',dirname(__FILE__)).'/');
$update_dir=BASE_PATH."update/"; #<--

//    $data['url'] = "https://github.com/kinoppol/oqas/archive/refs/heads/main.zip"; #<--
$zip_file = $update_dir."temp.zip"; #<--
$in_zip_dirname=$data['zip_dir']; #<--

$zip_resource = fopen($zip_file, "w");

$ch_start = curl_init();
//curl_setopt($ch_start, CURLOPT_TIMEOUT, 300);
curl_setopt($ch_start, CURLOPT_URL, $data['url']);
curl_setopt($ch_start, CURLOPT_FAILONERROR, true);
curl_setopt($ch_start, CURLOPT_HEADER, 0);
curl_setopt($ch_start, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch_start, CURLOPT_AUTOREFERER, true);
curl_setopt($ch_start, CURLOPT_BINARYTRANSFER,true);
curl_setopt($ch_start, CURLOPT_TIMEOUT, 300);
curl_setopt($ch_start, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch_start, CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch_start, CURLOPT_SSL_VERIFYPEER, true);

curl_setopt($ch_start, CURLOPT_FILE, $zip_resource);
$page = curl_exec($ch_start);
if(!$page)
{
 echo "Error :- ".curl_error($ch_start);
 exit();
}
curl_close($ch_start);
//exit();
$zip = new my_ZipArchive();
$extractPath = BASE_PATH.$data['package_dir'];
if($zip->open($zip_file) != "true")
{
 echo "Error :- Unable to open the Zip File";
 exit();
} 

$zip->extractSubdirTo($extractPath,$in_zip_dirname);
$zip->close();

}
