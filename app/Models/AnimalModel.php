<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;

use Illuminate\Database\Eloquent\Model;

class AnimalModel extends Model
{
    public static function getAllAnimals(){
        
       $query = DB::select('CALL sp_getAllBabyanimal()');

    //    dd($query);

       return $query;
    }
}
