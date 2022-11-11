<%-- 
    Document   : Distancia1
    Created on : 3/11/2022, 12:29:15 AM
    Author     : USUARIO 2022
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Distancia</title>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <script src="https://kit.fontawesome.com/ab2155e76b.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <link href="App.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">     

    </head>
    <body>
        <style>
            body {
                color: #273746;
                font-family: "Poppins", sans-serif;
            }

            /*Estilos*/
            .jumbotron {
                background-color: transparent;
                margin: 0;
                padding: 10px;
            }

            .jumbotron h5 {
                letter-spacing: 1px;
                font-size: 2em;
            }

            .jumbotron h5,
            .jumbotron p {
                text-align: center;
            }

            /*map*/
            #googleMap {
                width: 50%;
                height: 400px;
                margin: 10px auto;
            }

            /*output box*/
            #output {
                text-align: center;
                font-size: smaller;
                margin: 5px auto;
            }

            #mode {
                color: black;
            }
        </style>

        <div class="jumbotron">
            <div class="container-fluid">
                <div  style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);">
                    <div class="container p-4 ml-5 ">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="btn-group-orizontal mt-0 text-white " >
                                    <center>
                                        Ubicacion de tiendas │
                                        <a href="carrito.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Regresar a mis compras</a>│
                                        <a href="Login.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Salir</a>│
                                    </center>
                                </div>
                            </div>                                        
                        </div>                  
                    </div>
                </div>

                <form class="form-horizontal">
                    <div class="form-group">
                        <center> <label for="from" class="col-xs-2 control-label"><i class=" ">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-map" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z"/>
                                    <path fill-rule="evenodd" d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z"/>
                                    </svg>Ingrese su ubicacion
                                </i></label>
                            <div class="col-sm-4">
                                <input type="text" id="from" placeholder="Origin" class="form-control">
                            </div>
                        </center>
                    </div>
                    <div class="form-group">
                        <center>   <label for="to" class="col-xs-2 control-label"><i class="bi bi-clock-history"> 
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
                                    <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z"/>
                                    <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z"/>
                                    <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
                                    </svg>Lugar de destino                               
                                </i></label>
                            <div class="col-sm-4">
                                <input type="text" id="to" placeholder="Destination" class="form-control">
                            </div>
                        </center>
                    </div>
                </form>
                <hr>
                <center>
                <div class="col-xs-offset-2 col-xs-10">
                    <button class="btn btn-dark btn-lg " onclick="calcRoute();"><i class="fas fa-map-signs"> Calcular </i></button>
                </div>
                    </center>
            </div>
            <div class="container-fluid">
                <div id="googleMap">

                </div>
                <div id="output">

                </div>
            </div>

        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsBvw9e5eykzJUTTOIkBKNkzP9buRHUwc&libraries=places"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="Scripts/jquery-3.1.1.min.js"></script>
        <script src="Main.js"></script>

        <script>

                        //javascript.js
                        //set map options
                        var myLatLng = {lat: 15.7835, lng: -90.2308};
                        var mapOptions = {
                            center: myLatLng,
                            zoom: 7,
                            mapTypeId: google.maps.MapTypeId.ROADMAP

                        };

                        //create map
                        var map = new google.maps.Map(document.getElementById('googleMap'), mapOptions);

                        //create a DirectionsService object to use the route method and get a result for our request
                        var directionsService = new google.maps.DirectionsService();

                        //create a DirectionsRenderer object which we will use to display the route
                        var directionsDisplay = new google.maps.DirectionsRenderer();

                        //bind the DirectionsRenderer to the map
                        directionsDisplay.setMap(map);


                        //define calcRoute function
                        function calcRoute() {
                            //create request
                            var request = {
                                origin: document.getElementById("from").value,
                                destination: document.getElementById("to").value,
                                travelMode: google.maps.TravelMode.DRIVING, //WALKING, BYCYCLING, TRANSIT
                                unitSystem: google.maps.UnitSystem.IMPERIAL
                            }

                            //pass the request to the route method
                            directionsService.route(request, function (result, status) {
                                if (status == google.maps.DirectionsStatus.OK) {

                                    //Get distance and time
                                    const output = document.querySelector('#output');
                                    output.innerHTML = "<div class='alert-info'>From: " + document.getElementById("from").value + ".<br />To: " + document.getElementById("to").value + ".<br /> Driving distance <i class='fas fa-road'></i> : " + result.routes[0].legs[0].distance.text + ".<br />Duration <i class='fas fa-hourglass-start'></i> : " + result.routes[0].legs[0].duration.text + ".</div>";

                                    //display route
                                    directionsDisplay.setDirections(result);
                                } else {
                                    //delete route from map
                                    directionsDisplay.setDirections({routes: []});
                                    //center map in London
                                    map.setCenter(myLatLng);

                                    //show error message
                                    output.innerHTML = "<div class='alert-danger'><i class='fas fa-exclamation-triangle'></i> Could not retrieve driving distance.</div>";
                                }
                            });

                        }



                        //create autocomplete objects for all inputs
                        var options = {
                            types: ['(cities)']
                        }

                        var input1 = document.getElementById("from");
                        var autocomplete1 = new google.maps.places.Autocomplete(input1, options);

                        var input2 = document.getElementById("to");
                        var autocomplete2 = new google.maps.places.Autocomplete(input2, options);

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    </body>
</html>