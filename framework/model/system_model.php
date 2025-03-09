<?php

class system_model{
    private $db;
    function __construct($db_ref){
        $this->db=$db_ref;
    }
    function get_config($data=array()){
       
        $sql='select * from system_config';
        if(is_array($data)&&count($data)){
          $sql.=' where '.arr2and($data);
        }
        //print $sql;
        $result=$this->db->query($sql);

            $res=array();
            while($data=$result->fetch_assoc()){
              $res[$data['id']]=$data['value'];
            }
            return $res;
        
    }

}