<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\auto;
use App\Models\szervizkonyv;

class CarListController extends Controller
{
    function show(){
        $data = szervizkonyv::all();
        return view('list',['autos' => $data]);
    }
}
