<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 16/11/20
  Time: 17.28
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="user.header.add"/> </h1>
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
    <g:form action="save" role="form">
        <div class="card-body">
            <div class="form-group">
                <label>Username</label>
                <g:textField name="=username" class="form-control" placeholder="${message(code: "placeholder.name")}"/>
                <span class="text-danger"><g:renderErrors bean="${user}" field="username" /></span>
            </div>
            <div class="form-group">
                <label>Password</label>
                <g:passwordField name="password" class="form-control" placeholder="${message(code: "placeholder.password")}"/>
                <span class="text-danger"><g:renderErrors bean="${user}" field="password"/></span>
            </div>
            <div class="form-group">
                <label>Email</label>
                <g:textField name="email" class="form-control" placeholder="${message(code: "placeholder.email")}"/>
                <span class="text-danger"><g:renderErrors bean="${user}" field="email"/></span>
            </div>
            <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>

<g:render template="/layouts/Footer"/>