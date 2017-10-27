<%-- 
    Document   : cadastrarFuncionario
    Created on : 16/10/2017, 18:55:48
    Author     : felipe.joliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Funcionario</title>
        <link href="../all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <link href="../css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="../css/custom.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/view/BoasVindas.jsp">Away - Sistema Imobiliário</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#opcoesImoveis" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-home" aria-hidden="true"></i>
                            <span class="nav-link-text">Imóveis</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="opcoesImoveis">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarImovel.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarImovel.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarImovel.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropClientes" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                            <span class="nav-link-text">Clientes</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropClientes">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarCliente.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarCliente.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarCliente.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFuncionario" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-users" aria-hidden="true"></i>
                            <span class="nav-link-text">Funcionários</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFuncionario">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFuncionario.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarFuncionario.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarImovel.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFiliais" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                            <span class="nav-link-text">Filiais</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFiliais">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastarFilial.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarFilial.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarFilial.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropContratos" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-files-o" aria-hidden="true"></i>
                            <span class="nav-link-text">Contratos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropContratos">
                            <li>
                                <a class="fa fa-usd" aria-hidden="false" href=""> Contrato de Venda</a>
                            </li>
                            <li>
                                <a class="fa fa-file-o" aria-hidden="true" href=""> Contrato de Aluguel</a>
                            </li>
                        </ul>
                    </li>



                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Sair</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="content-wrapper">

            <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header cardRegistro">Registar Novo Funcionário</div>
                    <div class="card-body">
                        <form>
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados Básicos
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" id="funcNome" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" id="funcSobrenome" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input class="form-control maskCPF" id="funcCpf" type="text" placeholder="000.000.000-00">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input class="form-control maskRG" id="funcRg" type="text" placeholder="00.000.000-0">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sexo</label>
                                                <select class="form-control" id="funcSexo">
                                                    <option value="null">Selecione</option>
                                                    <option value="M">Masculino</option>
                                                    <option value="F">Feminino</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Data de Nascimento</label>
                                                <input class="form-control maskDataNascimento" id="" type="text">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados Internos
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for=" ">Função</label>
                                                <select class="form-control" id="funcFuncao">
                                                    <option value="">Selecione</option>
                                                    <option value="">Corretor</option>
                                                    <option value="">TI</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Departamento</label>
                                                <select class="form-control" id="funcDepartamento">
                                                    <option value="">Selecione</option>
                                                    <option value="">TI</option>
                                                    <option value="">Négocios</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Usuário</label>
                                                <input class="form-control" id="funcUser" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Senha</label>
                                                <input class="form-control" id="funcPass" type="password">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                        <a href="#" class="btn btn-success">Registrar</a>
                        <a class="btn btn-warning limpar" href="">Limpar</a>
                        <a href="#" class="btn btn-primary">Cancelar</a>
                        <hr/>
                    </div>
                </div>
            </div>

        </div>

        <footer class="sticky-footer">
            <div class="container">
                <div class="text-center">
                    <small>© Copyright 2017 Away</small>
                </div>
            </div>
        </footer>
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fa fa-angle-up"></i>
        </a>
        <!-- Logout Modal-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tem certeza que deseja sair?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Clique em "Sair" abaixo se você deseja realmente sair.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <a class="btn btn-primary" href="login.html">Sair</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="../all/vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../all/vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="../all/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../all/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <script src="../all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="../js/sb-admin.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-charts.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.js" type="text/javascript"></script>
        <script src="../js/masks.js" type="text/javascript"></script>
    </body>
</html>
