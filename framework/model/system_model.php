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

    function update_config($key,$value){
      $sql='update system_config set value='.pq($value).' where id='.pq($key);
      //print $sql;
      $result=$this->db->query($sql);
      return $result;
    }

    function create_config($key,$value){
      $sql='insert system_config set id='.pq($key).',value='.pq($value);
      //print $sql;
      $result=$this->db->query($sql);
      return $result;
    }

    function update_config_if_empty_create($key,$value){
      $chk=$this->get_config(array('id'=>$key));
      if(count($chk)<1){
        //print 'Create';
        $result=$this->create_config($key,$value);
      }else{
        //print 'Update';
        $result=$this->update_config($key,$value);
      }

      return $result;
    }

}