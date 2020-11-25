<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 24/11/20
  Time: 17.44
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="schedule.header.name"/></h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"><g:message code="schedule.table.name"/></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="sidebar.lecture.name"/></th>
                    <th><g:message code="table.filed.courses"/></th>
                    <th><g:message code="table.filed.day"/></th>
                    <th><g:message code="table.field.time"/></th>
                    <th><g:message code="sidebar.year.name"/></th>
                    <th><g:message code="table.field.room"/></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listJadwal}" var="jadwal">
                    <tr>
                        <td class="text-center"></td>
                        <td>${jadwal.dosen.nama}</td>
                        <td>${jadwal.mataKuliah.namaMatkul}</td>
                        <td>${jadwal.hari}</td>
                        <td>${jadwal.jam}</td>
                        <td>${jadwal.tahunAkademik.priode}</td>
                        <td>${jadwal.ruangan.namaRuangan}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    <!-- /.card-body -->
    </div>
</div>

<g:render template="/layouts/Footer"/>