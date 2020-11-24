<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 16.19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah MataKuliah</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="courses.header.add"/> </h1>
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
                <label><g:message code="table.filed.courses"/> </label>
                <g:textField value="${fieldValue(bean: matkul, field: "namaMatkul")}" name="namaMatkul" class="form-control" placeholder="${message(code: "placeholder.courses")}"/>
                <span class="text-danger"><g:renderErrors bean="${matkul}" field="namaMatkul"/></span>
            </div>
            <div class="form-group">
                <label>SKS</label>
                <g:textField value="${fieldValue(bean: matkul, field: "sks")}" name="sks" class="form-control" placeholder="${message(code: "placeholder.sks")}"/>
                <span class="text-danger"><g:renderErrors bean="${matkul}" field="sks" /></span>
            </div>
            <div class="form-group">
                <label>Semester</label>
                <g:textField value="${fieldValue(bean: matkul, field: "semester")}" name="semester" class="form-control" placeholder="${message(code: "placeholder.semester")}"/>
                <span class="text-danger"><g:renderErrors bean="${matkul}" field="semester"/></span>
            </div>
            <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>
</body>
</html>