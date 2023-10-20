<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.*"%>
<%@page import="Modelo.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Conexion con = new Conexion();
    con.rs = con.smt.executeQuery("SELECT id_estado, id_ruta, (SELECT nombre_terminal FROM terminal WHERE id_terminal = terminal_inicial) "
            + "AS terminal_inicial, (SELECT nombre_terminal FROM terminal WHERE id_terminal = terminal_final) "
            + "AS terminal_final FROM ruta; ");
%>


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
                    <div class="container ">
                        <div class="container bg-white rounded">
                            <ul class="nav nav-tabs my-3">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#registro-ruta">Agregar Ruta</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#lista-rutas">Terminales de Ruta</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane active" id="registro-ruta">
                                    <div class="container">
                                        <form name="formRuta" action="Rutas.jsp" method="POST">
                                            <div class="container bg-white py-2 my-2 rounded">
                                                <div class="h6">
                                                    <i class="fas fa-bus fa-sm fa-fw mr-2 "></i>REGISTRAR RUTA
                                                </div>
                                                <hr class="mt-0">
                                                <!-- Columnas-->
                                                <div class="row">
                                                    <!-- Columna de la imagen -->
                                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                                        <div class="row">
                                                            <img src="../img/ruta.png" alt="Icono" class="img-fluid w-75">
                                                        </div>
                                                    </div>
                                                    <!-- Columna DATOS -->
                                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                                        <div class="mb-3">
                                                            <label for="id-ruta" class="form-label">ID</label>
                                                            <input type="text" name="id-ruta" class="form-control" placeholder="Ingrese el ID..." id="id-ruta" >
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label" >Estado</label>
                                                            <select name="estado-ruta" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                                <%
                                                                    Conexion con2 = new Conexion();
                                                                    ResultSet Estado = con2.smt.executeQuery(
                                                                            "select id_estado,descripcion from estado;");
                                                                    while (Estado.next()) {%>
                                                                <option value="<%=Estado.getString("id_estado")%>">
                                                                    <%=Estado.getString("descripcion")%>                                                                    
                                                                </option> 
                                                                <%  }  %>
                                                            </select>
                                                        </div>
                                                            <input type="submit" name="exportar-ruta" value="Exportar PDF" class=" btn btn-danger mt-4 w-100"/>
                                                    </div>
                                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                                        <div class="mb-3">
                                                            <label class="form-label" >Terminal Inicial</label>
                                                            <select name="ter-inicial" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                                <%
                                                                    Conexion con3 = new Conexion();
                                                                    ResultSet terminal2 = con3.smt.executeQuery(
                                                                            "select id_terminal,nombre_terminal from terminal;");
                                                                    while (terminal2.next()) {%>
                                                                <option value="<%=terminal2.getString("id_terminal")%>">
                                                                    <%=terminal2.getString("nombre_terminal")%>                                                                    
                                                                </option> 
                                                                <%  }  %>
                                                            </select>
                                                            
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label" >Terminal Final</label>
                                                            <select name="ter-final" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                                <%
                                                                    Conexion con5 = new Conexion();
                                                                    ResultSet terminal = con5.smt.executeQuery(
                                                                            "select id_terminal,nombre_terminal from terminal;");
                                                                    while (terminal.next()) {%>
                                                                <option value="<%=terminal.getString("id_terminal")%>">
                                                                    <%=terminal.getString("nombre_terminal")%>                                                                    
                                                                </option> 
                                                                <%  }  %>
                                                            </select>
                                                        </div>
                                                        
                                                        <input type="submit" name="guardar-ruta" value="Guardar" class="btn btn-success mt-4 w-100"/>
                                                    </div>
                                                </div>
                                            </div> 
                                        </form>
                                        <%
                                            if (request.getParameter("guardar-ruta") != null) {
                                                String id_ruta = request.getParameter("id-ruta");
                                                String terInicial = request.getParameter("ter-inicial");
                                                String terFinal = request.getParameter("ter-final");
                                                String estado = request.getParameter("estado-ruta");

                                                if (id_ruta != null && terInicial != null && terFinal != null && estado != null) {

                                                    Ruta rut = new Ruta();
                                                    rut.setId_ruta(Integer.parseInt(id_ruta));
                                                    rut.setTerminal_inicial(Integer.parseInt(terInicial));
                                                    rut.setTerminal_final(Integer.parseInt(terFinal));
                                                    rut.setId_estado(Integer.parseInt(estado));

                                                    CRUD crud = new CRUD();
                                                    crud.InsertarRuta(rut);
                                                    response.sendRedirect("Rutas.jsp");
                                                } else {
                                                    JOptionPane.showMessageDialog(null, "rellene todos los datos");
                                                }
                                            }
                                        %> 
                                        <div class="container bg-white mt-3 py-2 rounded">
                                            <div class="col-md-12">
                                                <h2>Rutas</h2>
                                                <table class="table table-striped table-hover table-bordered text-center">
                                                    <thead class="table-dark">
                                                        <tr>
                                                            <th>Estado</th>
                                                            <th>ID</th>
                                                            <th>Terminal Inicial</th>
                                                            <th>Terminal Final</th>
                                                            <th>Opciones</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% while (con.rs.next()) {%>
                                                        <tr>
                                                            <td class="icon centrado">
                                                                <button class="estado-button btn
                                                                        <% if (con.rs.getString("id_estado").equals("1")) { %>
                                                                        btn-success
                                                                        <% } else { %>
                                                                        btn-danger
                                                                        <% }%>"
                                                                        >
                                                                    <%= con.rs.getString("id_estado").equals("1") ? "Activo" : "Inactivo"%>
                                                                </button>
                                                            </td>
                                                            <td class="text-center"><%=con.rs.getString("id_ruta")%> </td>
                                                            <td class="text-center"><%=con.rs.getString("terminal_inicial")%> </td>
                                                            <td class="text-center"><%=con.rs.getString("terminal_final")%> </td>

                                                            <td class="text-center">
                                                                <button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button>
                                                                <button type="button" class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                                            </td>
                                                        </tr>
                                                        <% }%>
                                                    </tbody>
                                                </table>
                                                <div class="pagination-container d-flex justify-content-between align-items-center">
                                                    <div class="pagination-info">
                                                        Mostrando página 1 de 4
                                                    </div>
                                                    <nav aria-label="Paginacion-control">
                                                        <ul class="pagination">
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">Previous</a>
                                                            </li>
                                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                            <li class="page-item active" aria-current="page">
                                                                <a class="page-link" href="#">2</a>
                                                            </li>
                                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                            <li class="page-item">
                                                                <a class="page-link" href="#">Next</a>
                                                            </li>
                                                        </ul>
                                                    </nav>
                                                </div>
                                            </div> 
                                        </div>    
                                    </div>
                                </div>
                                <div class="tab-pane" id="lista-rutas">
                                    <%
                                        Conexion con7 = new Conexion();
                                        con7.rs = con7.smt.executeQuery("SELECT r.id_ruta, ti.nombre_terminal AS terminal_inicial, tf.nombre_terminal AS terminal_final, "
                                                + "GROUP_CONCAT(t.nombre_terminal ORDER BY tr.orden SEPARATOR ' - ') AS Terminales "
                                                + "FROM ruta r "
                                                + "INNER JOIN terminal_ruta tr ON r.id_ruta = tr.id_ruta "
                                                + "INNER JOIN terminal t ON tr.id_terminal = t.id_terminal "
                                                + "INNER JOIN terminal ti ON r.terminal_inicial = ti.id_terminal "
                                                + "INNER JOIN terminal tf ON r.terminal_final = tf.id_terminal "
                                                + "GROUP BY r.id_ruta");
                                    %>
                                    <div class="container bg-white mt-3 py-2 rounded">
                                        <div class="col-md-12">
                                            <input type="submit" name="exportar-rutater" value="Exportar PDF" class="btn btn-danger mt-4 w-100"/>
                                            <div class="h2 my-3">
                                                RUTAS
                                            </div>
                                            <table class="table table-striped table-hover table-bordered text-center">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>Ruta</th>
                                                        <th>Terminal Inicial</th>
                                                        <th>Terminal Final</th>
                                                        <th>Terminales</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% while (con7.rs.next()) {%>
                                                    <tr>
                                                        <td class="text-center"><%=con7.rs.getString("id_ruta")%> </td>
                                                        <td class="text-center"><%=con7.rs.getString("terminal_inicial")%> </td>
                                                        <td class="text-center"><%=con7.rs.getString("terminal_final")%> </td>
                                                        <td class="text-center">
                                                            <div class="">
                                                                <%=con7.rs.getString("Terminales")%>
                                                            </div>
                                                        </td>
                                                        
                                                    </tr>
                                                    <% }%>
                                                </tbody>
                                            </table>
                                            <div class="pagination-container d-flex justify-content-between align-items-center">
                                                <div class="pagination-info">
                                                    Mostrando página 1 de 4
                                                </div>
                                                <nav aria-label="Paginacion-control">
                                                    <ul class="pagination">
                                                        <li class="page-item">
                                                            <a class="page-link" href="#">Previous</a>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                        <li class="page-item active" aria-current="page">
                                                            <a class="page-link" href="#">2</a>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                        <li class="page-item">
                                                            <a class="page-link" href="#">Next</a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div> 
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
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