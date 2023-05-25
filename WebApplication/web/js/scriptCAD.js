let form = document.querySelector("#form-cadastro");

let nome = document.querySelector('.form-group-nome');
let cpf = document.querySelector('.form-group-cpf');
let razaoS = document.querySelector('.form-group-razaoSocial');
let cnpj = document.querySelector('.form-group-cnpj');

function inputCPF() {
    document.querySelector('label[for="nome"]').textContent = "Nome:";
    document.querySelector('input[name="txtNome"]').setAttribute("placeholder", "Digite o seu nome..");
    cnpj.classList.add("d-none");
    cpf.classList.remove("d-none");
}
function inputCNPJ() {
    document.querySelector('label[for="nome"]').textContent = "Razão Social:";
    document.querySelector('input[name="txtNome"]').setAttribute("placeholder", "Digite a razão social..");
    cnpj.classList.remove("d-none");
    cpf.classList.add("d-none");
    
}

function validacaoCPF(){
    if (document.querySelector('input[name="tipo"]:checked').value === "pf") {
        let campoNome = document.querySelector('input[name="txtNome"]');
        let campoCPF = document.querySelector('input[name="txtCpf"]');
        let campoEmail = document.querySelector('input[name="txtEmail"]');
        let campoSenha = document.querySelector('input[name="txtSenha"]');
        let campoRua = document.querySelector('input[name="txtRua"]');
        let campoNumero = document.querySelector('input[name="txtNumero"]');
        let campoBairro = document.querySelector('input[name="txtBairro"]');

        /*Quando o usuario clicar no campo e sair executa a função abaixo de cada campo[CPF]*/
        campoNome.addEventListener('blur', function () {
            if (campoNome.value !== "") {
                campoNome.classList.remove('is-invalid');
            }
        });

        campoCPF.addEventListener('blur', function () {
            if (campoCPF.value !== "") {
                campoCPF.classList.remove('is-invalid');
            }
        });
        campoEmail.addEventListener('blur', function () {
            if (campoEmail.value !== "") {
                campoEmail.classList.remove('is-invalid');
            }
        });
        campoSenha.addEventListener('blur', function () {
            if (campoSenha.value !== "") {
                campoSenha.classList.remove('is-invalid');
            }
        });
        campoRua.addEventListener('blur', function(){
            if(campoRua.value !== ""){
                campoRua.classList.remove('is-invalid');
            }
        });
        campoNumero.addEventListener('blur', function(){
            if(campoNumero.value !== ""){
                campoNumero.classList.remove('is-invalid');
            }
        });
        campoBairro.addEventListener('blur', function(){
            if(campoBairro.value !== ""){
                campoBairro.classList.remove('is-invalid');
            }
        });
        /*Validação de campo vazio[CPF]*/
        if (campoNome.value === "") {
            campoNome.classList.add('is-invalid');
            campoNome.focus();
            return false;

        } else {
            campoNome.classList.remove('is-invalid');
        }
        if (campoCPF.value === "") {
            campoCPF.classList.add('is-invalid');
            campoCPF.focus();
            return false;
        } else if (campoCPF.value.length !== 11) {
            alert("O campo CPF precisa ter 11 digitos");
            campoCPF.focus();
            return false;
        }else {
            campoCPF.classList.remove('is-invalid');
        }

        if (campoEmail.value === "") {
            campoEmail.classList.add('is-invalid');
            campoEmail.focus();
            return false;
        } else {
            campoEmail.classList.remove('is-invalid');
        }

        if (campoSenha.value === "") {
            campoSenha.classList.add('is-invalid');
            campoSenha.focus();
            return false;
        } else {
            campoSenha.classList.remove('is-invalid');
        }
         if(campoRua.value ===""){
            campoRua.classList.add('is-invalid');
            campoRua.focus();
            return false;
        }else{
            campoRua.classList.remove('is-invalid')
        }

        if(campoNumero.value ===""){
            campoNumero.classList.add('is-invalid')
            campoNumero.focus();
            return false;
        }else{
            campoNumero.classList.remove('is-invalid')
        }
        
        if(campoBairro.value === ""){
            campoBairro.classList.add('is-invalid')
            campoBairro.focus();
            return false;
        }else{
            campoBairro.classList.remove('is-invalid')
            form.submit();
            alert("Cadastro realizado com sucesso");
            window.location.href = "RegisterServlet.jsp";
        }
    }
}
function validacaoCNPJ(){
    if (document.querySelector('input[name="tipo"]:checked').value === "pj") {
        let campoRazao = document.querySelector('input[name="txtRazaoS"]');
        let campoCnpj = document.querySelector('input[name="txtCnpj"]');
        let campoEmail = document.querySelector('input[name="txtEmail"]');
        let campoSenha = document.querySelector('input[name="txtSenha"]');
        let campoRua = document.querySelector('input[name="txtRua"]')
        let campoNumero = document.querySelector('input[name="txtNumero"]')
        let campoBairro = document.querySelector('input[name="txtBairro"]')

        campoRazao.addEventListener('blur', function () {
            if (campoRazao.value !== "") {
                campoRazao.classList.remove('is-invalid');
            }
        });
        campoCnpj.addEventListener('blur', function () {
            if (campoCnpj.value !== "") {
                campoCnpj.classList.remove('is-invalid');
            }
        });
        campoEmail.addEventListener('blur', function () {
            if (campoEmail.value !== "") {
                campoEmail.classList.remove('is-invalid');
            }
        });
        campoSenha.addEventListener('blur', function () {
            if (campoSenha.value !== "") {
                campoSenha.classList.remove('is-invalid');
            }
        });
        campoRua.addEventListener('blur', function () {
            if (campoRua.value !== "") {
                campoRua.classList.remove('is-invalid')
            }
        })
        campoNumero.addEventListener('blur', function () {
            if (campoNumero.value !== "") {
                campoNumero.classList.remove('is-invalid')
            }
        })
        campoBairro.addEventListener('blur', function () {
            if (campoBairro.value !== "") {
                campoBairro.classList.remove('is-invalid')
            }
        })

        if (campoRazao.value === "") {
            campoRazao.classList.add('is-invalid');
            campoRazao.focus();
            return false;
        } else {
            campoRazao.classList.remove('is-invalid');
        }
        if (campoCnpj.value === "") {
            campoCnpj.classList.add('is-invalid');
            campoCnpj.focus();
            return false;
        } else if (campoCnpj.value.length !== 14) {
            alert("O campo CNPJ precisa ter 14 digitos");
            campoCnpj.focus();
            return false;
        } else {
            campoCnpj.classList.remove('is-invalid');

        }
        if (campoEmail.value === "") {
            campoEmail.classList.add('is-invalid');
            campoEmail.focus();
            return false;
        } else {
            campoEmail.classList.remove('is-invalid');
        }

        if (campoSenha.value === "") {
            campoSenha.classList.add('is-invalid');
            campoSenha.focus();
            return false;
        } else {
            campoSenha.classList.remove('is-invalid');
        }
         if (campoRua.value === "") {
            campoRua.classList.add('is-invalid');
            campoRua.focus();
            return false;
        } else {
            campoRua.classList.remove('is-invalid')
        }

        if (campoNumero.value === "") {
            campoNumero.classList.add('is-invalid')
            campoNumero.focus();
            return false;
        } else {
            campoNumero.classList.remove('is-invalid')
        }

        if (campoBairro.value === "") {
            campoBairro.classList.add('is-invalid')
            campoBairro.focus();
            return false;
        } else {
            campoBairro.classList.remove('is-invalid')
            form.submit();
            alert("Cadastro realizado com sucesso");
            window.location.href = "RegisterServlet.jsp";
        }
    }
}
