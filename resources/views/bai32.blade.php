@extends('layout/layout')
@section('menu')
<?php
$loaitin_arr = DB::table("tintype")
->select('id', 'ten_loai_tin')
->where('id', '=', $idLT) // Sử dụng $idLT mà không cần double curly braces
->first(); 
 ?>
    <h1>Chi tiết {{$loaitin_arr->ten_loai_tin }} </h1>
@endsection
@section('content')
    @foreach ( $listtin as $tin )
    <h1>Thông Tin Chi tiết {{ $tin->id }}</h1>
    <a href="{{url('/chitiet',[$tin->id])}}">{{ $tin->title }}</a>
    <p>{{ $tin->content }}</p>
    
    @endforeach
@endsection
@section('menu-right')
    <h1>thông tin </h1>
@endsection
