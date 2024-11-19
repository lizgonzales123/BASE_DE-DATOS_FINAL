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
$nombree = $_POST['Nombres'];
$apellidola = $_POST['Apellidop'];
$apellidomat = $_POST['Apellidom'];
$cargo = $_POST['Cargo'];
$coreo = $_POST['correo'];


// Insertar datos en la tabla 
$sqlc = "INSERT INTO administrativos (Nombres, Apellidop, Apellidom, Cargo, correo) VALUES ('$nombree ', '$apellidola', '$apellidomat', '$cargo', '$coreo')";

if ($conn8->query($sqlc) === TRUE) {
    echo "Registro exitoso";
} else {
    echo "Error: " . $sqlc . "<br>" . $conn8->error;
}

// Cerrar la conexión
$conn8->close();
?>
