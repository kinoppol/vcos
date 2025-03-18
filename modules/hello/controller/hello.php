<?php
class hello{
  function index(){
    global $module;
    $ret['content'] = $module->view('home/welcome');
    $ret['title'] = 'สวัสดี';
    return $ret;
  }
}