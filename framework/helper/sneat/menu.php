<?php

function gen_submenu($arr=array(),$expanded=false){ 
    global $controller;
    global $function;   
    global $param;
    $ret='';
    $sexp='';
    $exp='';
    $show='';
    $sactive='';
    if($expanded){
        $exp=' open';
        $show=' show';
    }
    $current_function=$controller.'/'.$function;
    if(mb_substr($current_function,(mb_strlen($current_function)-1),1)=='/'){
        $current_function=mb_substr($current_function,0,mb_strlen($current_function)-1);
    }
    //print_r($param);
    if(!empty($param)){
        $param_slash=mapped_implode('/',$param,'/');
        $current_function.='/'.$param_slash;
    }

    // print $controller;
    // print 'U-'.$arr['url'];
    // print "--------<br>";
    // print 'CUF - '.site_url($current_function);
    // print '<br>URL - '.$arr['url'];
    // if(mb_substr(site_url($current_function),0,mb_strlen($arr['url']))==$arr['url']){
    //     // print "EQU";
    //     $sactive=' active';
    //     $exp=' open';
    // }
    if(!empty($arr['item'])&&is_array($arr['item'])&&count($arr['item'])>0){
        $sactive='';
        $exp='';
        foreach($arr['item'] as $row){
            $ssactive='';
            $sexp='';
                // print $current_function;
                // print '<br>U-'.$row['url'];
            if(mb_substr($row['url'],0,mb_strlen(site_url($current_function)))==site_url($current_function)){
                $ssactive=' active';
                $sexp=' open';
                if($sactive==''){
                    $sactive=' active';
                    $exp=' open';
                }
            }
            $subRet.='
            <li class="menu-item'.$ssactive.'">
            <a href="'.$row['url'].'" class="menu-link">
                <div data-i18n="'.$row['label'].'">'.$row['label'].'</div>
              </a>
            </li>';
        }

        $ret.='
        <li class="menu-item'.$sactive.$exp.'">
        <a href="javascript:void(0);" class="menu-link menu-toggle">
        <i class="menu-icon '.$arr['bullet'].'"></i>
          <div data-i18n="'.$arr['label'].'">'.$arr['label'].'</div>
            </a>
            <ul class="menu-sub">';
            $ret.=$subRet;
        $ret.='</ul></li>';
    }else{
        if(mb_substr(site_url($current_function),0,mb_strlen($arr['url']))==$arr['url']){
            // print "EQU";
            $sactive=' active';
            $exp=' open';
        }
        $ret.='<li class="menu-item'.$sactive.'">        
        <a href="'.$arr['url'].'" class="menu-link">
        <i class="menu-icon '.$arr['bullet'].'"></i>        
        <div data-i18n="'.$arr['label'].'">'.$arr['label'].'</div></a>
        </li>';
    }
    return array($ret,$sactive);
}
function gen_menu($arr=array()){
    global $controller;
    $ret='';
    foreach($arr as $k=>$v){
        $ret.='<li class="menu-header small text-uppercase">
        <span class="menu-header-text">'.$k.'</span></li>';
        foreach($v as $key=>$row){
            $show='';
            $sret=gen_submenu($row,$show);
            if($sret[1]=='active') $show=' show';
            $ret.='         ';
            $ret.=$sret[0];
            $ret.='';
        }
        $ret.='</li>';
    }
    $ret.='';
    return $ret;
}