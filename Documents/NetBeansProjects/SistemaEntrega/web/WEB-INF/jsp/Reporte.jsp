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
                                    <a href="admin.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Regresar</a>│
                                    <a href="Metodonor.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Calcular por metodo noroeste</a>│Registro de todos los repartidores                            
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

                                    <th>No.</th> 
                                    <th >Cantidad</th>
                                    <th>Cantidad</th> 
                                    <th>Cantidad</th> 
                                    <th>Cantidad</th> 
                                </tr>
                            </thead>

                            <thead>
                                <tr>
                                    <th>de orden</th>
                                    <th>Hamburguesas</th>                              
                                    <th>Pizzas</th>
                                    <th>Gaseosas</th> 
                                    <th>Papas Fritas</th>
                                    <th>Venta en Q</th>
                                    <th>Fecha de venta </th>
                                    <th>Direccion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="datos" items="${lista}">
                                    <tr>
                                        <td>${datos.idVentas}</td>
                                        <td>${datos.Hamburguesa}</td>
                                        <td>${datos.Piza}</td>
                                        <td>${datos.Gaseosa}</td>
                                        <td>${datos.Papas}</td>
                                        <td>${datos.Totalpagar}</td>
                                        <td>${datos.Fechacompra}</td>
                                        <td>${datos.Direccion}</td>

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