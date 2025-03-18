<?php

function form_gen_select($id, $name, $selection, $default_selection)
{
    echo('<select class="form-select" id="'.$id.'" aria-label="Default" name="'.$name.'">');
    echo form_gen_option($selection, $default_selection);
    echo('</select>');
}

function form_gen_option($selection, $default_selection){
    $ret='';
    foreach ($selection as $key => $value) {
        $is_selected = ($value == $default_selection) ? 'selected' : '';
        $ret.='<option value="'.$key.'" '.$is_selected.'>'.$value.'</option>';
    }
    return $ret;
}

function form_gen_input($data=array()){
        switch($data['type']){
            case 'text' : return form_gen_input_text($data); break;
            case 'submit' : return form_gen_input_submit($data); break;
            case 'file' : return form_gen_input_file($data); break;
        }
   }

function form_gen_input_text($data=array()){
 $ret='<div class="row">
                        <div class="mb-3 col-12">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInput" placeholder="'.$data['placeholder'].'"
                                    name="'.$data['name'].'"
                                    value="'.$data['value'].'" />
                                <label for="floatingInput">'.$data['label'].'</label>
                                <div id="floatingInputHelp" class="form-text">

                                </div>
                            </div>
                        </div>
                    </div>';   
    return $ret;
}

function form_gen_input_file($data=array()){
    $ret='<div class="row">
                           <div class="mb-3 col-12">
                               <div class="input-group">
                               
            <label class="input-group-text" for="inputGroupFile01">'.$data['label'].'</label>
                                   <input type="file" class="form-control" id="floatingInput" placeholder="'.$data['placeholder'].'"
                                       name="'.$data['name'].'"
                                       value="'.$data['value'].'" />
                                   <div id="floatingInputHelp" class="form-text">
   
                                   </div>
                               </div>
                           </div>
                       </div>';   
       return $ret;
   }

function form_gen_input_submit($data=array()){
    $ret='<div class="row">
            <div class="d-grid gap-2 col-lg-6 col-md-12 mx-auto mt-3">
            </div>
            <div class="d-grid gap-2 col-lg-6 col-md-12 mx-auto mt-3">
              <button class="btn btn-primary btn-lg" type="submit">'.$data['value'].'</button>
            </div>
          </div>';
        return $ret;
}

function form_gen_form($data=array()){
    $ret='<form action="'.$data['action'].'" '.$data['enctype'].' method="post">'.$data['content'].'</form>';
    return $ret;
}