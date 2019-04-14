<%-- 
    Document   : accueil
    Created on : 26 mars 2019, 18:36:46
    Author     : Adonai Nangui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/all.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>Accueil</title>
    </head>
    <body>
        <h1>Bienvenue ${user.firstname} ${user.lastname}</h1>
        
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
    </body>
</html>
