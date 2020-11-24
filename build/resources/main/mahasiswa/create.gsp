<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 10.13
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

        <h1 class="mb-3"><g:message code="student.header.add"/> </h1>
        <g:if test="${flash.message}">
            <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
                <div class="message"><g:message code="input.error"/></div>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </g:if>

        <div class="card card-primary col-md-10">0
            <!-- form start -->
            <g:form name="form" action="save" role="form" controller="mahasiswa">
                <div class="card-body">
                    <div class="control-group form-group">
                        <label>Nim</label>
                        <g:textField value="${fieldValue(bean: mahasiswa, field: "nim")}" name="nim" class="form-control" placeholder="${message(code: "placeholder.nim")}"/>
                        <span class="text-danger"><g:renderErrors bean="${mahasiswa}" field="nim" /></span>
                    </div>
                    <div class="control-group form-group">
                        <label for="nama"><g:message code="table.field.name"/></label>
                        <input value="${fieldValue(bean: mahasiswa, field: "nama")}" id="nama" name="nama" class="form-control" placeholder="${message(code: "placeholder.name")}"/>
                        <span class="text-danger"><g:renderErrors bean="${mahasiswa}" field="nama"/></span>
                    </div>
                    <div class="form-group">
                        <label><g:message code="table.field.address"/> </label>
                        <g:textField value="${fieldValue(bean: mahasiswa, field: "alamat")}" name="alamat" class="form-control" placeholder="${message(code: "placeholder.address")}"/>
                    </div>
                    <div class="form-group">
                        <label><g:message code="table.field.date"/> </label>
                        <input type="date" name="tanggalLahir" class="form-control"/>
                        <span class="text-center"><g:renderErrors bean="${mahasiswa}" field="date" /></span>
                    </div>
                    <div class="form-group">
                        <label><g:message code="table.field.phone"/> </label>
                        <g:textField name="noTelp" value="${fieldValue(bean: mahasiswa, field: "noTelp")}" class="form-control" placeholder="${message(code: "placeholder.phone")}"/>
                        <span class="text-danger"><g:renderErrors bean="${mahasiswa}" field="noTelp"/></span>
                    </div>
                    <div class="form-group">
                        <label><g:message code="table.field.major"/> </label>
                        <select name="jurusan" class="custom-select">
                            <g:each in="${jurusan}" var="jur">
                                <option value=${jur.id}>${jur.nama}</option>
                            </g:each>
                        </select>
                    </div>
                    <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary" />
                </div>
                <!-- /.card-body -->
            </g:form>
        </div>

<g:render template="/layouts/Footer"/>