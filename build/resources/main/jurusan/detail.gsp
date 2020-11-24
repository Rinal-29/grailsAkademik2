<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 15.24
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

    <h1 class="mb-3">Daftar Detail Jurusan</h1>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Tabel Mahasiswa dan Jurusan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="myTable" class="table table-bordered display">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Jurusan</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${mahasiswa}" var="mhs">
                        <tr>
                            <td class="text-center"></td>
                            <td>${mhs.nama}</td>
                            <td>${mhs.jurusan.nama}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
            </div>
        </div>
    </div>

<g:render template="/layouts/Footer"/>