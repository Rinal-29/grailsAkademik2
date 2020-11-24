<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.35
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Jadwal</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="schedule.header.add"/></h1>
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
                    <label><g:message code="sidebar.lecture.name"/></label>
                    <select name="mahasiswa" class="custom-select">
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
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
                    <input type="date" name="hari" class="form-control" placeholder="Masukkan hari"/>
                    <span class="text-danger"><g:renderErrors bean="${jadwal}" field="hari" /></span>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.time"/></label>
                    <input type="time" name="jam" class="form-control" placeholder="Masukkan jam"/>
                    <span class="text-danger"><g:renderErrors bean="${jadwal}" field="jam"/> </span>
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
                <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>