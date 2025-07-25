<?php
function module_run($param=''){
  require_once('modules/'.$param['mod'].'/controller/'.$param['con'].'.php');
  $module_obj = new $param['con']();
  global $module;
  $module = new module_class($param['mod'],$param['con']);

  if(empty($param['met'])){
    return $module_obj->index(); 
  }else{
    return $module_obj->{$param['met']}(); 
  }
}

function module_url($mod,$con,$met){
  $res=site_url('module/exec/mod/'.$mod.'/con/'.$con.'/met/'.$met);
  return $res;
}

function module_api($mod,$con,$met){
  $res=site_url('module/api/mod/'.$mod.'/con/'.$con.'/met/'.$met);
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
  function __construct($mod,$con){
    $this->name=$mod;
    require_once('modules/'.$mod.'/controller/'.$con.'.php');
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

  function url($con,$met=''){
    return site_url($this->name,$con,$met);
  }
  
}
