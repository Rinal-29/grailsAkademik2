<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 09.34
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Tahun Akademik</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="academy.header.name"/> </h1>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><g:message code="academy.table.name"/> </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th><g:message code="table.field.academic"/> </th>
                        <th><g:message code="table.field.action"/> </th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listTA}" var="ta">
                        <tr>
                            <td>${ta.priode}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${ta.id}" params="[lang:params.lang]" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                                <g:link action="delete" id="${ta.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:link action="create" params="[lang: params.lang]" class="btn btn-primary float-right"><g:message code="academy.button.name"/> </g:link>
            </div>
        </div>
    </div>
</body>
</html>