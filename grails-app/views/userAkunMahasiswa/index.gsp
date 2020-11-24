<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 24/11/20
  Time: 17.55
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3">User Akun Data</h1>
<g:if test="${flash.message}">
    <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
        <div class="message">${flash.message}</div>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</g:if>
<div class="card card-primary col-md-10">
<!-- form start -->
    <g:form action="save" role="form" id="${user.id}">
        <div class="card-body">
            <div class="form-group">
                <label>Username</label>
                <g:textField name="=username" class="form-control" value="${user.username}"/>
            </div>
            <div class="form-group">
                <label>Reset Password</label>
                <g:passwordField name="password" class="form-control" placeholder="${message(code: "placeholder.password")}"/>
            </div>
            <div class="form-group">
                <label>Reset Email</label>
                <g:textField name="email" class="form-control" value="${user.email}"/>
            </div>
            <g:actionSubmit value="Reset" action="save" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>

<g:render template="/layouts/Footer"/>