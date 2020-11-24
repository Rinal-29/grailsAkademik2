<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Daftar Ruangan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="room.header.edit"/> </h1>
<div class="card card-primary col-md-10">
<!-- form start -->
    <g:form action="update" role="form" id="${ruangan.id}">
        <div class="card-body">
            <div class="form-group">
                <label>Nama Ruangan</label>
                <g:textField name="namaRuangan" class="form-control" value="${ruangan.namaRuangan}"/>
            </div>
            <div class="form-group">
                <label>Nama Matakuliah</label>
                <select name="namaMatakuliah" class="custom-select">
                    <g:each in="${matkul}" var="kul">
                        <option value="${kul.id}">${kul.namaMatkul}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label>Nama Jurusan</label>
                <select name="jurusan" class="custom-select">
                    <g:each in="${jurusan}" var="jur">
                        <option value="${jur.id}">${jur.nama}</option>
                    </g:each>
                </select>
            </div>
            <g:actionSubmit value="${message(code: "button.update")}" action="update" class="btn btn-primary" />
        </div>
        <!-- /.card-body -->
    </g:form>
</div>
</body>
</html>