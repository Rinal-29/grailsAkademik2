<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Nilai Mahasiswa</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1><g:message code="score.header.edit"/> </h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${nilaiMhs.id}">
            <div class="card-body">
                <div class="form-group">
                    <label><g:message code="table.filed.courses"/> </label>
                    <select name="mahasiswa" class="custom-select">
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label><g:message code="table.filed.courses"/> </label>
                    <select name="mataKuliah" class="custom-select">
                        <g:each in="${listMatkul}" var="matkul">
                            <option value="${matkul.id}">${matkul.namaMatkul}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label><g:message code="table.filed.score.uts"/> </label>
                    <input required name="uts" class="form-control" value="${nilaiMhs.uts}"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.score.uas"/> </label>
                    <input required name="uas" class="form-control" value="${nilaiMhs.uas}"/>
                </div>
                <g:actionSubmit value="${message(code: "button.add")}"  action="update" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>