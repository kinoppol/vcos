<?php
function module_run($param=''){
  require_once('modules/'.$param['mod'].'/controller/'.$param['mod'].'.php');
  $module_obj = new $param['mod']();
  global $module;
  $module = new module_class($param['mod']);

  if(empty($param['met'])){
    return $module_obj->index(); 
  }else{
    return $module_obj->{$param['met']}(); 
  }
}

function module_url($mod,$met){
  $res=site_url('module/exec/mod/'.$mod.'/met/'.$met);
  return $res;
}

function module_menu($file){
  $file='modules/'.$file.'.php';
  $res='';
  if(file_exists($file)){
    ob_start();
    @include($file);
    $res = ob_get_contents();
    ob_end_clean();
  }
  return $res;
}

class module_class{
  private $name;
  function __construct($str){
    $this->name=$str;
    require_once('modules/'.$this->name.'/controller/'.$this->name.'.php');
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
