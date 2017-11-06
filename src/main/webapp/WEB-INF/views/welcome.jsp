<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:f="http://java.sun.com/jsf/core"
  xmlns:ui="http://java.sun.com/jsf/facelets"
  xmlns:h="http://java.sun.com/jsf/html">
<h:head>
  <meta charset="utf-8">    
  
  
<link rel="stylesheet" href="<c:url value="/resources/css/rotating-card.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>"> 

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Bienvenido a Find Bank</title>
  <!-- Bootstrap core CSS--> 
  
  
  <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/sb-admin.css"/>">
  
   <style type="text/css"> 
#cajapadre { 
  display: flex;
  justify-content: center;
}   
#modalcontenido{ 
  position: relative;
  width: 850px;
} 
 #map {
        /* Tama�o del mapa */
        width: 90%;
        height: 400px;
 }
 #coords{
  width: 500px;}
#cajon3{
 justify-content: center 
} 
</style>
  
</h:head>

<h:body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="welcome">Find Bank</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
           
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="welcome">  
          <i class="fa fa-user-circle-o" aria-hidden="true"></i>
            <span class="nav-link-text">${nombre}</span>
          </a> 
        </li> 
        
        <hr>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="home">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Mis Agentes</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="welcome2">
          <i class="fa fa-map-o"  ></i>
            <span class="nav-link-text">Map</span>
          </a>
        </li>
         
      </ul>
      <!--contenido del menu superior zembu-->
      <ul class="navbar-nav ml-auto">
      <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            icono vista <i class="fa fa-fw fa-envelope"></i> 
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span> 
             
         Buscador-->
       
        <!--buscador fin-->
        <!--logout-->
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Cerrar Sesi�n</a>
        </li>
        <!--logout fin-->
      </ul>
      <!--contendio del menu superior fin-->
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol >
    <br/> <br/>
      </ol>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="welcome">Find Bank</a>
        </li>
        <li class="breadcrumb-item active">Mis Agentes</li>
      </ol>
      
      <h1>Agentes</h1>
      <hr>
      <!-- Icon Cards-->
      <!--cart inicio-->
      <div class="row">  
       <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card">
                    <div class="front">
                        <div class="cover">
                          <img class="" src="<c:url value="/resources/img/rotating_card_thumb.png"/>"/> 
                        </div>
                        <div class="user">
                             <img class="img-circle" src="<c:url value="/resources/img/rotating_card_profile2.png"/>"/> 
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name">La Merced</h3>
                                <p class="profession">Bodega</p>
                                <p class="text-center"></p>
                            </div>
                            <div class="footer">
                                <button class="btn btn-simple" onclick="rotateCard(this)">
                                    <i class="fa fa-mail-forward"></i> Ver Detalles
                                </button>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    <div class="back">
                        <div class="header">
                            <h5 class="motto">Detalles</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">La Merced</h4>
                           
                                  <table>
                                                                   
                                  <tr>
                                    <td>Direcci�n :</td>
                                    <td>Valle luz, calle 123 etap 2lt 10A</td> 
                                  </tr> 
                                  <tr>
                                    <td>Distrito :</td>
                                    <td>Santa Anita</td> 
                                  </tr>
                                   
                                  <tr>
                                    <td>Operatividad :</td>
                                    
                                  </tr>
                                   <tr>  
                                    <td><input type="radio" name="OpNegativo" > Activo</td>
                                    <td><input type="radio" name="OpPositivo" > Inactivo</td>
                                  </tr>
                                  </table>  

                            </div>
                        </div>
                        <div class="footer">
                            <button class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this)">
                                <i class="fa fa-reply"></i> Back
                            </button> 
                              <button class="btn btn-secondary" rel="Find " title="Flip Card" onclick="">
                                <i class="fa fa-pencil fa-fw"></i> Modificar
                            </button> 
                        </div>
                    </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
 

 <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card">
                    <div class="front">
                        <div class="cover"> 
                      
                        </div>
                        <div class="user">
                           <a class="nav-link" data-toggle="modal" data-target="#crearCardModal" > 
                            <img id="imgadd" src="<c:url value="/resources/img/addimg.png"/>"/>
                          </a>
                        </div>
                    </div> <!-- end front panel -->  </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
 

        <!--card fin-->  
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Find Bank � Website 2017</small>
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
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">Ustede acaba de oprimir el boton "Cerrar Sesi�n". Desea cerrar sesi�n de todas maneras?</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Cerrar sesi�n</a>
          </div>
        </div>
      </div>
    </div>
  <!-- crear card Modal--> 
   <div class="modal fade" id="crearCardModal" tabindex="-1" role="dialog" aria-labelledby="eModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
  
  
    <div class="modal-content" id="modalcontenido" >
      <div class="modal-header">
        <h5 class="modal-title" id="eModalLabel">Nuevo Agente</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <div id="cajapadre">
       <!-- dentro del Modal con formulario--> 
        <form>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Nombre:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Dirreci�n:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Distrito:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="text" class="form-control-label">Operatividad:</label>
            <select class="form-control">
              <option>Activo</option>
              <option>Desactivo</option>
            </select> 
          </div>
        </form>
          <!-- dentro del Modal con mapa--> 
        <div class="container">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3>Obtener coordenadas con un marcador</h3>
        </div>
        <div class="panel-body">
          <button id="boton" class="btn">Ubicarme</button>
          <div id="map"></div>
        </div>
      </div><br>
      <p>Coordenadas: <input type="text" id="coords" />
      <p>Latitud: <input type="hidden" id="lat" />
      <p>Longitud: <input type="text" id="long" />
      <p>.</p>
        </div> 
        
		</div> 
         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Crear</button>
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

