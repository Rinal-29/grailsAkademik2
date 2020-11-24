<body class="hold-transition sidebar-mini">

<!-- Site wrapper -->
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a  href="${createLink(controller: "dashboard", action: "index", params: [lang: params.lang])}" class="nav-link">
                    <i class="nav-icon fas fa-home"></i>
                    <g:message code="navbar.home.name"/>
                </a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">

            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="nav-icon fas fa-language fa-lg"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header"><g:message code="navbar.language.list"/></span>
                    <div class="dropdown-divider"></div>
                    <a href="${createLink(controller: "${params.controller}", action: "${params.action}",params: [lang: "en"])}" class="nav-link">
                        <p>
                            English
                        </p>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="${createLink(controller: "${params.controller}", action: "${params.action}",params: [lang: "id"])}" class="nav-link">
                        <p>
                            Indonesia
                        </p>
                    </a>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="nav-icon fas fa-list"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">Menu</span>
                    <div class="dropdown-divider"></div>
                    <a href="${createLink(controller: "user", action: "index", params: [lang: params.lang ?: null])}" class="dropdown-item">
                        <i class="nav-icon fas fa-user"></i> <g:message code="sidebar.account.name"/>
                    </a>
                    <div class="dropdown-divider"></div>
                    <sec:ifLoggedIn>
                        <g:link controller="logout" class="dropdown-item bg-red">
                            <i class="fas fa-sign-out-alt"></i> LogOut
                        </g:link>
                    </sec:ifLoggedIn>
                    <div class="dropdown-divider"></div>
                    <a href="${createLink(controller: "dashboard", action: "index", params: [lang: params.lang])}" class="dropdown-item dropdown-footer">
                        <g:message code="navbar.see.all"/>
                    </a>
                </div>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->