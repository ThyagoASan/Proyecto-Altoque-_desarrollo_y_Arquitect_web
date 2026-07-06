<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Registrarse</title>
        <link rel="stylesheet" href="css.css" />
    </head>
    <body class="body-registrarse">
        <form action="../../backend/registro.php" method="POST" class="formulario1">
            <h2>Formulario Registrarse</h2>
            <label class="label1" for="nombre_completo">Nombre Completo</label>
            <input
                class="input1"
                name="nombre"
                type="text"
                id="nombre_completo_registro"
                required
                minlength="6"
                placeholder="Pedro Ramirez"
            />
            <label class="label1">Email</label>
            <input
                class="input1"
                name="email"
                id="email_registro"
                type="email"
                required
                placeholder="PedroRamirez@gmail.com"
            />

            <label class="label2"
                >Contraseña
                <input
                    name="contraseña"
                    class="input1"
                    id="contraseña_registro"
                    type="password"
                    required
                    minlength="6"
                    placeholder="Pepito2605"
            /></label>
            <button class="botones1" type="submit">Registrarse</button>
            <button class="botones1" type="button">
                <a class="login-link" href="sesion.php">Iniciar Sesión</a>
            </button>
            <button class="botones1" type="button">
                <a class="inicio-link" href="pagina1.php">Volver Inicio</a>
            </button>
            <?php 
            if(isset($_GET["error_usuario_existente"]) and  $_GET['error_usuario_existente']==1){
                echo "el correo ya existe.";
            }
            ?>
        </form>
    </body>
</html>
