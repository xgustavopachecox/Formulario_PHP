<?php
include 'conexao.php';


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['name'];
    $email = $_POST['email'];
    $Whatsapp = $_POST['Whatsapp'];
    $password = $_POST['password'];
    $date = $_POST['date'];

    $sql = "INSERT INTO cadastro (nome, email, datanascimento, senha, whatsapp, datalog) VALUES (?, ?, ?, ?, ?, NOW())";

    $statement = $mysql->prepare($sql);

    if ($statement === false) {
        echo ("erro para conectar");
    }

    $statement->bind_param("sssss", $nome, $email, $date, $password, $Whatsapp);

    try {
        $statement->execute();
        header("Location: https://www.nknbank.com.br/");
        exit();
    } catch (mysqli_sql_exception $e) {
        if ($e->getCode() == 1062) { 
            header("Location: mensagemEmail.php");
        } else {
            header("Location: mensagem.php");
        }
        exit();
    }

    $statement->close();
    $mysql->close();
}


// enviarEmail($email);

// function enviarEmail($email){
//     $destinatario = "gustavocpachecos@gmail.com";
//     $assunto = "cadastro no banco de dados";
//     $corpoTexto = "Seu cadastro foi efetuado com sucesso no nosso banco de dados";    

//     $cabeca = "From: email@tal"."\n"."Reply-to: ".$email."\n"."X=Mailer:PHP/".phpversion();

//     if(mail($destinatario,$assunto,$corpoTexto,$cabeca)){
//         echo("email enviado");
//     }else{
//         echo("houve um problema ao enviar o email");
//     }

// }



?>