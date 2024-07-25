<?php
    $hostname = "localhost";
    $bancoDeDados = "formulario";
    $usuario = "root";
    $senha = "";

    $mysql = new mysqli($hostname, $usuario, $senha, $bancoDeDados);

    if($mysql->connect_errno){
        echo("erro ao conectar  ". $mysql->connect_errno);
    }
?>
    