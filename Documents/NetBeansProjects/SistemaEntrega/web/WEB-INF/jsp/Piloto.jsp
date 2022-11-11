<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">      
        <title>JSP Page</title>

        <!-- Scrip para filtro -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


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
                                    <a href="admin.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Regresar</a>│Registro de todos los repartidores                            
                                </center>
                            </div>
                        </div>                                        
                    </div>                  
                </div>
            </div>



            <div class="container  center-block col-sm-10 p-1" >

                <div  class="d-flex">
                    <div class="card-block  col-sm-1 p-1 ">
                    </div>

                    <div class="card-block col-sm-2 p-1">
                        <div class="card-body bg-dark ">                        
                            <center> <img src=" https://pngimg.com/uploads/bank/bank_PNG28.png" width="100" height="100" ></center>
                            <center><h5>Registrar nuevo usuario</h5></center>
                            <div align="right" class=" p-1">
                                <a href="AgregarRepartidor.htm" class="btn btn-danger btn-ms btn-block  active "role="button" aria-pressed="true" >Agregar</a>                           
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8 p-1">
                        <table class="table  table-striped">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nombre repartidor</th>
                                    <th>Telefono</th>
                                    <th>Estatus</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="dato" items="${lista}">
                                    <tr>
                                        <td>${dato.idrepartidor}</td>                             
                                        <td>${dato.NombreR}</td>
                                        <td>${dato.telefonoR}</td>
                                        <td>${dato.EstatusR}</td>
                                        <td>
                                            <a href="Editar.htm?id=${dato.Id}"class="btn btn-warning"> Modificar
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wrench" viewBox="0 0 16 16">
                                                <path d="M.102 2.223A3.004 3.004 0 0 0 3.78 5.897l6.341 6.252A3.003 3.003 0 0 0 13 16a3 3 0 1 0-.851-5.878L5.897 3.781A3.004 3.004 0 0 0 2.223.1l2.141 2.142L4 4l-1.757.364L.102 2.223zm13.37 9.019.528.026.287.445.445.287.026.529L15 13l-.242.471-.026.529-.445.287-.287.445-.529.026L13 15l-.471-.242-.529-.026-.287-.445-.445-.287-.026-.529L11 13l.242-.471.026-.529.445-.287.287-.445.529-.026L13 11l.471.242z"/>
                                                </svg>
                                            </a>
                                            <a href="Delete.htm?id=${dato.Id}" class="btn btn-danger"> Elimar
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
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
    </body>
</html>
