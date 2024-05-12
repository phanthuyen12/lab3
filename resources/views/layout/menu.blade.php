
<?php
 $loaitin_arr = DB::table("tintype")->select('id','ten_loai_tin')
 ->orderBy('id', 'asc')
 ->where('AnHien','=', '1')
 ->limit(5)->get();
 ?>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Menu</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        @foreach ( $loaitin_arr  as  $tin)
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{url('/bai32',[$tin->id])}}">{{$tin ->ten_loai_tin }}</a>
        </li>
        @endforeach
       
        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
