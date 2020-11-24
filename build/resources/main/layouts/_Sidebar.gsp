<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link text-center">
        <span class="brand-text font-weight-light"><g:message code="navbar.brand.name"/> </span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->

        <nav class="mt-2" id="myTab">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="${createLink(controller: 'dashboard', action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-columns"></i>
                        <p>
                            <g:message code="sidebar.dashboard.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'mahasiswa',action: 'list', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            <g:message code="sidebar.student.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'dosen',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-chalkboard-teacher"></i>
                        <p>
                            <g:message code="sidebar.lecture.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'matakuliah',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-book-open"></i>
                        <p>
                            <g:message code="sidebar.courses.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'ruangan',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-school"></i>
                        <p>
                            <g:message code="sidebar.room.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'jurusan',action: 'index', params: [lang: params?.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-university"></i>
                        <p>
                            <g:message code="sidebar.major.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'penasehatAkademik',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class= "nav-icon fas fa-address-book"></i>
                        <p>
                            <g:message code="sidebar.academic.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'jadwal',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-clipboard-list"></i>
                        <p>
                            <g:message code="sidebar.schedule.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'nilai',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-book-reader"></i>
                        <p>
                            <g:message code="sidebar.score.name"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(controller: 'krs',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                        <i class="nav-icon fas fa-clipboard"></i>
                        <p>
                            <g:message code="sidebar.krs.name"/>
                        </p>
                    </a>
                </li>
                <sec:ifAllGranted roles="ROLE_ADMIN">
                    <li class="nav-item">
                        <a href="${createLink(controller: 'tahunAkademik',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                            <i class="nav-icon fas fa-calendar-alt"></i>
                            <p>
                                <g:message code="sidebar.year.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${createLink(controller: 'user',action: 'index', params: [lang: params.lang ?: null])}" class="nav-link">
                            <i class="nav-icon fas fa-user"></i>
                            <p>
                                <g:message code="sidebar.account.name"/>
                            </p>
                        </a>
                    </li>
                </sec:ifAllGranted>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">