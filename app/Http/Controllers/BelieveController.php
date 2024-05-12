<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BelieveController extends Controller
{
    //
    public function index(){
        return view("home");

    }
    public function chitiet($id){
        $data = ['id'=>$id];
        return view("chitiet",$data);
    }

    public function tintrongloai($idLT = 0){
        $data = ["idLT"=>$idLT];    
        return view("tintrongloai",$data);
    }
    public function home(){ 
        return view("index");
      }
      public function bai3($id){ 
        $tin = DB::table("posts")->where("id",$id)->first();
        $data = ['id'=>$id, 'tin'=>$tin];
        return view('bai3', $data);
    }
    public function bai32($idLT = 0){
        $listtin = DB::table('posts')->where('kind',$idLT)->get();
        $data = ['idLT'=>$idLT, 'listtin'=>$listtin];
        return view('bai32', $data);


     }
     public function bai4($idLT = 0){
        $listtin = DB::table('posts')->where('kind',$idLT)->get();
        $data = ['idLT'=>$idLT, 'listtin'=>$listtin];
        return view('bai4', $data);


     }
}
