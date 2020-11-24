<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.25
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="student.header.name"/> </h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><g:message code="student.table.name"/> </h3>
        </div>

        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Nim</th>
                    <th><g:message code="table.field.name"/></th>
                    <th><g:message code="table.field.address"/></th>
                    <th><g:message code="table.field.date"/> </th>
                    <th><g:message code="table.field.phone"/></th>
                    <th><g:message code="table.field.major"/> </th>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <th><g:message code="table.field.action"/> </th>
                    </sec:ifAllGranted>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${mahasiswa}" var="mhs">
                        <tr>
                            <td class="text-center"></td>
                            <td>${mhs.nim}</td>
                            <td>${mhs.nama}</td>
                            <td>${mhs.alamat}</td>
                            <td>${mhs.tanggalLahir}</td>
                            <td>${mhs.noTelp}</td>
                            <td>${mhs.jurusan.nama}</td>
                            <sec:ifAllGranted roles="ROLE_ADMIN">
                                <td class="text-center">
                                    <a href="${createLink(controller: "${params.controller}", action: "edit" , params: [lang: params.lang, id: mhs.id])}" class="btn btn-warning btn-sm">
                                        <i class="far fa-edit"></i>
                                    </a>
                                    <g:link action="delete" id="${mhs.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                                </td>
                            </sec:ifAllGranted>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <div class="card-footer clearfix">
                <a href="${createLink(controller: "${params.controller}", action: "create" ,params: [lang: params.lang])}" class="btn btn-primary float-right">
                   <g:message code="student.button.name"/>
                </a>
            </div>
        </sec:ifAllGranted>
    </div>
</div>

<g:render template="/layouts/Footer"/>