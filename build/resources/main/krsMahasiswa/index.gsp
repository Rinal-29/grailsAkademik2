<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 24/11/20
  Time: 13.01
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="krs.header.name"/>, <sec:username/> </h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><g:message code="krs.table.name"/> </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="table.filed.courses"/> </th>
                    <th><g:message code="table.field.sks"/> </th>
                    <th><g:message code="table.field.academic"/> </th>
                    <th><g:message code="table.field.action"/> </th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listKrs}" var="krs">
                    <tr>
                        <td class="text-center"></td>
                        <td>${krs.mataKuliah.namaMatkul}</td>
                        <td>${krs.mataKuliah.sks}</td>
                        <td>${krs.tahunAkademik.priode}</td>
                        <td class="text-center">
                            <g:link action="edit"  id="${krs.id}" params="[lang: params.lang]" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                            <g:link action="delete" id="${krs.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            <g:link action="create" params="[lang: params.lang]" class="btn btn-primary float-right"><g:message code="krs.button.name"/> </g:link>
        </div>
    </div>
</div>

<g:render template="/layouts/Footer"/>