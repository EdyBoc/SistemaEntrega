
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>

        <div class="container  center-block col-sm-8 p-1" >
            <div class="row">
                <form method ="POST" class="needs-validation" novalidate>

                    <c:forEach var= "medio" items = "${medios_lista}" >
                        <div class="form-check" id="medios"> 
                            <a  class="only-one" name="Medios" value="${medio.Medios}" id="Medios">
                                <a  class="form-check-label" for="medios">
                                    ${medio.Medios}
                                </a>
                        </div>
                    </c:forEach>                     
                    <Label>Direccion</label>
                    <input type="text" name="Hamburguesa" class="form-control" maxlength="1000" minlength="1" required>

                    <Label >Numero Tarjeta Credito</label>
                    <input type="text" name="piza" class="form-control " required >


                    <Label  class="form-label">Ingresar Clave</label>
                    <input type="password" name="piza" class="form-control " required >


                    <hr> </hr> 
                    <center>  <button href="Menu4.htm" class="btn btn-primary">Enviar</button>
                        <a href="carrito.htm" class="btn btn-danger mb-2 " >Cancelar</a></center>
                </form>

            </div>

        </div> 
                                
                                <Label  class="form-labelVista Sin uso</label>
                                
                                
                                
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>     
    </body>
</html>
