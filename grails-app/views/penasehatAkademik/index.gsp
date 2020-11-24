<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.50
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>


    <h1 class="mb-3"><g:message code="advisor.header.name"/> </h1>
    <div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><g:message code="advisor.table.name"/></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="table.field.student"/></th>
                    <th><g:message code="table.field.advisor"/></th>
                    <th><g:message code="table.field.academic"/></th>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <th><g:message code="table.field.action"/></th>
                    </sec:ifAllGranted>
                </tr>
                </thead>
                <tbody>
                <g:each in="${penasehat}" var="pa">
                    <tr>
                        <td class="text-center"></td>
                        <td>${pa.mahasiswa.nama}</td>
                        <td>${pa.dosen.nama}</td>
                        <td>${pa.tahunAkademik.priode}</td>
                        <sec:ifAllGranted roles="ROLE_ADMIN">
                            <td class="text-center">
                                <g:link action="edit"  id="${pa.id}" params="[lang: params.lang]" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                                <g:link action="delete" id="${pa.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
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
                <g:link action="create" params="[lang: params.lang]" class="btn btn-primary float-right"><g:message code="advisor.button.name"/></g:link>
            </div>
        </sec:ifAllGranted>
    </div>
    </div>

<g:render template="/layouts/Footer"/>