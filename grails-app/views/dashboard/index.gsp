<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
    <meta name="layout" content="main">
</head>

<body>
    <h1 class="mb-2"><g:message code="header.dashboard.name"/> </h1>
    <sec:ifLoggedIn>
        <h5 class="mb-5"><g:message code="header.welcome.name"/>, <sec:username/></h5>
    </sec:ifLoggedIn>
    <div class="row">
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-info">
                <div class="inner">
                    <p><g:message code="sidebar.student.name"/> </p>

                    <h3>${mahasiswa}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-users"></i>
                </div>
                <a href="${createLink(controller: "mahasiswa", action: "list", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-success">
                <div class="inner">
                    <p><g:message code="sidebar.lecture.name"/> </p>

                    <h3>${dosen}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-chalkboard-teacher"></i>
                </div>
                <a href="${createLink(controller: "dosen", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
                <div class="inner">
                    <p><g:message code="sidebar.courses.name"/> </p>

                    <h3>${matkul}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-book-open"></i>
                </div>
                <a href="${createLink(controller: "matakuliah", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-danger">
                <div class="inner">
                    <p><g:message code="sidebar.room.name"/> </p>

                    <h3>${ruangan}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-school"></i>
                </div>
                <a href="${createLink(controller: "ruangan", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-danger">
                <div class="inner">
                    <p><g:message code="sidebar.major.name"/> </p>

                    <h3>${jurusan}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-university"></i>
                </div>
                <a href="${createLink(controller: "jurusan", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-warning">
                <div class="inner">
                    <p><g:message code="sidebar.academic.name"/> </p>

                    <h3>${penasehat}</h3>
                </div>
                <div class="icon">
                    <i class= "nav-icon fas fa-address-book"></i>
                </div>
                <a href="${createLink(controller: "penasehatAkademik", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-success">
                <div class="inner">
                    <p><g:message code="sidebar.schedule.name"/> </p>

                    <h3>${jadwal}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-clipboard-list"></i>
                </div>
                <a href="${createLink(controller: "jadwal", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <p><g:message code="sidebar.year.name"/> </p>

                        <h3>${ta}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-calendar-alt"></i>
                    </div>
                    <a href="${createLink(controller: "tahunAkademik", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
        </sec:ifAllGranted>
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-info">
                <div class="inner">
                    <p><g:message code="sidebar.score.name"/> </p>

                    <h3>${nilai}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-book-reader"></i>
                </div>
                <a href="${createLink(controller: "nilai", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-success">
                <div class="inner">
                    <p><g:message code="sidebar.krs.name"/> </p>

                    <h3>${krs}</h3>
                </div>
                <div class="icon">
                    <i class="nav-icon fas fa-clipboard"></i>
                </div>
                <a href="${createLink(controller: "krs", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                    <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
    </div>
</body>
</html>