<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Validación de Formulario con Javascript</title>
        <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="css/estilos.css">




        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title>Proyecto Web</title>
    </head>
    <body style="background-color:#154360 ">

        <div  class="d-flex">
            <div class="card-block  col-sm-1 p-1 ">

            </div>
        </div>
        <div class="container mt-4 col-lg-4 ">
            <div class="card border-info" style="max-width: 35rem; max-height: 100rem;">
                <div class="card-header   text-white "style="background-color:#A9CCE3 "> 
                    <center><h5 >Agregar nueva tienda</h5>  </center>
                </div>
                <div class="card-body">
                    <form class="row g-3 needs-validation" novalidate>
                    </form>


                    <form method ="POST" class="needs-validation" novalidate>

                        <Label >Direccion</label>
                        <input type="text" name="Direccion" class="form-control" maxlength="1000" minlength="1" required>

                        <Label >Numero de tienda </label>
                        <input type="number" name="Numetienda" class="form-control col-sm-4" required >

                        <Label  class="form-label">Nombre encargado </label>
                        <input type="text" name="Nomencargado" class="form-control" required >

                        <Label  class="form-label">Extencion tel</label>
                        <input type="number" name="telefono" class="form-control col-sm-4 " required>

                        <Label  class="form-label">Codigo motorista</label>
                        <input type="text" name="idRepartidor" class="form-control col-sm-4" required>

                        <Label  class="form-label" >Estatus </label>
                        <input type="text" name="Estatus" class="form-control  col-sm-4 " required>

                        <select id="estatus">
                            <c:forEach var="estatus" items="${estatus_Lista}">
                                <option value=${estatus.Estatus}>${estatus.Estatus}</option>
                            </c:forEach>
                        </select>

                        <hr> </hr> 

                        <center>           
                            <!-- Button trigger modal -->
                            <button type="button"  type="submit" class="btn  btn-success " data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Crear
                            </button>
                            <a href="Tiendas.htm" class="btn btn-danger" >Cancelar</a>
                        </center>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="container mt-2 col-lg-4 p-4">
                    <div class="card border-info" style="max-width: 25rem; max-height: 100rem;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                               
                                <div class="modal-footer">
                                    “Estimado Administrador se esta procesando la creacion de una nueva tienda” 
                                    <center>  <button href="Receptor.htm" class="btn btn-warning " >Enviar</button></center>
                                  
                                     <button type="button" class="btn btn-danger" data-bs-dismiss="modal" aria-label="Close"> Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                     
            </div> 

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <!-- Alertas -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

            <script src="jquery/jquery-3.3.1.min.js"></script>	 	
            <script src="popper/popper.min.js"></script>	 	 	
            <script src="bootstrap4/js/bootstrap.min.js"></script>   	
            <script src="jqueryUI/jquery-ui-1.12.1/jquery-ui.min.js"></script>




            <script>
                // Example starter JavaScript for disabling form submissions if there are invalid fields
                (function () {
                    'use strict'

                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.querySelectorAll('.needs-validation')

                    // Loop over them and prevent submission
                    Array.prototype.slice.call(forms)
                            .forEach(function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (!form.checkValidity()) {
                                        event.preventDefault()
                                        event.stopPropagation()
                                    }

                                    form.classList.add('was-validated')
                                }, false)
                            })
                })()

            </script>


            <script src="js/formulario.js"></script>
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

    </body>
</html>