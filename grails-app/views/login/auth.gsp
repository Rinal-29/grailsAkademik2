<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 16/11/20
  Time: 16.01
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Page</title>

    <asset:stylesheet src="application.css"/>

</head>

<body class="hold-transition login-pagehold-transition login-page">

<div class="login-box">
    <div class="login-logo">
        <a href=""><b>Login</b> Page</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Masuk dengan akun anda</p>
            <g:form action="authenticate" method="post" controller="login">
                <div class="input-group mb-3">
                    <g:textField name="username" type="text" class="form-control" placeholder="Username"/>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <g:passwordField name="password" type="password" class="form-control" placeholder="Password"/>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="social-auth-links text-center mb-3">
                    <g:actionSubmit value="${message(code: 'springSecurity.login.button')}" action="dashboard" class="btn btn-block btn-primary mb-3"/>
                    <p>- Atau -</p>
                    <a href="/register" class="btn btn-block btn-danger">
                        Daftar!
                    </a>
                </div>
            </g:form>
        <!-- /.social-auth-links -->
        </div>
        <!-- /.login-card-body -->
    </div>
</div>

<g:if test="${flash.message}">
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <div class="message"><g:message code="login.error.message"/></div>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</g:if>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<asset:javascript src="application.js"/>
</body>
</html>