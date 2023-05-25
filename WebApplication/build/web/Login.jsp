<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
    <title>APS3</title>
</head>

<body style="background-image: linear-gradient(90deg, #023e6e , #0080ff);">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">EcoCompost</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-start" id="navbarNav">

                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link" href="maincalculo.jsp">Voltar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <section class="container-fluid ">

        <div class="row d-flex justify-content-center align-items-center" style="margin: 15em 0 15em 0;">
            <div class="col-xl-4 col-md-10">
                <div class="card card-login" style="background-color: #0080ff;">
                    <div class="card-body">
                        <h1 class="text-center  text-uppercase">Entrar</h1>
                        <form id="form-login" method="POST" action="LoginServlet">

                            <div class="form-group form-group-email">
                                <label for="email">E-mail: </label>
                                <input class="form-control" type="email" name="txtEmail" id="Email"
                                    placeholder="Informe o seu email..">
                            </div>
                            <div class="form-group form-group-senha">
                                <label for="senha">Senha: </label>
                                <input class="form-control" type="password" name="txtSenha" id="password"
                                    placeholder="******">
                            </div>
                            <div class="form-group">
                                <label style="margin-right: .5em;">Tipo:</label>
                                <div class="form-check d-inline-block">
                                    <input class="form-check-input" type="checkbox" name="tipo" value="pf" onclick="limitarSelecao(this)"
                                         checked id="PF">
                                    <label class="form-check-label" for="tipo">
                                        CPF
                                    </label>
                                </div>

                                <div class="form-check d-inline-block">
                                    <input class="form-check-input" type="checkbox" name="tipo" value="pj" onclick="limitarSelecao(this)"
                                         id="PJ">
                                    <label class="form-check-label" for="tipo">
                                        CNPJ
                                    </label>
                                </div>

                            </div>
                            <script>
                            function limitarSelecao(checkbox) {
                              var checkboxes = document.getElementsByName('tipo');
                              checkboxes.forEach(function(currentCheckbox) {
                                if (currentCheckbox !== checkbox) {
                                  currentCheckbox.checked = false;
                                }
                              });
                            }
                            </script>


                            <div class="form-group text-end">
                                <button type="submit" class="btn btn-success"> Logar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="row bg-dark">
            <h1 class="display-6 text-center text-white">Redes</h1>
            <div class="col-12 text-center">
                <a href=""><img src="img/logo-Linkedin.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
                <a href=""><img src="img/logo-facebook.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
                <a href=""><img src="img/logo-instagram.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
                <a href=""><img src="img/logo-Twiter.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
                <a href=""><img src="img/logo-whatsapp.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
                <a href=""><img src="img/logo-github.svg" class="img-thumbnail d-inline-block mx-2"
                        style="width: 50px;"></a>
            </div>


        </div>

    </section>


    <script src="js/scriptLogin.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>