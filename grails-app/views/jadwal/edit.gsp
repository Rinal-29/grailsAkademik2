<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.42
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Jadwal</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1><g:message code="schedule.header.edit"/></h1>
    <div class="card card-primary col-md-10">
<!-- form start -->
    <g:form action="update" role="form" id="${jadwal.id}">
        <div class="card-body">
            <div class="form-group">
                <label><g:message code="sidebar.lecture.name"/></label>
                <select name="dosen" class="custom-select">
                    <g:each in="${dosen}" var="dsn">
                        <option value="${dsn.id}">${dsn.nama}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.filed.courses"/></label>
                <select name="mataKuliah" class="custom-select">
                    <g:each in="${matkul}" var="kuliah">
                        <option value="${kuliah.id}">${kuliah.namaMatkul}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.filed.day"/></label>
                <input required type="date" name="hari" class="form-control" value="${jadwal.hari}"/>
            </div>
            <div class="form-group">
                <label><g:message code="table.field.time"/></label>
                <input required type="time" name="jam" class="form-control" value="${jadwal.jam}"/>
            </div>
            <div class="form-group">
                <label><g:message code="table.field.academic"/></label>
                <select name="tahunAkademik" class="custom-select">
                    <g:each in="${tahunAkademik}" var="ta">
                        <option value="${ta.id}">${ta.priode}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label><g:message code="table.field.room"/></label>
                <select name="ruangan" class="custom-select">
                    <g:each in="${ruangan}" var="kelas">
                        <option value="${kelas.id}">${kelas.namaRuangan}</option>
                    </g:each>
                </select>
            </div>
            <g:actionSubmit value="${message(code: "button.update")}" action="update" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>
</body>
</html>