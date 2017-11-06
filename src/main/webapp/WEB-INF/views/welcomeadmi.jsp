<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:f="http://java.sun.com/jsf/core"
  xmlns:ui="http://java.sun.com/jsf/facelets"
  xmlns:h="http://java.sun.com/jsf/html">

<h:head>
  <meta charset="utf-8">
   
  <link href='css/rotating-card.css' rel='stylesheet' />
  <link href="/css/font-awesome.min.css" rel="stylesheet"> 

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Administrador de Find Bank</title>
  <!-- Bootstrap core CSS-->
   <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
  <!-- Custom styles for this template-->
  <link rel="stylesheet" href="<c:url value="/resources/css/sb-admin.css"/>">
</h:head>

<h:body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="administrador">Find Bank</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
         
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="administrador">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Agentes</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="map.html">
          <i class="fa fa-map-o"  ></i>
            <span class="nav-link-text">Map</span>
          </a>
        </li>
        
      </ul>
      <!--contenido del menu superior zembu-->
      <ul class="navbar-nav ml-auto">
   
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Cerrar Sesión</a>
        </li>
        <!--logout fin-->
      </ul>
      <!--contendio del menu superior fin-->
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="administrador">Find Bank</a>
        </li>
        <li class="breadcrumb-item active">Agentes</li>
      </ol>
      <h1>Agentes</h1>
      <hr>
      <!-- Icon Cards-->
      <!--cart inicio-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Nombre</th>
                  <th>Dirección</th>
                  <th>Distrito</th>
                  <th>Operatividad</th>
                  <th colspan="3">CRUD</th> 
                </tr>
              </thead>
               
              <tbody> 
                <tr>
                  <td>La merced</td>
                  <td>Accountant</td>
                  <td>Tokyo</td>
                  <td>Activo</td>
                  <td><button class="btn btn-secondary">Modificar</button></td>
                  <td><button class="btn btn-info">Ver</button></td>
                  <td><button class="btn btn-danger">Eliminar</button></td>
                </tr>
                
                <tr>
                  <td>Donna Snider</td>
                  <td>Customer Support</td>
                  <td>New York</td>
                  <td>Desactivo</td>
                  <td><button class="btn btn-secondary">Modificar</button></td>
                  <td><button class="btn btn-info">Ver</button></td>
                  <td><button class="btn btn-danger">Eliminar</button></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>


 

        <!--card fin-->  
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Find Bank © Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-power-off" aria-hidden="true"></i>   Advertencia</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Usted acaba de oprimir el boton "Cerrar Sesión". Desea cerrar sesión de todas maneras?</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Cerrar sesión</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/popper/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
     <!-- Core plugin JavaScript-->
     <script src="<c:url value="/resources/vendor/jquery/jquery-easing/jquery.easing.min.js"/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin.min.js"/>"></script> 
  </div>

<script src="<c:url value="/resources/js/jquery-1.10.2.js"/>"></script> 
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>  
 
</h:body>

</html>
