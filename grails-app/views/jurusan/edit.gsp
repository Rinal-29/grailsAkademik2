<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 15.00
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Daftar Jurusan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1><g:message code="major.header.edit"/> </h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${jurusan.id}">
            <div class="card-body">
                <div class="form-group">
                    <label><g:message code="table.field.major"/> </label>
                    <input required name="nama" class="form-control" value="${jurusan.nama}"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.faculty"/> </label>
                    <input required name="fakultas" class="form-control" value="${jurusan.fakultas}"/>
                </div>
                <g:actionSubmit value="${message(code: "button.update")}" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>