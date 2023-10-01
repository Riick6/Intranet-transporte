
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Desarrollo WEB</title>

        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link href="../css/css-boostrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.min.css" rel="stylesheet">
        <link href="../css/tan_pro.css" rel="stylesheet" type="text/css"/>
    </head>

    <body id="page-top">
        <div id="wrapper">
            <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../intranet.jsp">
                    <div class="sidebar-brand-icon ">
                        <img src="../img/intranet_icono.png" alt="Icono" class="img-fluid ">
                    </div>
                    <div class="sidebar-brand-text mx-3 my-1">Curious Agency</div>
                </a>

                <hr class="sidebar-divider my-1">

                <li class="nav-item active">
                    <a class="nav-link" href="../intranet.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <hr class="sidebar-divider">

                <div class="sidebar-heading">
                    Agencia
                </div>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                       aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Procesos</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-dark py-2 collapse-inner rounded">
                            <a class="collapse-item text-white" href="Venta_Boletos.jsp">Venta de Boletos</a>
                            <a class="collapse-item text-white" href="Horarios.jsp">Horarios de Transporte</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-book"></i>
                        <span>Registros</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-dark py-2 collapse-inner rounded">
                            <a class="collapse-item text-white" href="Registro_Buses.jsp">Registrar Buses</a>
                            <a class="collapse-item text-white" href="Asignar_Buses.jsp">Asignar Buses</a>
                            <a class="collapse-item text-white" href="Registro_Terminal.jsp">Registrar Terminal</a>
                            <a class="collapse-item text-white" href="Rutas.jsp">Rutas</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="tipo_bus.jsp">
                        <i class="fas fa-fw fa-bus"></i>
                        <span>Tipos de Buses</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-id-card"></i>
                        <span>Personal</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-dark py-2 collapse-inner rounded">
                            <a class="collapse-item text-white" href="Administradores.jsp">Administradores</a>
                            <a class="collapse-item text-white" href="Choferes.jsp">Choferes</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Quejas.jsp">
                        <i class="fas fa-fw fa-exclamation-triangle"></i>
                        <span>Quejas y Reclamos</span></a>
                </li>

                <hr class="sidebar-divider d-none d-md-block">

                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">
                        <i class="fas fa-fw fa-sign-out-alt"></i>
                        <span>Salir</span></a>
                </li>
            </ul>

            <div id="content-wrapper" class="d-flex flex-column">
                <div id="content">
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <div class="sidebar-brand-text mx-3">Curious Agency S.A</div>

                        <ul class="navbar-nav ml-auto">

                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Jhovan Camacho</span>
                                    <img class="img-profile rounded-circle" src="../img/undraw_profile.svg">
                                </a>

                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="Perfil.jsp">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Perfil
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="nav-link" href="Login.jsp">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        <span>Salir</span></a>                     
                                </div>
                            </li>

                        </ul>

                    </nav>

                    <!-- CONTENIDO DE LA VENTANA -->
                    <H1>TIPO BUS</H1>
                    <!-- FINALIZA EL CONTENIDO XD -->

                </div>

                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Proyecto UTP &copy; Desarrollo WEB</span>
                        </div>
                    </div>
                </footer>

            </div>

        </div>

        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="../js/sb-admin-2.min.js"></script>
    </body>
</html>