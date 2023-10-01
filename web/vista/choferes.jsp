
<%@page import="BaseDatos.Conexion"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="BaseDatos.CRUD"%>
<%@page import="Modelo.Chofer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Conexion con = new Conexion();
    con.rs = con.smt.executeQuery("select id_chofer,dni, nombre, apellido, genero, edad, celular, email from chofer; ");
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
                    <div class="sidebar-brand-text mx-3 my-1">Curious Agency </div>
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
                    <div class="container">
                        <form action="" method="POST">
                            <div class="container bg-white py-2 my-2 rounded">
                                <div class="h6">
                                    <i class="fas fa-drivers-license fa-sm fa-fw mr-2 "></i>REGISTRAR CHOFER
                                </div>
                                <hr class="mt-0">
                                <!-- Columnas-->
                                <div class="row">
                                    <!-- Columna de la imagen -->
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="row">
                                            <img src="../img/chofer.png" alt="Icono" class="img-fluid ">
                                        </div>
                                    </div>

                                    <!-- Columna DATOS -->
                                    <div class="col-lg-4 col-md-6 col-sm-12">

                                        <div class="mb-3">
                                            <label for="id-chofer" class="form-label">ID Chofer</label>
                                            <input type="text" name="id_chofer" class="form-control" placeholder="Ingrese el ID..." id="id-chofer" >
                                        </div>
                                        <div class="mb-3">
                                            <label for="dni-chofer" class="form-label">DNI</label>
                                            <input type="text" name="dni" class="form-control" placeholder="Ingrese su DNI..." id="dni-chofer" >
                                        </div>

                                        <div class="row">
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="nombre-chofer" class="form-label" >Nombre</label>
                                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre..." id="nombre-chofer">
                                                </div> 
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="apellido-chofer" class="form-label" >Apellido</label>
                                                    <input type="text" name="apellido" class="form-control" placeholder="Apellido..." id="apellido-chofer">
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="celular-chofer" class="form-label" >Celular</label>
                                                    <input type="text" name="celular" class="form-control" placeholder="Celular..." id="celular-chofer">
                                                </div> 
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="edad-chofer" class="form-label" >Edad</label>
                                                    <input type="text" name="edad" class="form-control" placeholder="Edad..." id="edad-chofer">
                                                </div> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3">
                                            <label for="email-chofer" class="form-label">Correo Electrónico</label>
                                            <input type="email" name="email" class="form-control" id="email-chofer" placeholder="correo@gmail.com">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" >Sexo</label>
                                            <select name="genero" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                <option value="1">Masculino</option>
                                                <option value="2">Femenino</option>
                                            </select>
                                            <input type="submit" name="guardar-chofer" value="Guardar" class="btn btn-success mt-4 w-100"/>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </form>
                        <%
                            if (request.getParameter("guardar-chofer") != null) {
                                String id_chofer = request.getParameter("id_chofer");
                                String nombre = request.getParameter("nombre");
                                String apellido = request.getParameter("apellido");
                                String dni = request.getParameter("dni");
                                String genero = request.getParameter("genero");
                                String edad = request.getParameter("edad");
                                String celular = request.getParameter("celular");
                                String email = request.getParameter("email");

                                if (id_chofer != null && nombre != null && apellido != null && dni != null && genero != null && edad != null && celular != null && email != null) {

                                    Chofer cho = new Chofer();
                                    cho.setId_chofer(id_chofer);
                                    cho.setNombre(nombre);
                                    cho.setApellido(apellido);
                                    cho.setDni(dni);
                                    cho.setSexo(genero);
                                    cho.setEdad(Integer.parseInt(edad));
                                    cho.setCelular(celular);
                                    cho.setEmail(email);

                                    CRUD crud = new CRUD();
                                    crud.InsertarChofer(cho);
                                    response.sendRedirect("Choferes.jsp");
                                }else {
                                JOptionPane.showMessageDialog(null, "Rellene todos los datos");
                            }
                            } 
                        %> 
                        <div class="container bg-white mt-3 py-2 rounded">
                            <div class="col-md-12">
                                <h2>Listado Administradores</h2>
                                <table class="table table-striped table-hover table-bordered text-center">
                                    <thead class="table-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>DNI</th>
                                            <th>Género</th>
                                            <th>Edad</th>
                                            <th>Celular</th>
                                            <th>Email</th>
                                            <th>Opciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% while (con.rs.next()) {%>
                                        <tr>
                                            <td class="text-center"><%=con.rs.getString("id_chofer")%> </td>
                                            <td><%=con.rs.getString("nombre")%> </td>
                                            <td><%=con.rs.getString("apellido")%> </td>
                                            <td><%=con.rs.getString("dni")%> </td>
                                            <%
                                                if ("1".equals(con.rs.getString("genero"))) { %>
                                            <td class="icon centrado" ><i class="fas fa-male fa-lg text-primary"></i></td>
                                                <%    } else { %>
                                            <td class="icon centrado" ><i class="fas fa-female fa-lg text-danger"></i></td>
                                                <%    }
                                                %>

                                            <td><%=con.rs.getInt("edad")%> </td>
                                            <td><%=con.rs.getString("celular")%> </td>
                                            <td><%=con.rs.getString("email")%> </td>
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