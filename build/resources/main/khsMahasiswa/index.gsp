<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 24/11/20
  Time: 16.29
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
                    <th>Mata Kuliah</th>
                    <th>SKS</th>
                    <th>Nilai UTS</th>
                    <th>Nilai UAS</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listNilai}" var="nilai">
                    <tr>
                        <td class="text-center"></td>
                        <td>${nilai.mataKuliah.namaMatkul}</td>
                        <td>${nilai.mataKuliah.sks}</td>
                        <td>${nilai.uts}</td>
                        <td>${nilai.uas}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    <!-- /.card-body -->
    </div>
</div>

<g:render template="/layouts/Footer"/>