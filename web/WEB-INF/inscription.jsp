<%-- 
    Document   : inscription
    Created on : 9 avr. 2019, 18:26:44
    Author     : Adonai Nangui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <div class="container mt-5 mt-md-2">
            <h1 class="text-center">Ajout nouvel utilisateur</h1>
            <div class="row">
                <div class="col-md-6 col-sm-6 col-12">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="lastname">Nom</label>
                            <input id="lastname" class="form-control" type="text" name="lastname">
                        </div>
                        <div class="form-group">
                            <label for="firstname">Prénom</label>
                            <input id="firstname" class="form-control" type="text" name="firstname">
                        </div>
                        <div class="form-group">
                            <label for="photo">Photo</label>
                            <input id="photo" class="form-control-file" type="file" accept="image/*" name="photo">
                        </div>
                        <div class="form-group">
                            <label for="role">Rôle</label>
                            <select name="role" class="form-control" id="role">
                                <option>Choisir le rôle</option>
                                <c:forEach items="${roles}" var="role">
                                    <option value="${role.id}">${role.name} (${role.description})</option>
                                </c:forEach>
                            </select>
                        </div>
                        <button class="btn btn-success" type="submit">Enregistrer</button>
                    </form>
                </div>
                <div class="col-md-6 col-sm-6 col-12">
                    <div id="img-content"></div>
                </div>
            </div>
        </div>
        
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/app.js" async defer></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        
    </body>
</html>

