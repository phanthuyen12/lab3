@extends('layout/layout')
@section('menu')
    <h1>Chi tiết tin loại</h1>
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
