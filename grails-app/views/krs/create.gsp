<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 12.08
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Daftar KRS</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="krs.header.add"/> </h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
    <g:form action="save" role="form">
        <div class="card-body">
            <div class="form-group">
                <label><g:message code="table.field.student"/> </label>
                <select name="mahasiswa" class="custom-select">
                    <g:each in="${mahasiswa}" var="mhs">
                        <option value="${mhs.id}">${mhs.nama}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.filed.courses"/> </label>
                <select name="mataKuliah" class="custom-select">
                    <g:each in="${matakuliah}" var="matkul">
                        <option value="${matkul.id}">${matkul.namaMatkul}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.field.academic"/> </label>
                <select name="tahunAkademik" class="custom-select">
                    <g:each in="${tahunAkademi}" var="ta">
                        <option value="${ta.id}">${ta.priode}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.field.advisor"/> </label>
                <select name="penasehatAkademik" class="custom-select">
                    <g:each in="${penasehat}" var="pa">
                        <option value="${pa.id}">${pa.dosen.nama}</option>
                    </g:each>
                </select>
            </div>
            <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>
</body>
</html>