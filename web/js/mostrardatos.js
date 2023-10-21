
//ADMINISTRADOR
$(document).ready(function () {
    $(".edit-button").click(function () {
        var id = $(this).data("id");
        var nombre = $(this).data("nombre");
        var apellido = $(this).data("apellido");
        var dni = $(this).data("dni");
        var genero = $(this).data("genero");
        var edad = $(this).data("edad");
        var celular = $(this).data("celular");
        var correo = $(this).data("correo");

        $("#id-modal").val(id);
        $("#nombre-modal").val(nombre);
        $("#apellido-modal").val(apellido);
        $("#dni-modal").val(dni);
        $("#genero-modal").val(genero);
        $("#edad-modal").val(edad);
        $("#celular-modal").val(celular);
        $("#correo-modal").val(correo);
        // Otros campos aquí
    });
});

$(document).ready(function () {

    $('.delete-button').click(function () {

        var adminID = $(this).data('id');

        $('#id-delete-modal').val(adminID);

        $('#eliminarAdmin').modal('show');
    });


    $('#confirmarEliminar').click(function () {

        $('#deleteAdminForm').submit();
    });
});

//PARA EL BUS

$(document).ready(function () {
    $(".edit-button-bus").click(function () {
        var placa = $(this).data("id");
        var idtipo = $(this).data("idtipo");
        var tarjeta = $(this).data("tarjeta");
        var color = $(this).data("color");
        var marca = $(this).data("marca");
        var anio = $(this).data("anio");
        var modelo = $(this).data("modelo");
        var peso = $(this).data("peso");
        var altura = $(this).data("altura");
        var ancho = $(this).data("ancho");
        var asientos = $(this).data("asientos");

        $("#placa-modal").val(placa);
        $("#idtipo-modal").val(idtipo);
        $("#tarjeta-modal").val(tarjeta);
        $("#color-modal").val(color);
        $("#marca-modal").val(marca);
        $("#anio-modal").val(anio);
        $("#modelo-modal").val(modelo);
        $("#peso-modal").val(peso);
        $("#altura-modal").val(altura);
        $("#ancho-modal").val(ancho);
        $("#asientos-modal").val(asientos);
    });
});

$(document).ready(function () {

    $('.delete-button-bus').click(function () {

        var busID = $(this).data('id');

        $('#id-delete-modal').val(busID);

        $('#eliminarBus').modal('show');
    });


    $('#confirmarEliminar').click(function () {

        $('#deleteBusForm').submit();
    });
});

//CHOFER

$(document).ready(function () {
    $(".edit-button-chofer").click(function () {
        var id = $(this).data("id");
        var nombre = $(this).data("nombre");
        var apellido = $(this).data("apellido");
        var dni = $(this).data("dni");
        var genero = $(this).data("genero");
        var edad = $(this).data("edad");
        var celular = $(this).data("celular");
        var email = $(this).data("email");

        $("#id-modal").val(id);
        $("#nombre-modal").val(nombre);
        $("#apellido-modal").val(apellido);
        $("#dni-modal").val(dni);
        $("#genero-modal").val(genero);
        $("#edad-modal").val(edad);
        $("#celular-modal").val(celular);
        $("#email-modal").val(email);
        // Otros campos aquí
    });
});

$(document).ready(function () {

    $('.delete-button-chofer').click(function () {

        var busID = $(this).data('id');

        $('#id-delete-modal').val(busID);

        $('#eliminarChofer').modal('show');
    });


    $('#confirmarEliminar').click(function () {

        $('#deleteChoferForm').submit();
    });
});


