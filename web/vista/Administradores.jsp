<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.*"%>
<%@page import="Modelo.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Conexion con = new Conexion();
    con.rs = con.smt.executeQuery("select id_administrador, nombre, apellido, dni, genero, edad, celular, correo from administrador; ");
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
                        <form name="formadmin" action="Administradores.jsp" method="POST">
                            <div class="container bg-white py-2 my-2 rounded">
                                <div class="h6">
                                    <i class="fas fa-bus fa-sm fa-fw mr-2 "></i>REGISTRAR ADMINISTRADOR
                                </div>
                                <hr class="mt-0">
                                <!-- Columnas-->
                                <div class="row">
                                    <!-- Columna de la imagen -->
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="row">
                                            <img src="../img/admi-icono.png" alt="Icono" class="img-fluid ">
                                        </div>
                                    </div>

                                    <!-- Columna DATOS -->
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3">
                                            <label for="dni-admi" class="form-label">DNI</label>
                                            <input type="text" name="dni" class="form-control" placeholder="Ingrese su DNI..." id="dni-admi" >
                                        </div>

                                        <div class="row">
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="nombre-admi" class="form-label" >Nombre</label>
                                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre..." id="nombre-admi">
                                                </div> 
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="apellido-admi" class="form-label" >Apellido</label>
                                                    <input type="text" name="apellido" class="form-control" placeholder="Apellido..." id="apellido-admi">
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="celular-admi" class="form-label" >Celular</label>
                                                    <input type="text" name="celular" class="form-control" placeholder="Celular..." id="celular-admi">
                                                </div> 
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-3">
                                                    <label for="edad-admi" class="form-label" >Edad</label>
                                                    <input type="text" name="edad" class="form-control" placeholder="Edad..." id="edad-admi">
                                                </div> 
                                            </div>
                                        </div>
                                        <input type="submit" name="exportar-admi" value="Exportar PDF" class="btn btn-danger mt-4 w-100"/>
                                    </div>

                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3">
                                            <label for="email-admi" class="form-label">Correo Electrónico</label>
                                            <input type="email" name="correo" class="form-control" id="email-admi" placeholder="correo@gmail.com">
                                        </div>
                                        <div class="mb-3">
                                            <label for="contra-admi" class="form-label">Contraseña</label>
                                            <input type="password" name="contra" class="form-control" placeholder="*****" id="contra-admi">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" >Sexo</label>
                                            <select name="genero" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                <option value="1">Masculino</option>
                                                <option value="2">Femenino</option>
                                            </select>

                                        </div>
                                        <input type="submit" name="guardar-admi" value="Guardar" class="btn btn-success mt-4 w-100"/>
                                    </div>
                                </div>
                            </div> 
                        </form>
                        <%
                            if (request.getParameter("guardar-admi") != null) {
                                String nombre = request.getParameter("nombre");
                                String apellido = request.getParameter("apellido");
                                String dni = request.getParameter("dni");
                                String genero = request.getParameter("genero");
                                String edad = request.getParameter("edad");
                                String celular = request.getParameter("celular");
                                String correo = request.getParameter("correo");
                                String contra = request.getParameter("contra");

                                if (nombre != null && apellido != null && dni != null && genero != null && edad != null && celular != null && correo != null && contra != null) {

                                    Administrador adm = new Administrador();
                                    adm.setNombre(nombre);
                                    adm.setApellido(apellido);
                                    adm.setDni(dni);
                                    adm.setSexo(genero);
                                    adm.setEdad(Integer.parseInt(edad));
                                    adm.setCelular(celular);
                                    adm.setCorreo(correo);
                                    adm.setContra(contra);

                                    CRUD crud = new CRUD();
                                    crud.InsertarAdministrador(adm);
                                    response.sendRedirect("Administradores.jsp");
                                } else {
                                    JOptionPane.showMessageDialog(null, "rellene todos los datos");
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
                                            <th>Correo</th>
                                            <th>Opciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% while (con.rs.next()) {%>
                                        <tr>
                                            <td class="text-center"><%=con.rs.getString("id_administrador")%> </td>
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
                                            <td><%=con.rs.getString("correo")%> </td>
                                            <td class="text-center">
                                                <button type="button" data-bs-toggle="modal" data-bs-target="#editarAdminModal" class="btn btn-success edit-button "
                                                        data-id="<%=con.rs.getString("id_administrador")%>"
                                                        data-nombre="<%=con.rs.getString("nombre")%>"
                                                        data-apellido="<%=con.rs.getString("apellido")%>"
                                                        data-dni="<%=con.rs.getString("dni")%>"
                                                        data-genero="<%=con.rs.getString("genero")%>"
                                                        data-edad="<%=con.rs.getInt("edad")%>"
                                                        data-celular="<%=con.rs.getString("celular")%>"
                                                        data-correo="<%=con.rs.getString("correo")%>">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button type="button" data-bs-toggle="modal" data-bs-target="#eliminarAdmin" data-id="<%=con.rs.getString("id_administrador")%>" class="btn btn-danger delete-button">
                                                    <i class="fas fa-trash"></i>
                                                </button>
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
                        <!-- MODAL PARA ELIMINAR -->           
                        <div class="modal" tabindex="-1" id="eliminarAdmin">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Confirmacion </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Estás seguro que deseas eliminarlo?
                                        <form id="deleteAdminForm" method="POST" action="../EliminarAdministrador">
                                            <input type="hidden" name="id-admin-delete" id="id-delete-modal" value="">
                                        </form>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-danger" id="confirmarEliminar">Eliminar</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- MODAL PARA EDITAR -->
                        <div class="modal" tabindex="-1" id="editarAdminModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Editar Administrador</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="editarAdminForm" method="POST" action="../EditarAdministradorServlet">
                                            <div class="mb-3">
                                                <label for="id-modal" class="form-label">ID</label>
                                                <input type="text" name="id-modal" readonly="" class="form-control" id="id-modal">
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="nombre-modal" class="form-label">Nombre</label>
                                                        <input type="text" name="nombre-modal" class="form-control" id="nombre-modal">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="apellido-modal" class="form-label">Apellido</label>
                                                        <input type="text" name="apellido-modal" class="form-control" id="apellido-modal">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="dni-modal" class="form-label">DNI</label>
                                                <input type="text" name="dni-modal" class="form-control" id="dni-modal">
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="genero-modal" class="form-label">Sexo</label>
                                                        <select name="genero-modal" class="form-control" id="genero-modal">
                                                            <option value="1">Masculino</option>
                                                            <option value="2">Femenino</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="mb-3">
                                                        <label for="edad-modal" class="form-label">Edad</label>
                                                        <input type="text" name="edad-modal" class="form-control" id="edad-modal">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="celular-modal" class="form-label">Celular</label>
                                                <input type="text" name="celular-modal" class="form-control" id="celular-modal">
                                            </div>
                                            <div class="mb-3">
                                                <label for="correo-modal" class="form-label">Correo</label>
                                                <input type="text" name="correo-modal" class="form-control" id="correo-modal">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <input type="submit" value="Guardar Cambios" form="editarAdminForm" class="btn btn-success"></input>
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
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
            <script src="../js/sb-admin-2.min.js"></script>
            <script src="../js/mostrardatos.js" type="text/javascript"></script>
</html>
