<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Masukkan Nilai</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="score.header.add"/></h1>
    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
            <div class="message"><g:message code="input.error"/> </div>
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
                    <label><g:message code="table.field.student"/> </label>
                    <g:textField name="nama" value="${fieldValue(bean: nilai, field: "nama")}" class="form-control" placeholder="${message(code: "placeholder.name")}"/>
                    <span class="text-danger"><g:renderErrors bean="${nilai}" field="nama"/></span>
                </div>
                <div class="form-group">
                    <label>Nim</label>
                    <g:textField value="${fieldValue(bean: nilai, field: "nim")}" name="nim" class="form-control" placeholder="${message(code: "placeholder.nim")}"/>
                    <span class="text-danger"><g:renderErrors bean="${nilai}" field="nim"/></span>
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
                    <label><g:message code="table.filed.score.uts"/></label>
                    <g:textField value="${fieldValue(bean: nilai, field: "uts")}" name="uts" class="form-control" placeholder="${message(code: "placeholder.uts")}"/>
                    <span class="text-danger"><g:renderErrors bean="${nilai}" field="uts"/></span>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.score.uas"/> </label>
                    <g:textField value="${fieldValue(bean: nilai, field: "uas")}" name="uas" class="form-control" placeholder="${message(code: "placeholder.uas")}"/>
                    <span class="text-danger"><g:renderErrors bean="${nilai}" field="uas"/></span>
                </div>
                <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>