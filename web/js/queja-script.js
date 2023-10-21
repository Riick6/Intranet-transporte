//QUEJAS

$(document).ready(function () {
    $(".edit-button-queja").click(function () {
        var id = $(this).data("id");
        var asunto = $(this).data("asunto");
        var descripcion = $(this).data("descripcion");

        $("#id-modal").val(id);
        $("#asunto-modal").val(asunto);
        $("#descripcion-modal").val(descripcion);
    });
});

$(document).ready(function () {

    $('.delete-button-queja').click(function () {

        var quejaID = $(this).data('id');

        $('#id-delete-modal').val(quejaID);

        $('#eliminarQueja').modal('show');
    });


    $('#confirmarEliminar').click(function () {

        $('#deleteQuejaForm').submit();
    });
});



//TERMINAL

$(document).ready(function () {
    $(".edit-button-terminal").click(function () {
        var id = $(this).data("id");
        var estado = $(this).data("estado");
        var nombre = $(this).data("nombre");
        var direccion = $(this).data("direccion");
        
        $("#id-modal").val(id);
        $("#estado-modal").val(estado);
        $("#nombre-modal").val(nombre);
        $("#direccion-modal").val(direccion);
    });
});

$(document).ready(function () {

    $('.delete-button-terminal').click(function () {

        var idTerminal = $(this).data('id');

        $('#id-delete-modal').val(idTerminal);

        $('#eliminarTerminal').modal('show');
    });


    $('#confirmarEliminar').click(function () {

        $('#deleteTerminalForm').submit();
    });
});