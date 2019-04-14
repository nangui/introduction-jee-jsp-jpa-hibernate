<%-- 
    Document   : index
    Created on : 26 mars 2019, 18:36:17
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
        <title>Login Page</title>
    </head>
    <body>
        <div class="container-login">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-12 h-100 bg-primary"></div>
                <div class="col-md-6 col-sm-12 col-12 d-flex flex-column justify-content-center align-items-center">
                    <div class="py-5 px-5 shadow rounded">
                        <h2 class="text-center text-secondary">Login</h2>
                        <form method="POST" action="users">
                            <input type="hidden" name="action" value="logon" /> 
                            <div class="form-group">
                                <label>Login</label>
                                <input type="text" class="form-control" name="login">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password">
                            </div>
                            <input type="submit" class="btn btn-success btn-block" value="Se connecter"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <br>
        ${message}
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script sc="assets/js/app.js"></script>
    </body>
</html>
