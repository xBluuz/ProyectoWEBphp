<?php
include("./conexion_bd.php");
session_start();

if (!empty($_POST['aceptar'])) {
    if (empty($_POST['usuario']) and empty($_POST['contraseña'])) {
        echo "Los Campos estas vacios";
    } else {
        $usuario = $_POST["usuario"];
        $contraseña = $_POST["contraseña"];


        $stmt = $conexion->prepare("SELECT * FROM login WHERE NombreUser=? AND Password=?");

        $stmt->bind_param('ss', $usuario, $contraseña);
        $stmt->execute();

        $result = $stmt->get_result();
        if ($datos = $result->fetch_object()) {
            $nivel = $datos->Nivel;
            $_SESSION['login'] = True;
            $_SESSION['id'] = $datos->idUser;
            if ($nivel === 1) {
                header('Location: ./PanelAdmin/PanelAdmin.php');
            } else if ($nivel === 2) {
                header('Location: ./PanelDepartamento/PanelDepartamento.php');
            } else if ($nivel === 3) {
                header('Location: ./PanelUser/PanelUser.php');
            } else {
                echo  '<div class="contenedorAlerta">
                <div class="alerta1">
            
                    <div class="alertaTop">
                    <div href="" class="X"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-x-lg" viewBox="0 0 16 16">
                            <path
                                d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                        </svg>
                    </div>
                    </div>
                    Acceso Denegado
                </div>
                </div>';
            }

            
        } else {
            echo ' <div class="contenedorAlerta">
            <div class="alerta1">
        
                <div class="alertaTop">
                <div href="" class="X"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-x-lg" viewBox="0 0 16 16">
                        <path
                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                    </svg>
                </div>
                </div>
                Acceso Denegado
            </div>
            </div>';
        }
    }
}
?>