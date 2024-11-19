<?php
// Datos de conexión a la base de datos
$host = "localhost"; // Dirección del servidor de la base de datos
$dbname = "ibmv"; // Nombre de la base de datos
$user = "root"; // Nombre de usuario, cambiar si es necesario
$password = ""; // Contraseña, cambiar si es necesario

// Crear conexión
$conn7 = new mysqli($host, $user, $password, $dbname);

// Verificar conexión
if ($conn7->connect_error) {
    die("Conexión fallida: " . $conn7->connect_error);
}

// Obtener los datos del formulario
$numeroaul = $_POST['Numaulas'];
$capacida = $_POST['Capacidad'];
$ubicacio = $_POST['Ubicacion'];
$equipamiento = $_POST['Equipamiento'];

// Insertar datos en la tabla "registroaula"
$sql = "INSERT INTO registroaula (Numaulas, Capacidad, Ubicacion, Equipamiento) VALUES ('$numeroaul', '$capacida', '$ubicacio', '$equipamiento')";

if ($conn7->query($sql) === TRUE) {
    echo "Registro exitoso";
} else {
    echo "Error: " . $sql . "<br>" . $conn7->error;  
}

// Cerrar la conexión
$conn7->close();


// ESTO ES UN EXPERIMENTO



?>
