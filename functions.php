<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

if (isset($_POST['accion'])) {
    switch ($_POST['accion']) {

        case 'saveForm':
            saveForm();
            break;
    }
}

function saveForm()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO productos (descripcion, existencia, precioVenta, id_cat) 
    VALUES ('$descripcion','$existencia','$precioVenta','$id_cat')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}
