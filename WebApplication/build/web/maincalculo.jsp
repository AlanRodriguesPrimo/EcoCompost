<%@page import="classjava.Calculator" import="classjava.CalBonus" import="controller.RegisterServlet" import="java.time.LocalDate" import="classjava.SendGain" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <title>APS3</title>
</head>

<body style="background-color: #8acff8;">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">EcoCompost</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">

                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link" href="#contato">Contato</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#coleta">Coleta</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#calculo">Calculo</a>
                        </li>

                        <li class="nav-item dropdown " data-bs-theme="dark">
                            <a class="nav-link dropdown-toggle" href="#" id="conecte-se-dropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Conecte-se
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="conecte-se-dropdown">
                                <li><a class="dropdown-item" href="Login.jsp">Entrar</a></li>
                                <li><a class="dropdown-item" href="cadastro.jsp">Registrar</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <section class="container-fluid ">

        <!--Apresentação-->
        <div class="row" style="margin-top: 2px; background-color: #8acff8;">
            <div class="col-sm-12 col-xl-4 text-center d-flex align-items-center justify-content-center">
                <img src="img/bg-ap.jpg " alt="Natureza" class="img-fluid">
            </div>
            <div class="col-sm-12 col-xl-8">
                <h1 class="text-center text-md-center display-4 ">Apresentação do projeto</h1>
                <p style="font-size: 1.5rem;">
                    Somos uma StartUp iniciada em 2022 e estamos elaborando e contribuindo com a segunda ODS da ONU (Fome zero e agricultura sustentável). 
                    Desenvolvemos a seguinte solução: trabalhamos com a coleta de resíduos orgânicos.nosso trabalho consiste na distribuição de baldes de 10L & 18L. 
                    Esses baldes, nós distribuímos com vans até o endereço que nosso colaborador inseriu na sua ficha de cadastro. A coleta e reciclagem de resíduos orgânicos traz benefícios,
                    tanto para o meio ambiente quanto para a sociedade como um todo, como por exemplo redução de desperdício, produção de adubo, redução de emissões de gases do efeito estufa, 
                    economia de recursos naturais e geração de empregos.Com a coleta dos resíduos, nós fazemos adubo e fertilizante para ser comercializado com grandes empresas rurais, produtoras de soja, milho, algodão, cana de açúcar e café.
                    
                </p>
            </div>
        </div>
        <hr class="bg-primary border-2">

        <!--Processos-->
        <div class="row" style="margin-top: 2px; background-color: #8acff8;" id="coleta">
            <div class="col-sm-12 col-xl-4">
                <h1 class="text-center display-4 ">Coleta</h1>
                <p style="font-size: 1.5rem;">
                    Após você adquirir seu balde você terá uma semana para arrecadar os residuos  
                    .A coleta é realizada por nós com Vans, a cada semana vamos a sua residência/empresa para coletar os residuos orgânicos que
                    foram coletados por você durante esta semana e realizarmos a pesagem de seus residuos para que gere seu crédito.
                    Quando seu residuo orgânico chega em nossa empresa, realizamos o processo de compostagem para que seja gerado o adubo orgânico.
                </p>
                <div class="row">
                    <div class="col-12 text-center">
                        <img src="img/fig-transporte.svg" class="img-thumbnail d-inline-block mx-2"
                            style="width: 50px;"><b>-</b>
                        <img src="img/fig-lixo.svg" class="img-thumbnail d-inline-block mx-2"
                            style="width: 50px;"><b>-</b>
                        <img src="img/fig-transporte.svg" class="img-thumbnail d-inline-block mx-2"
                            style="width: 50px;"><b>-</b>
                        <img src="img/fig-salvar.svg" class="img-thumbnail d-inline-block mx-2"
                            style="width: 50px;"><b>-</b>
                        <img src="img/fig-conta.svg" class="img-thumbnail d-inline-block mx-2"
                            style="width: 50px;"><b>-</b>
                        <img src="img/fig-completo.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;">.
                    </div>


                </div>
            </div>
            <div class="col-sm-12 col-xl-4 text-start">
                <h1 class="text-center display-4">Compostagem</h1>
                <p style="font-size: 1.5rem;">
                    A compostagem ocorre através da decomposição dos residuos orgânicos resultando na produção do composto que é
                    rico em nutrientes orgânicos.<br> A compostagem ocorre através da interação de microrganismos que atuam na decomposição
                    dos residuos e ajudam a transformar o residuo em um composto rico e estável.
                </p>
            </div>
            <div class="col-sm-12 col-xl-4 text-center d-flex align-items-center justify-content-center">
                <img src="img/ciclo-compostagem.jpg" alt="Processo de compostagem" class="img-fluid">
            </div>
        </div>

        <hr class="bg-primary border-2">

        <!--Calculo-->

        <div class="row" style="margin-top: 2px; background-color: #8acff8;" id="calculo">
            <div class="col-sm-12 col-xl-6 border-right-xl">
                <h1 class="text-center display-5">Como é feita a pesagem? </h1>
                <p style="font-size: 1.5rem;">
                    A pesagem é feita no momento da coleta e é calculada da seguinte forma:<br>
                    
                    <img src="img/cal.png" alt="calculo"/><br>
                        
                    Explicando melhor, o total em quilogramas dos produtos orgânicos são multiplicado por R$3,75 (valor que optamos por colocar no quilograma do produto orgâncio) e subtraido de uma porcentagem
                    que é um pequeno lucro que tiramos em cima da sua coleta para podermos manter nossa empresa.
                </p>
            </div>
            <div class="col-sm-12 col-xl-4 offset-xl-2 text-center">
                <div class="card card-calculo">
                    <div class="card-body">
                        <h1 class="text-center  text-uppercase">Calcular</h1>
                        <form id="form-calculo" method="POST" action="#">
                
                            <div class="form-group text-start">
                                <label for="peso">Peso:</label>
                                <input class="form-control" type="number" name="peso" id="peso" placeholder="00,00">
                            </div>
                            <div class="form-group">
                                <label style="margin-right: .5em;">Tipo:</label>
                                <div class="form-check d-inline-block">
                                    <input class="form-check-input" type="checkbox" name="PF" id="PF"
                                        checked value="true">
                                    <label class="form-check-label" for="PF">
                                        Pessoa
                                    </label>
                                </div>
                                <div class="form-check d-inline-block">
                                    <input class="form-check-input" type="checkbox" name="PJ" id="PJ" value="true">
                                    <label class="form-check-label" for="PJ">
                                        Empresa
                                    </label>
                                </div>
                            </div>
                            <p><%
                                    String ps = request.getParameter("peso");
                                    if(ps != null) {
                                        String meuValor = request.getParameter("peso");
                                        boolean alter1 = request.getParameter("PF") != null;
                                        boolean alter2 = request.getParameter("PJ") != null;
                                        float peso = Float.parseFloat(meuValor);
                                    
                                        if(alter1 == true && alter2 == false){
                                            out.println("Valor ganho:<br>R$ " + CalBonus.calculatorPF(peso));
                                        }else{
                                            if(alter1 == false && alter2 == true){
                                                out.println("Valor ganho:<br>R$ " + CalBonus.calculatorPJ(peso));
                                            }
                                        }
                                    }
                                %></p>
                            <div class="form-group text-end">
                                <button type="submit" class="btn btn-success"> Calcular</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <hr class="bg-primary border-2">

        <div class="row justify-content-center" style="margin-top: 2px; background-color: #8acff8;" id="contato">
            <div class="col-sm-12 col-xl-6">
                <h1 class="display-4 text-center">Informações de contato</h1>
                <p class="text-start mt-1"><b>Razão social:</b> EcoCompost -Sustentabilidade para a terra e o bolso</p>
                <p><b>Telefone:</b> (11) 3058-8671</p>
                <p><b>Email:</b> ecocompost@ecocompost.com</p>
                <p><b>Endereço:</b> Av. Marquês de São Vicente, 3001 - Água Branca, São Paulo - SP, 05037-040</p>

            </div>
            <div class="col-sm-12 col-xl-4 offset-xl-2 border border-black">
                <h1 class="display-4 text-center"> Localização</h1>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.462390718653!2d-46.69236472400796!3d-23.515866078831138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef811f2dc100d%3A0x4b1218cce3811ce1!2sUNIP%20-%20Marqu%C3%AAs!5e0!3m2!1spt-BR!2sbr!4v1683507018696!5m2!1spt-BR!2sbr"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
        
        <hr class="bg-primary border-2">

        <div class="row bg-dark">
            <h1 class="display-6 text-center text-white">Redes</h1>
            <div class="row">
                <div class="col-12 text-center">
                    <a href=""><img src="img/logo-Linkedin.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                    <a href=""><img src="img/logo-facebook.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                    <a href=""><img src="img/logo-instagram.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                    <a href=""><img src="img/logo-Twiter.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                    <a href=""><img src="img/logo-whatsapp.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                    <a href=""><img src="img/logo-github.svg" class="img-thumbnail d-inline-block mx-2" style="width: 50px;"></a>
                </div>

                
            </div>
            
        </div>


    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/js/bootstrap.min.js"></script>
</body>

</html>