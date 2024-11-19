<?php
// Datos de conexión a la base de datos
$host = "localhost"; // Dirección del servidor de la base de datos
$dbname = "ibmv"; // Nombre de la base de datos
$user = "root"; // Nombre de usuario, cambiar si es necesario
$password = ""; // Contraseña, cambiar si es necesario

$conn8 = new mysqli($host, $user, $password, $dbname);

// Verificar conexión
if ($conn8->connect_error) {
    die("Conexión fallida: " . $conn8->connect_error);
}

// Obtener los datos del formulario
$nombre = $_POST['Nombre'];
$apellidol = $_POST['Apellidop'];
$apellidoma = $_POST['Apellidom'];
$asigna = $_POST['Carrera'];
$coreo = $_POST['correo'];
$fecha = $_POST['Nfecha'];

// Insertar datos en la tabla "registroaula"
$sqlc = "INSERT INTO registrostudy ( Nombre, Apellidop, Apellidom, Carrera, correo, Nfecha) VALUES ('$nombre', '$apellidol', '$apellidoma', '$asigna', '$coreo', '$fecha')";

if ($conn8->query($sqlc) === TRUE) {
    echo "Registro exitoso";
} else {
    echo "Error: " . $sqlc . "<br>" . $conn8->error;
}

// Cerrar la conexión
$conn8->close();
?>