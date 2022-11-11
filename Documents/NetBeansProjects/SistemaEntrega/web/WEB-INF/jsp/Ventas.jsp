<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Index</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <div class="container">
            <h1>Random numbers - Javascript</h1>
            <h4>Random number between:</h4>
            <div class="buttons">
                <input type="number" class="start" id="start"> <span class="sep">and</span> <input type="number" class="end" id="end">
                <input type="button" class="btnSubmit" value="Generate Number" onclick="getRandom()">
            </div>
            <h2 class="number" id="number"></h2>

        </div>
        <script>
            function getRandom() {
                let m1 = document.getElementsByClassName('start')[0].value;
                let m2 = document.getElementsByClassName('end')[0].value;
                
                
                document.getElementsByClassName('number')[0].innerHTML = 'The random number is: ' + getRandomBetween(parseInt(m1), parseInt(m2));
            }
m1 = document.getElementById("multiplicando").value;
            r = m1 * 25;
            document.getElementById("resultado").value = r;
            
            
            function getRandomBetween(start, end) {
                return Math.floor(Math.random() * (end - start + 1)) + start;
            }
        </script>
    </body>
</html>