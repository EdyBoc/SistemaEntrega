
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">     
        <title>Menu carrito de compras</title>
    </head>
    <body>
        
        <style>
            .jumbotron {
                background-color: transparent;
                margin: 0;
                padding: 10px;
            }
            
            </style>
        <div class="jumbotron">
            <div  style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);">
                <div class="container p-4 ml-5 ">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="btn-group-orizontal mt-0 text-white " >    
                                
                                <center>
                                    Mis Compras│
                                    <a href="Distancia.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Ver tienda mas sercana</a>│
                                    <a href="Login.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Salir</a>│
                                </center>                              
                            </div>
                        </div>                                        
                    </div>                  
                </div>
            </div>
            <div class="container  center-block col-sm-10 p-1" >
                <div class="row">
                    <div class="col-sm-6">

                        <div class="card-block">
                            <div class="card-body">

                                <form class="row g-3 needs-validation" novalidate>
                                </form>

                                <form method ="POST" class="needs-validation" novalidate>

                                    <c:forEach var= "medio" items = "${medios_lista}" >
                                        <div id="medios"> 
                                            <a  class="only-one" name="Medios" value="${medio.Medios}" id="Medios">
                                                <a  class="form-check-label" for="medios">
                                                    ${medio.Medios}
                                                </a>
                                        </div>
                                    </c:forEach>   

                                    <form id="multiplicar">

                                        <div class="input-group">
                                            <Label class="input-group-text" >Hamburguesas Q25.00 </label>                                                            
                                            <input type="number" name="Hamburguesa"  class="form-control" id="multiplicando" onChange="multiplicar();" >

                                        </div> 
                                        <hr>
                                        <div class="input-group">
                                            <Label class="input-group-text" >Pizza Q50.00</label>                                                            
                                            <input type="number" name="Piza"  class="form-control" id="multiplicando2"  onChange="multiplicar();" >

                                        </div> 
                                        <hr>
                                        <div class="input-group">
                                            <Label class="input-group-text" >Gaseosa Q10.00</label>                                                            
                                            <input type="number" name="Gaseosa" class="form-control" id="multiplicando3" onChange="multiplicar();" >

                                        </div> 
                                        <hr>
                                        <div class="input-group">
                                            <Label class="input-group-text" >Papas Fritas Q5.00</label>                                                            
                                            <input type="number"  name="Papas" class="form-control" id="multiplicando4"  onChange="multiplicar();" >

                                        </div> 
                                        <hr>                            
                                        <center> <div class="">
                                                <Label class="" >Total a cancelar Q</label>                                                            
                                                <input  class="btn btn-primary rounded-pill col-sm-3"type="text" name="Totalpagar" id="resultado5" readonly="readonly">

                                            </div> </center>
                                        <hr>
                                        Ingresar siguientes datos
                                        <hr>
                                        <Label>Direccion</label>
                                        <input type="text" name="Direccion" class="form-control" maxlength="1000" minlength="1" required>

                                        <Label >Numero Tarjeta Credito</label>
                                        <input type="text" name="tarjeta" class="form-control " required >

                                        <Label  class="form-label">Ingresar Clave</label>
                                        <input type="password" name="clavetarjeta" class="form-control " required>
                                        <hr> </hr> 

                                        <center>  <button  class="btn btn-primary" type="submit" >Solicitar</button></center>
                                    </form>
                                    <hr> </hr>       
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-3 btn-dark ">
                        <div class="d-grid gap-2"> 
                            <label class="btn btn-dark "><h3>Agregado a carrito</h3> </label>
                            <input  class="btn btn-dak text-white"type="text" id="resultado" readonly="readonly">
                            <input  class="btn btn-dak text-white"type="text" id="resultado2" readonly="readonly">
                            <input  class="btn btn-dak text-white"type="text" id="resultado3" readonly="readonly">
                            <input  class="btn btn-dak text-white"type="text" id="resultado4" readonly="readonly">
                            <center> <img  class="img-thumbnail" alt="" width="50%" height="50%" src="https://img.lovepik.com/free-png/20210919/lovepik-shopping-cart-png-image_400495984_wh1200.png"  ></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function multiplicar() {
                m1 = document.getElementById("multiplicando").value;
                r = m1 * 25;
                document.getElementById("resultado").value = r;

                m2 = document.getElementById("multiplicando2").value;
                r2 = m2 * 50;
                document.getElementById("resultado2").value = r2;

                m3 = document.getElementById("multiplicando3").value;
                r3 = m3 * 10;
                document.getElementById("resultado3").value = r3;

                m4 = document.getElementById("multiplicando4").value;
                r4 = m4 * 5;
                document.getElementById("resultado4").value = r4;

                r5 = r + r2 + r3 + r4;
                document.getElementById("resultado5").value = r5;
            }

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
