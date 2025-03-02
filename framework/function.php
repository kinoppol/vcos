<?php
/*
function pq($str,$force_q=false){
    if(!$force_q && (empty($str) || is_numeric($str))) return $str;
    return "'".$str."'";
}*/
function view($file,$arr=array()){
    ob_start();
        extract($arr);
        $inc_file='view/'.$file.'.php';
        // if(file_exists($inc_file)){
             @include($inc_file);
        // }
    $res = ob_get_contents();
    ob_end_clean();
    return $res;
}

function site_url($uri='',$direclink=false){
    global $site_url;
    if(empty($uri))return $site_url;
    if(!$direclink){
        return $site_url.'?p='.$uri;
    }else{
        return $site_url.$uri;
    } 
}

function redirect($url,$delay=0){
    return '<meta http-equiv="refresh" content="'.$delay.';'.$url.'">';
}

function arr2and($data=array()){
    if(!is_array($data)) return $data;
    $ret='';
    foreach($data as $k=>$v){
        if(!empty($ret))$ret.=' AND ';
        $ret.=$k.'='.pq($v,$foreceQuote=true);
    }
    return $ret;
}
function arr2set($data=array()){
    $ret='';
    foreach($data as $k=>$v){
        if(!empty($ret))$ret.=',';
        $ret.=$k.'='.pq($v,$foreceQuote=true);
    }
    return $ret;
}

function var2arr($var) {
    foreach ($var as $key => $value) {
        if(!is_array($value)) $var[$key] = array($value);
    }
    if(count($var)==1){
        return $var[0];
    }
    return $var;
}

function model($file){
    global $db;
    require_once('model/'.$file.'.php');
    $obj=new $file($db);
    return $obj;
}

function systemFoot($str=''){
    global $systemFoot;
    $systemFoot.=$str;
    return $systemFoot;
}

function helper($file){
    require_once('helper/'.$file.'.php');
}

function gen_option($arr=array(),$def=''){
    $ret='';
    foreach($arr as $k=>$v){
        $selected='';
        if($def==$k)$selected=' selected';
        $ret.='<option value="'.$k.'"'.$selected.'>'.$v.'</option>';
    }
    return $ret;
}
/*
function set_val($val=false,$def=''){
    if($val) return $val;
    else return $def;
}*/