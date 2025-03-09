<?php

function card($data=array()){
    $ret='         <div class="card">
                  <h5 class="card-header">'.$data['title'].'</h5>
                  <div class="card-body">
             '.$data['content'].'
                  </div>
              </div>
        ';
        return $ret;
}