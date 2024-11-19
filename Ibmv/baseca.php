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
$numecar = $_POST['Nomcarrera'];
$duracio = $_POST['Duracion'];
$numateria = $_POST['Numaterias'];
$cordinar = $_POST['Coordinadorc'];

// Insertar datos en la tabla "registroaula"
$sqlc = "INSERT INTO carreras_ibm ( Nomcarrera, Duracion, Numaterias, Coordinadorc) VALUES ('$numecar', '$duracio', '$numateria', '$cordinar')";

if ($conn8->query($sqlc) === TRUE) {
    echo "Registro exitoso";
} else {
    echo "Error: " . $sqlc . "<br>" . $conn8->error;
}

// Cerrar la conexión
$conn8->close();
?>