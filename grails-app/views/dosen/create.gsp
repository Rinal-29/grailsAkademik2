<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 15.41
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

    <h1 class="mb-3"><g:message code="lecturer.header.add"/> </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
            <div class="message">${flash.message} </div>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </g:if>

    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form name="form" action="save" role="form">
            <div class="card-body">
                <div class="form-group">
                    <label>Nip</label>
                    <g:textField value="${fieldValue(bean: dosen, field: "nip")}" name="nip" class="form-control" placeholder="${message(code: "placeholder.nip")}"/>
                    <span class="text-danger"><g:renderErrors bean="${dosen}" field="nip" /></span>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.name"/> </label>
                    <g:textField name="nama" class="form-control" placeholder="${message(code: "placeholder.name")}"/>
                    <span class="text-danger"><g:renderErrors bean="${dosen}" field="nama" /></span>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.address"/> </label>
                    <g:textField name="alamat" class="form-control" placeholder="${message(code: "placeholder.address")}"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.major"/> </label>
                    <select name="jurusan" class="custom-select">
                        <g:each in="${jurusan}" var="jur">
                            <option value="${jur.id}">${jur.nama}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>

<g:render template="/layouts/Footer"/>