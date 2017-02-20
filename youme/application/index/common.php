<?php
function arr_unique($arr_int){
    foreach ($arr_int as $v){
        $v=join(',',$v);
        $temp[]=$v;
    }
    $temp=array_unique($temp);
    foreach ($temp as $k=>$v){
        $temp[$k]=explode(',',$v);
    }
    return $temp;
}