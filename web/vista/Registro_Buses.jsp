
<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.*"%>
<%@page import="Modelo.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Conexion con = new Conexion();
    con.rs = con.smt.executeQuery("select placa, id_tipo, tarjeta_circulacion, color, marca, año_fabricacion,"
            + "modelo, peso, altura, ancho, num_asientos FROM bus b ");
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
                                    <a class="nav-link active" data-toggle="tab" href="#registro-bus">REGISTRAR BUS</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#lista-buses">LISTA DE BUSES</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane active" id="registro-bus">
                                    <form name="formBus" action="Registro_Buses.jsp" method="POST">
                                        <div class="container bg-white py-2 my-2 rounded">
                                            <div class="h6">
                                                <i class="fas fa-bus fa-sm fa-fw mr-2 "></i>REGISTRAR ADMINISTRADOR
                                            </div>
                                            <hr class="mt-0">
                                            <!-- Columnas-->
                                            <div class="row">
                                                <!-- Columna de la imagen -->
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="row my-4">
                                                        <img src="../img/bus.png" alt="Icono" class="img-fluid ">
                                                    </div>
                                                    <input type="submit" name="guardar-bus" value="Guardar" class="btn btn-success mt-4 w-100"/>
                                                </div>

                                                <!-- Columna DATOS -->
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="mb-3">
                                                        <label for="tarjeta-circulacion" class="form-label">Tarjeta Circulación</label>
                                                        <input type="text" name="tarjeta-cir" class="form-control" placeholder="Ingrese el doc..." id="tarjeta-circulacion" >
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="palca" class="form-label" >Placa</label>
                                                                <input type="text" name="placa" class="form-control" placeholder="" id="placa">
                                                            </div> 
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="anio-fabri" class="form-label" >Año de fabricacion</label>
                                                                <input type="text" name="anio-fabri" class="form-control" placeholder="" id="anio-fabri">
                                                            </div> 
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="color" class="form-label" >Color</label>
                                                                <input type="text" name="color" class="form-control" placeholder="Color..." id="color">
                                                            </div> 
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="marca" class="form-label" >Marca</label>
                                                                <input type="text" name="marca" class="form-control" placeholder="marca..." id="marca">
                                                            </div> 
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="peso" class="form-label" >Peso</label>
                                                                <input type="text" name="peso" class="form-control" placeholder="" id="peso">
                                                            </div> 
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="altura" class="form-label" >Altura</label>
                                                                <input type="text" name="altura" class="form-control" placeholder="" id="altura">
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="mb-3">
                                                        <label class="form-label" >Tipo de Bus</label>
                                                        <select name="tipo-bus" class="form-control form-select-sm bg-light selector text-muted rounded" >
                                                            <%
                                                                Conexion con2 = new Conexion();
                                                                ResultSet tipo = con2.smt.executeQuery(
                                                                        "select id_tipo,nombre_tipo from tipo_bus;");
                                                                while (tipo.next()) {%>
                                                            <option value="<%=tipo.getString("id_tipo")%>">
                                                                <%=tipo.getString("nombre_tipo")%>                                                                    
                                                            </option> 
                                                            <%  }%>
                                                        </select>
                                                    </div>
                                                    <div class="">
                                                        <div class="mb-3">
                                                            <label for="modelo" class="form-label" >Modelo</label>
                                                            <input type="text" name="modelo" class="form-control" placeholder="Modelo..." id="modelo">
                                                        </div> 
                                                    </div>
                                                    <div class="mb-3">
                                                        <div class="">
                                                            <div class="mb-3">
                                                                <label for="asientos" class="form-label" >Numero de Asientos</label>
                                                                <input type="text" name="asientos" class="form-control" placeholder="Numero..." id="asientos">
                                                            </div> 
                                                        </div>
                                                        <div class="">
                                                            <div class="mb-3">
                                                                <label for="ancho" class="form-label" >Ancho</label>
                                                                <input type="text" name="ancho" class="form-control" placeholder="ancho..." id="ancho">
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </form>
                                </div>
                                <%
                                    if (request.getParameter("guardar-bus") != null) {
                                        String placa = request.getParameter("placa");
                                        String tipo_bus = request.getParameter("tipo-bus");
                                        String tarjeta = request.getParameter("tarjeta-cir");
                                        String color = request.getParameter("color");
                                        String marca = request.getParameter("marca");
                                        String anio = request.getParameter("anio-fabri");
                                        String modelo = request.getParameter("modelo");
                                        String peso = request.getParameter("peso");
                                        String altura = request.getParameter("altura");
                                        String ancho = request.getParameter("ancho");
                                        String asientos = request.getParameter("asientos");

                                        if (placa != null && tipo_bus != null && tarjeta != null && color != null && marca != null && anio != null && modelo != null && peso != null && altura != null && ancho != null && asientos != null) {

                                            Bus bus = new Bus();
                                            bus.setPlaca(placa);
                                            bus.setId_tipo(Integer.parseInt(tipo_bus));
                                            bus.setTarjeta_circulacion(tarjeta);
                                            bus.setColor(color);
                                            bus.setMarca(marca);
                                            bus.setAnio_fabricacion(Integer.parseInt(anio));
                                            bus.setModelo(modelo);
                                            bus.setPeso(Double.parseDouble(peso));
                                            bus.setAltura(Double.parseDouble(altura));
                                            bus.setAncho(Double.parseDouble(ancho));
                                            bus.setNum_asientos(Integer.parseInt(asientos));
                                            CRUD crud = new CRUD();
                                            crud.InsertarBus(bus);
                                            response.sendRedirect("Registro_Buses.jsp");
                                        } else {
                                            JOptionPane.showMessageDialog(null, "rellene todos los datos");
                                        }
                                    }
                                %> 
                                <div class="tab-pane" id="lista-buses">
                                    <div class="container bg-white mt-3 py-2 rounded">
                                        <input type="submit" name="guardar-admi" value="Exportar PDF" class="col-4 btn btn-danger mt-4 w-100"/>
                                        <div class="col-md-12">
                                            <h2>Buses</h2>
                                            <table class="table table-striped table-hover table-bordered text-center">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>Placa</th>
                                                        <th>Tipo Bus</th>
                                                        <th>Tarjeta Cir.</th>
                                                        <th>Color</th>
                                                        <th>Marca</th>
                                                        <th>Año Fabricación</th>
                                                        <th>Modelo</th>
                                                        <th>Peso</th>
                                                        <th>Altura</th>
                                                        <th>Ancho</th>
                                                        <th>Asientos</th>
                                                        <th>Opciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% while (con.rs.next()) {%>
                                                    <tr>
                                                        <td><%=con.rs.getString("placa")%> </td>
                                                        <td><%=con.rs.getString("id_tipo")%> </td>
                                                        <td><%=con.rs.getString("tarjeta_circulacion")%> </td>
                                                        <td><%=con.rs.getString("color")%> </td>
                                                        <td><%=con.rs.getString("marca")%> </td>
                                                        <td><%=con.rs.getInt("año_fabricacion")%> </td>
                                                        <td><%=con.rs.getString("modelo")%> </td>
                                                        <td><%=con.rs.getDouble("peso")%> </td>
                                                        <td><%=con.rs.getDouble("altura")%> </td>
                                                        <td><%=con.rs.getDouble("ancho")%> </td>
                                                        <td><%=con.rs.getInt("num_asientos")%> </td>

                                                        <td class="text-center ">
                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#editarBusModal" class="btn btn-success edit-button-bus "
                                                                    data-id="<%=con.rs.getString("placa")%>"
                                                                    data-idtipo="<%=con.rs.getString("id_tipo")%>"
                                                                    data-tarjeta="<%=con.rs.getString("tarjeta_circulacion")%>"
                                                                    data-color="<%=con.rs.getString("color")%>"
                                                                    data-marca="<%=con.rs.getString("marca")%>"
                                                                    data-anio="<%=con.rs.getInt("año_fabricacion")%>"
                                                                    data-modelo="<%=con.rs.getString("modelo")%>"
                                                                    data-peso="<%=con.rs.getDouble("peso")%>"
                                                                    data-altura="<%=con.rs.getDouble("altura")%>"
                                                                    data-ancho="<%=con.rs.getDouble("ancho")%>"
                                                                    data-asientos="<%=con.rs.getInt("num_asientos")%>">
                                                                <i class="fas fa-edit"></i>
                                                            </button>
                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#eliminarBus" data-id="<%=con.rs.getString("placa")%>" class="btn btn-danger delete-button-bus">
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
                                </div>
                                <!-- MODAL PARA ELIMINAR -->           
                                <div class="modal" tabindex="-1" id="eliminarBus">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Confirmacion </h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                Estás seguro que deseas eliminar el bus?
                                                <form id="deleteBusForm" method="POST" action="../EliminarBus">
                                                    <input type="hidden" name="id-bus-delete" id="id-delete-modal" value="">
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
                                <div class="modal" tabindex="-1" id="editarBusModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Editar BUS</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form id="editarBusForm" method="POST" action="../EditarBus">
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="placa-modal" class="form-label">Placa</label>
                                                                <input type="text" name="placa-modal" readonly="" class="form-control" id="placa-modal">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="tarjeta-modal" class="form-label">Tarjeta Circulacion</label>
                                                                <input type="text" name="tarjeta-modal" class="form-control" id="tarjeta-modal">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="idtipo-modal" class="form-label">Tipo de Bus</label>
                                                                <input type="text" name="idtipo-modal" class="form-control" id="idtipo-modal">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="color-modal" class="form-label">Color</label>
                                                                <input type="text" name="color-modal" class="form-control" id="color-modal">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="marca-modal" class="form-label">Marca</label>
                                                                <input type="text" name="marca-modal" class="form-control" id="marca-modal">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="anio-modal" class="form-label">Año de Fabricacoin</label>
                                                                <input type="text" name="anio-modal" class="form-control" id="anio-modal">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="modelo-modal" class="form-label">Modelo</label>
                                                                <input type="text" name="modelo-modal" class="form-control" id="modelo-modal">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="peso-modal" class="form-label">Peso</label>
                                                                <input type="text" name="peso-modal" class="form-control" id="peso-modal">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="altura-modal" class="form-label">Altura</label>
                                                                <input type="text" name="altura-modal" class="form-control" id="altura-modal">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="mb-3">
                                                                <label for="ancho-modal" class="form-label">Ancho</label>
                                                                <input type="text" name="ancho-modal" class="form-control" id="ancho-modal">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="asientos-modal" class="form-label">Asientos</label>
                                                        <input type="text" name="asientos-modal" class="form-control" id="asientos-modal">
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                                                <input type="submit" value="Guardar Cambios" form="editarBusForm" class="btn btn-warning"></input>
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
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="../js/sb-admin-2.min.js"></script>
        <script src="../js/mostrardatos.js" type="text/javascript"></script>
    </body>
</html>