<script type="text/javascript">
    $().ready(function(){
        $('[rel="tooltip"]').tooltip();

    });

    function rotateCard(btn){
        var $card = $(btn).closest('.card-container');
        console.log($card);
        if($card.hasClass('hover')){
            $card.removeClass('hover');
        } else {
            $card.addClass('hover');
        }
    }
 
</script>
<script>
    var marker;          //variable del marcador
    var coords = {};    //coordenadas obtenidas con la geolocalizaci�n

    //Funcion principal
    initMap = function () {

    //usamos la API para geolocalizar el usuario
    navigator.geolocation.getCurrentPosition(
      function (position){
        coords =  {
          lng: position.coords.longitude,
          lat: position.coords.latitude
        };
        setMapa(coords);  //pasamos las coordenadas al metodo para crear el mapa
      },function(error){console.log(error);});
    }

    function setMapa (coords) {   
    //Se crea una nueva instancia del objeto mapa
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 13,
      center:new google.maps.LatLng(coords.lat,coords.lng),
    });

    //Creamos el marcador en el mapa con sus propiedades -12.044167, -76.952900
    //position pondremos las mismas coordenas que obtuvimos en la geolocalizaci�n
    marker = new google.maps.Marker({
      map: map,
        draggable: true,
        animation: google.maps.Animation.DROP,
        title: 'Aqui es',
        position: new google.maps.LatLng(coords.lat,coords.lng),

      });
      //agregamos un evento al marcador junto con la funcion callback al igual que el evento dragend que indica 
      //cuando el usuario suelta el marcador
      marker.addListener('click', toggleBounce);
      
      marker.addListener( 'dragend', function (event) {
        //escribimos las coordenadas de la posicion actual del marcador dentro del input #coords
        document.getElementById("coords").value = this.getPosition().lat()+","+ this.getPosition().lng();
        document.getElementById("lat").value = this.getPosition().lat();
        document.getElementById("long").value = this.getPosition().lng();
      });
    }

    //callback al hacer clic en el marcador lo que hace es quitar y poner la animacion BOUNCE
    function toggleBounce() {
      if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
      } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
      }
    }

    // Carga de la libreria de google maps 
  </script>
<script>
// seleccionamos el enlace 
var boton = document.getElementById("boton"); 
// cuando se pulsa en el enlace
boton.onclick = function(e) {
    // evitamos la acci�n por defecto
    e.preventDefault();
    // creamos una etiqueta script
    var s = document.createElement("script");
    // indicamos en el atributo src el fichero que quieres cargar
    s.src = "https://maps.googleapis.com/maps/api/js?callback=initMap";
    // lo a�adimos al documento (y se ejecuta automaticamente)
    document.querySelector("body").appendChild(s);
    // borra el script del documento (para evitar basura si se ejecuta multiples veces)
    s.remove();
}
</script>
 
</h:body> 
</html>
