<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 09.41
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Tahun Akademik</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="academy.header.add"/> </h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="save" role="form">
            <div class="card-body">
                <div class="form-group">
                    <label><g:message code="table.field.academic"/> </label>
                    <select name="priode" class="custom-select">
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                    </select>
                </div>
                <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>