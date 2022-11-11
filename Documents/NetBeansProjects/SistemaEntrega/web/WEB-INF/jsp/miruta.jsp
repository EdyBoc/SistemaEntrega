<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Tiendas</title>
    </head>
    <body style=" background-color:#EAECEE ">
        <style>
            .jumbotron {
                background-color: transparent;
                margin: 0;
                padding: 10px;

            }

        </style>
        <div class="jumbotron">

            <!--Menu de las clases modales -->
            <div  style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);">
                <div class="container p-4 ml-5 ">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="btn-group-orizontal mt-0 text-white " >
                                <center>     
                                    <a href="Login.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Salir de mi perfil</a>│Mis asignaciones a ruta                    
                                </center>
                            </div>
                        </div>                                        
                    </div>                  
                </div>
            </div>
            <div class="container  center-block col-sm-12 p-1" >

                <div  class="d-flex">
                    <div class="col-sm-12 p-1">
                        <table class="table  table-striped">
                            <thead>
                                <tr>       
                            <thead>
                                <tr>
                                
                                    <th>No orden</th>                              
                                    <th>Contacto</th>
                                    <th>Direccion</th>
                                    <th>Repartidor asignado</th>                                    
                                    <th>fecha solicitud</th>
                                    <th>Estado</th>
                                    <th>Fecha confirmacion</th>
                                 
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="datos" items="${lista}">
                                    <tr>
                                        <td>${datos.idventa}</td>
                                        <td>${datos.telefonom}</td>
                                        <td>${datos.Direccionm}</td>
                                        <td>${datos.idRepartidor}</td>
                                        <td>${datos.fechaasignacion}</td>
                                        
                                        <td>${datos.accion}</td>
                                        <td>${datos.fechaaccion}</td>
                                  
                                    <td>
                                          
                                                <a href="Estados.htm" class="btn btn-warning"  role="button" aria-pressed="true">Acciones
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wrench" viewBox="0 0 16 16">
                                                <path d="M.102 2.223A3.004 3.004 0 0 0 3.78 5.897l6.341 6.252A3.003 3.003 0 0 0 13 16a3 3 0 1 0-.851-5.878L5.897 3.781A3.004 3.004 0 0 0 2.223.1l2.141 2.142L4 4l-1.757.364L.102 2.223zm13.37 9.019.528.026.287.445.445.287.026.529L15 13l-.242.471-.026.529-.445.287-.287.445-.529.026L13 15l-.471-.242-.529-.026-.287-.445-.445-.287-.026-.529L11 13l.242-.471.026-.529.445-.287.287-.445.529-.026L13 11l.471.242z"/>
                                                </svg>
                                            </a>
                                        </td>
                                          </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>      

            </div>  
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>