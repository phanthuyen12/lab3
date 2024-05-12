@extends('layout/layout')
@section('menu')
    <h1>Chi tiết tin {{ $tin->id }}</h1>
@endsection
@section('content')
    <h1>Thông Tin Chi tiết {{ $tin->id }}</h1>
    <p>{{ $tin->title }}</p>
    <p>{{ $tin->content }}</p>
@endsection
@section('menu-right')
    <h1>thông tin </h1>
@endsection
