<!DOCTYPE html>
<html lang="en">
@include('layout/header')
<body>

  <div class="container-fluid">
    <!-- Header -->
    <div class="row header">
      <div class="col">
        @include('layout/menu')
        
        @yield('header')
      </div>
    </div>
    <!-- Menu and Content -->
    <div class="row">
    <div class="col-md-12 menu">
    @yield('menu')
      </div>
      <!-- Sidebar Left -->
      <div class="col-md-6 sidebar-left">
      @yield('content')
      </div>
      <!-- Main Content -->
    
      <!-- Sidebar Right -->
      <div class="col-md-6 sidebar-right">
      @yield('menu-right')
      </div>
    </div>
  </div>

  <!-- Link to Bootstrap JS and jQuery (for Bootstrap functionalities) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
