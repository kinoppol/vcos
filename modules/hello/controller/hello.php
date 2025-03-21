<?php
class hello{
  function index(){
    global $module;
    $ret['content'] = $module->view('home/welcome');
    $ret['title'] = 'สวัสดี';
    return $ret;
  }
  function menu1(){
    global $module;
    $ret['content'] = $module->view('subMenu/menu1');
    $ret['title'] = 'สวัสดี';
    return $ret;
  }
  function menu2(){
    global $module;
    $ret['content'] = $module->view('subMenu/menu2');
    $ret['title'] = 'สวัสดี';
    return $ret;
  }
}