<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Método de Esquina Noroeste</title>
        <link rel="stylesheet" type="text/css" href="estilos.css" />
<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <style>

        body{
            padding: 0px;
            margin: 0px;
            height: auto;
            width: auto;
        }
        .header{
            background-color: #000000;
            color: white;
            padding: 0px;
            margin: 0px;
            text-align: center;
            height: auto;
            width: auto;
        }
        .container{
            margin-left:0px;
            height: auto;
            width: auto;
        }
        #form1{
            margin-left: 30px;
            height: auto;
            width: auto;
        }
        #fil,#col,#env{
            margin: 10px;
            height: auto;
            width: auto;
        }
        #titulo{
            padding: 0px;
            margin: 0px;
            height: auto;
            width: auto;
        }
        #datos_table{
            padding: 0px;
            margin-top:10px;
            height: auto;
            width: auto;
        }
        #tabla{
            padding: 0px;
            margin: 15px;
            height: auto;
            width: auto;
        }
        #tablas{
            padding: 0px;
            margin: 10px;
            height: auto;
            width: 25%;
        }
        #repito{
            padding: 0px;
            margin: 10px;
            height: auto;
            width: auto;
        }
        .jumbotron {
            background-color: transparent;
            margin: 0;
            padding: 15px;
        }

    </style>
 <body style=" background-color:#EAECEE ">
    
        <div class="header">
            <h1 id="titulo">Calculo Metodo de Esquina Noroeste</h1>
        </div>
    <div class="jumbotron">
            <!--Menu de las clases modales -->
            <div  style="background: linear-gradient(122deg, rgba(4,100,119,1) 12%, rgba(6,118,140,1) 32%, rgba(7,128,152,1) 39%, rgba(34,193,195,1) 75%);">
                <div class="container p-4 ml-5 ">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="btn-group-orizontal mt-0 text-white " >
                                <center>                                                              
                                    <a href="Reporte.htm" class="btn btn-dark rounded-pill "  role="button" aria-pressed="true">Regresar</a>│Cantidad de venta estimada entre 5 a 10 ventas por tienda                             
                                </center>
                            </div>
                        </div>                                        
                    </div>                  
                </div>
            </div>


            <center><div class="container">
                <form name="datos" id="form1" action="index.html" method="post">
                    <br> Ventas: <input type="text" name="filas" id="fil" />
                    <br> Tiendas: <input type="text" name="columnas" id="col"/>
                    <br> <input type="button" value="Genera una tabla" onclick="generaTabla()" id="env">
                </form> </center>
            </div>
            <center><input type="button" value="Crea otra tabla" onclick="atras()" id="repito" style="display: none"></center>
            
           
            <script >
                function generaTabla() {
                    var fuentes = parseInt(document.getElementById('fil').value);
                    var destinos = parseInt(document.getElementById('col').value);
                    var lol = document.getElementById("tabla")
                    var body = document.getElementsByTagName("body")[0];
                    var d = 1;
                    var f = 1;
                    if (lol) {
                        lol.parentNode.removeChild(lol);
                    }
                    var formu = document.createElement("form");
                    formu.setAttribute("id", "tabla");
                    var tabla = document.createElement("table");
                    var tblBody = document.createElement("tbody");
                    for (var i = 0; i <= fuentes + 1; i++) {
                        var filas = document.createElement("tr");
                        for (var j = 0; j <= destinos + 1; j++) {
                            var columnas = document.createElement("td");
                            if (i == 0 && j > 0 && j <= destinos) {
                                var textoCelda1 = document.createTextNode("Producto".concat(d.toString()));
                                d++;
                                columnas.appendChild(textoCelda1);
                            } else if (j == 0 && i > 0 && i <= fuentes) {
                                var textoCelda2 = document.createTextNode("Tienda".concat(f.toString()));
                                f++;
                                columnas.appendChild(textoCelda2);
                            } else if (j > 0 && i > 0 && (i != fuentes + 1 || j != destinos + 1)) {
                                var textoCelda3 = document.createElement("input");
                                textoCelda3.setAttribute("id", "t".concat(i.toString(), "_", j.toString()));
                                textoCelda3.setAttribute("width", "5px");
                                columnas.appendChild(textoCelda3);
                            }
                            filas.appendChild(columnas);
                        }
                        tblBody.appendChild(filas);
                    }
                    var boton = document.createElement("input");
                    boton.setAttribute("id", "datos_table");
                    boton.setAttribute("value", "Resolver");
                    boton.setAttribute("type", "button");
                    boton.setAttribute("onclick", "resuelve()");
                    tabla.appendChild(tblBody);
                    formu.appendChild(tabla);
                    formu.appendChild(boton);
                    body.appendChild(formu);
                    tabla.setAttribute("border", "2");
                    document.getElementById("form1").style.display = "none";
                    document.getElementById("datos_table").style.display = "block";
                    document.getElementById("repito").style.display = "block";
                }
                function atras() {
                    document.getElementById("form1").style.display = "block";
                    document.getElementById("datos_table").style.display = "none";
                    document.getElementById("repito").style.display = "none";
                    var lol = document.getElementById("tabla")
                    if (lol) {
                        lol.parentNode.removeChild(lol);
                    }
                    var lol1 = document.getElementById("tablas")
                    if (lol1) {
                        lol1.parentNode.removeChild(lol1);
                    }
                }

                function resuelve() {
                    var tabla = new Array();
                    var fuentes = parseInt(document.getElementById('fil').value);
                    var destinos = parseInt(document.getElementById('col').value);
                    for (var i = 1; i <= fuentes + 1; i++) {
                        var col = new Array();
                        for (var j = 1; j <= destinos + 1; j++) {
                            if (i <= fuentes || j <= destinos) {
                                col[j - 1] = parseInt(document.getElementById("t".concat(i.toString(), "_", j.toString())).value);
                            }
                        }
                        tabla[i - 1] = col;
                    }
                    var resultado = algoritmoEsquina(tabla);
                    alert("El resultado es: " + resultado);
                }
                function algoritmoEsquina(tabla) {
                    var res = new Array();
                    var res1 = new Array();
                    var res2 = new Array();
                    var resultado = 0;
                    var es = 0;
                    var dem = 0;
                    var offer = 0;
                    var i = 0;
                    var j = 0;
                    var lol = document.getElementById("tabla1")
                    var body = document.getElementsByTagName("body")[0];

                    while (tabla.length > 1) {
                        es = tabla[i][i];
                        dem = tabla[i][tabla[i].length - 1];
                        offer = tabla[tabla.length - 1][i];
                        if (dem > offer) {
                            res1[j] = es;
                            res2[j] = offer;
                            res[j] = es * offer;
                            tabla[i][tabla[i].length - 1] -= offer;
                            for (var z = 0; z < tabla.length; z++) {
                                tabla[z].splice(0, 1);
                            }
                            console.log(tabla);
                        } else if (dem < offer) {
                            res1[j] = es;
                            res2[j] = dem;
                            res[j] = es * dem;
                            tabla[tabla.length - 1][i] -= dem;
                            tabla.splice(0, 1);
                            console.log(tabla);
                        } else {
                            res[j] = es * dem;
                            res1[j] = es;
                            res2[j] = dem;
                            tabla.splice(0, 1);
                            for (var z = 0; z < tabla.length; z++) {
                                tabla[z].splice(0, 1);
                            }
                            console.log(tabla);
                        }
                        j++;
                    }
                    console.log(res);
                    for (var k = 0; k < res.length; k++) {
                        resultado += res[k];
                    }
                    var lol = document.getElementById("tablas")
                    if (lol) {
                        lol.parentNode.removeChild(lol);
                    }
                    var final = new Array();
                    final[0] = res1;
                    final[1] = res2;
                    final[2] = res;
                    //-----------------------------------------------------------------
                    var body = document.getElementsByTagName("body")[0];

                    // Crea un elemento <table> y un elemento <tbody>
                    var tabla = document.createElement("table");
                    var tblBody = document.createElement("tbody");
                    tabla.setAttribute("id", "tablas");

                    // Crea las celdas
                    for (var i = 0; i < res1.length; i++) {
                        // Crea las hileras de la tabla
                        var hilera = document.createElement("tr");

                        for (var j = 0; j < 3; j++) {
                            // Crea un elemento <td> y un nodo de texto, haz que el nodo de
                            // texto sea el contenido de <td>, ubica el elemento <td> al final
                            // de la hilera de la tabla
                            var celda = document.createElement("td");
                            var textoCelda = document.createTextNode(final[j][i]);
                            celda.appendChild(textoCelda);
                            hilera.appendChild(celda);
                        }

                        // agrega la hilera al final de la tabla (al final del elemento tblbody)
                        tblBody.appendChild(hilera);
                    }
                    var hilera = document.createElement("tr");
                    var celda = document.createElement("td");
                    var textoCelda = document.createTextNode('');
                    celda.appendChild(textoCelda);
                    hilera.appendChild(celda);
                    tblBody.appendChild(hilera);
                    tabla.appendChild(tblBody);
                    var celda = document.createElement("td");
                    var textoCelda = document.createTextNode('');
                    celda.appendChild(textoCelda);
                    hilera.appendChild(celda);
                    tblBody.appendChild(hilera);
                    tabla.appendChild(tblBody);
                    var celda = document.createElement("td");
                    var textoCelda = document.createTextNode(resultado);
                    celda.appendChild(textoCelda);
                    hilera.appendChild(celda);
                    tblBody.appendChild(hilera);
                    tabla.appendChild(tblBody);
                    // appends <table> into <body>
                    body.appendChild(tabla);
                    // modifica el atributo "border" de la tabla y lo fija a "2";
                    tabla.setAttribute("border", "2");
                    //------------------------------------------------------------------
                    return resultado;
                }


            </script>
              <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
             </body>    
</html>