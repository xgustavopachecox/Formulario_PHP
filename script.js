const form = document.getElementById("form");


form.addEventListener("submit", (e)=>{
    e.preventDefault();
    
    // VerificarSeMaiorDeIdade();
    
    
    if(VerificarSenha() && VerificarSeMaiorDeIdade()){
        form.submit();
    }
    
})

//verificar se tem mais de 18

function VerificarSeMaiorDeIdade(){
    const dataSelecionada = new Date(document.querySelector("#date").value);
    const hoje = new Date();
    
    const PegarAno = Intl.DateTimeFormat("pt-br", {
        year: "numeric", 
    });
    const anoHoje = PegarAno.format(hoje);
    const anoNascimento = PegarAno.format(dataSelecionada);
    
    const Pegarmes = Intl.DateTimeFormat("pt-br", {
        month: "2-digit", 
    });
    const mesHoje = Pegarmes.format(hoje);
    const mesNascimento = Pegarmes.format(dataSelecionada);
    
    const Pegardia = Intl.DateTimeFormat("pt-br", {
        day: "2-digit", 
    });
    const diaHoje = Pegardia.format(hoje);
    let diaNascimento = Pegardia.format(dataSelecionada);
    diaNascimento++;
    
    let idade = anoHoje - anoNascimento;
    if(mesNascimento > mesHoje || (mesNascimento == mesHoje && diaHoje < diaNascimento)){
        idade--;
    }
    
    if(idade<18){
        alert('usuario só pode fazer o cadastro se for maior de idade')
        return false;
    }
    return true;
}

//senha 6 caracteres e contem pelo menos um numero

function VerificarSenha(){
    const senha = document.getElementById("password").value;
    
    if(senha.length < 6 ){
        alert('senha menor q 6 digitos');
        return false;
    }
    let temNumero = false;
    
    for (let i = 0; i < senha.length; i++) {
        if (/\d/.test(senha[i])) {
            temNumero = true;
            break;
        }
    }
    
    if(!temNumero){
        alert('deve conter pelo menos um numero');
        return false;
    }
    
    
    return true;
}

// mascara do telefone 

function formatarTelefone() {
    const telefoneInput = document.getElementById("Whatsapp");
    let telefone = telefoneInput.value;

    if (telefone.length >= 2) {
        if (telefone[0] !== '(') {
            telefone = `(${telefone.slice(0,2)})`;
        }
    }

    telefoneInput.value = telefone;
}

