let form = document.querySelector('#form-login')

form.addEventListener('submit', function (event) {
    event.preventDefault();
    validacaoLogin();
});

function validacaoLogin() {
    let campoEmail = document.querySelector('input[name="txtEmail"]')
    let campoSenha = document.querySelector('input[name="txtSenha"]')

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
    if (campoEmail.value === "") {
        campoEmail.classList.add('is-invalid')
        campoEmail.focus();
        return false
    } else {
        campoEmail.classList.remove('is-invalid');
    }
    if (campoSenha.value === "") {
        campoSenha.classList.add('is-invalid')
        campoEmail.focus();
        return false

    } else {
        campoSenha.classList.remove('is-invalid')
        form.submit();
        // window.location.href = "mainclient.jsp";     -> redirecionar para a indexConta
        // window.location.href = "maincalculo.jsp";     -> redirecionar para a index
        //fazer o if e o else dependendo o tipo de conta

    }
}
