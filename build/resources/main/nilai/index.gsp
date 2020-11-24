<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.25
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>


    <h1 class="mb-3"><g:message code="score.header.name"/></h1>
        <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><g:message code="score.table.name"/></h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="myTable" class="table table-bordered display">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th><g:message code="table.field.name"/></th>
                        <th>Nim</th>
                        <th><g:message code="table.filed.courses"/></th>
                        <th><g:message code="table.filed.score.uts"/></th>
                        <th><g:message code="table.field.score.uas"/></th>
                        <sec:ifAllGranted roles="ROLE_ADMIN">
                            <th><g:message code="table.field.action"/></th>
                        </sec:ifAllGranted>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listNilai}" var="nilaiMhs">
                        <tr>
                            <td class="text-center"></td>
                            <td>${nilaiMhs.nama}</td>
                            <td>${nilaiMhs.nim}</td>
                            <td>${nilaiMhs.mataKuliah.namaMatkul}</td>
                            <td>${nilaiMhs.uts}</td>
                            <td>${nilaiMhs.uas}</td>
                            <sec:ifAllGranted roles="ROLE_ADMIN">
                                <td class="text-center">
                                    <g:link action="edit"  id="${nilaiMhs.id}" params="[lang: params.lang]" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                                    <g:link action="delete" id="${nilaiMhs.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
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
                    <g:link action="create" params="[lang: params.lang]" class="btn btn-primary float-right"><g:message code="score.button.name"/></g:link>
                </div>
            </sec:ifAllGranted>
        </div>
    </div>

<g:render template="/layouts/Footer"/>