<?php
function module_run($param=''){
  require_once('modules/'.$param['mod'].'/controller/'.$param['mod'].'.php');
  $module_obj = new module();
  return $module_obj->$param['met'](); 
}
class module{
  private $name;
  function __construct($str){
    $this->name=$str;
    require_once('modules/'.$this->name.'/model/'.$file.'.php');
  }

  function view($file,$arr=array()){
    ob_start();
    extract($arr);
    $inc_file='modules/'.$this->name.'/view/'.$file.'.php';
         @include($inc_file);
    $res = ob_get_contents();
    ob_end_clean();
    return $res;
  }

  function model($file){
    global $db;
    require_once('modules/'.$this->name.'/model/'.$file.'.php');
    $obj=new $file($db);
    return $obj;
  }

  function helper($file){
    require_once('modules/'.$this->name.'/helper/'.$file.'.php');
  }
}