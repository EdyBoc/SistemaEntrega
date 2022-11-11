
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <title>Welcome to Spring Web MVC project</title>
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
                                    │<button  type="button" class="btn btn-dark rounded-pill" data-toggle="modal" data-target="#example" data-whatever="@nombreDeUsuario" >Usuario</button>│                                                              
                                    <a href="index.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Salir</a>│Restaurente de comida                             
                                </center>
                            </div>
                        </div>                                        
                    </div>                  
                </div>
            </div>

            <!--modal 1 -->
            <div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="exampleLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" style="width: 20rem;">
                        <div class="modal-header text-white bg-primary" >

                            <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">                         
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">     

                            <div class="form-group">                                               
                                <form  method ="POST">
                                    <Label>Usuario</label>
                                    <input type="text" name="user" class="form-control" required>
                                    <Label>Contraseña</label>
                                    <input type="Password" name="clave" class="form-control" required>
                                    <hr> </hr>
                                    <br>
                                    <center> <input  id="html_element" type="submit"  class="btn btn-primary rounded-pill" value="Ingresar" ></center>     

                                </form>
                            </div>        
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>


            <hr class="card text-white">  </hr> 
            <div class="container" style="background:">
                <div class="row">
                    <div class="col-5">                                                                              
                        <div class="card-header">                               
                            <center> <p class="fs-6 fw-bold">Sistema de entrega y seguimiento </p></center>
                            <hr class="card text-white"></hr> 
                            <p class="fs-6">Inicios de sesión / Contraseña;</p>
                            <p class="fs-6">Administrador;  Admin/Admin</p>
                            <p class="fs-6">Repartidor/motorista ; Repartidor/Repartidor  </p>
                            <p class="fs-6">Cliente;  Edy/Edy</p>
                        </div>                    
                    </div>
                    <div class="col-5">
                        <center> <img src=" https://www.beetrack.com/hs-fs/hubfs/Sistema%20de%20rastreo%20satelital.jpg?width=600&name=Sistema%20de%20rastreo%20satelital.jpg"  ></center>                           
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="jquery/jquery-3.3.1.min.js"></script>	 	
    <script src="popper/popper.min.js"></script>	 	 	
    <script src="bootstrap4/js/bootstrap.min.js"></script>   	
    <script src="jqueryUI/jquery-ui-1.12.1/jquery-ui.min.js"></script>  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <!-- Alertas -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</body>
</html>