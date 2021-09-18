<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Pagina Principal</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class="container-fluid">
        
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Usuarios&accion=Listar" target="myframe">Usuarios</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light"  href="#">Clientes</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light"  href="#">Productos</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="#">Proveedores</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="#">Ventas</a>
        </li>
        <li class="nav-item">
          <a cstyle="margin-left:10px; border:none" class="btn btn-outline-light" href="#">Reportes</a>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="dropdown">
  <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    Nombre de Usuario
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Usuario</a></li>
    <li><a class="dropdown-item" href="#">Email Usuario</a></li>
    <div class="dropdown-divider"></div>
    <form class="dropdown-item" method="post" action="#">
    <button class="btn btn-danger center-block" type="submit" name="accion" value="salir">Cerrar Sesion</button>
    </form>
  </ul>
</div>
</nav>

<div class="m-4" style="height: 550px;">
   <iframe style="height:100%; width:100%; border:none" name="myframe"></iframe>
</div>   

</body>
</html>