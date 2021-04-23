<?php

namespace App\Http\Controllers;
use App\Models\auto;
use App\Models\szervizkonyv;
use Exception;
use Illuminate\Http\Request;

class FormValidationController extends Controller
{









    /*public function show(){
        return view('add');
    }*/

    function getData(){
        $data = auto::all();
        return view('add',['autos' => $data]);
    }

    public function store(Request $request){



        
        $request->validate([
            'tulajdonos' => 'required | max:50',
            'auto' => 'required',
            
            'eletkor' => 'required'
        ]);
        
        $kor = $request->eletkor;

        if($request->garancialis == true){
            $garancia = 1;
        }
        else
        {
            $garancia = 0;
        }

        $szervizK = new szervizkonyv;
        $szervizK->tulajdonos=$request->tulajdonos;
        $szervizK->auto=$request->auto;
        
        $szervizK->garancialis=$garancia;
       // $szervizK->garancialis=$request->garancialis;
        //$szervizK->eletkor=4;
        $szervizK->eletkor=$request->eletkor;
        $szervizK->szerviz_kezdete=$request->szervizkezdete;
        $szervizK->szerviz_vege="2021-04-03T19:47";
        
        $szervizK->save();
        
        
        

        return redirect()->to('/add');
      // return $request->input();

        //return $request->input();
       /* $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);*/


        /*$request->validate([
            'tulajonos' => 'required|max:50',
            'auto' => 'required',
            'garancialis' => 'required',
            'szervizkezdete' => 'required'
        ],
        [
            'tulajdonos.required' => 'Kérlek add meg a tulajdonos nevét: ',
            'auto.required' => 'Kérlek válassz autót',
            'garancialis.required'
        ]);

        $input = $request->all();
        $szervizK = szervizkonyv::create($input);*/

        
        //return back()->with('success','Siker!');
    }
}
