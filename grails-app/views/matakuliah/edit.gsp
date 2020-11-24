<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 16.40
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Matakuliah</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="courses.header.edit"/></h1>

    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${matkul.id}">
            <div class="card-body">
                <div class="form-group">
                    <label><g:message code="table.filed.courses"/> </label>
                    <input required name="namaMatkul" class="form-control" value="${matkul.namaMatkul}"/>
                </div>
                <div class="form-group">
                    <label>Jumlah SKS</label>
                    <input required name="sks" class="form-control" value="${matkul.sks}"/>
                </div>
                <div class="form-group">
                    <label>Semester</label>
                    <input required name="semester" class="form-control" value="${matkul.semester}"/>
                </div>
                <g:actionSubmit value="${message(code: "button.update")}" action="update" class="btn btn-primary" />
            </div>
            <!-- /.card-body -->
        </g:form>
</div>
</body>
</html>