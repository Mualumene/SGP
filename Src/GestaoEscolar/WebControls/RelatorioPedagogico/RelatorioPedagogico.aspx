﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RelatorioPedagogico.aspx.cs" Inherits="GestaoEscolar.WebControls.RelatorioPedagogico.RelatorioPedagogico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../App_Themes/IntranetSMEBootStrap/bootstrap.css" rel="stylesheet" media="screen">
    <link href="../../App_Themes/IntranetSMEBootStrap/custom.css" rel="stylesheet" media="screen">
    <link href="../../Includes/jquery.mCustomScrollbar.css" rel="stylesheet" media="screen">
</head>
<body>
    <script  src="../../Includes/underscore-min.js" type="text/javascript"></script>
    <script src="../../Includes/Charts/Chart.min.js"></script>
    <script src="../../Includes/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="../../Includes/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>   
    <script src="../../Includes/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/angular.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/module.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/angular-charts/angular-chart.min.js"></script>
    <script src="../../Includes/Angular/angular-filter/angular-filter.min.js"></script>
    <script src="../../Includes/Angular/boletim.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/angular-directives/JQmCustomScrollbar.js"></script>
    <script src="../../Includes/Angular/calendario.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/sondagem.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/anotacao.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/justificativaFalta.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/movimentacao.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/matriculaTurma.controller.js" type="text/javascript"></script>
    <script src="../../Includes/Angular/conselhoClasse.controller.js" type="text/javascript"></script>
    <script src="../../Includes/scrolling.js" type="text/javascript"></script>
    

    <script type="text/javascript">
        var params =
            {
                alu_id : <%= alu_id %>,
                mtu_id : <%= mtu_id %>,
                AluIds: '<%= alu_id %>',
                MtuIds: '<%= mtu_id %>',
                TpcId: <%= tpc_id %>,
                ano: <%= ano %>,
                exibicaoNome: <%= (int)MSTech.GestaoEscolar.BLL.eExibicaoNomePessoa.NomeSocial %>
                };

        var site = '';
        var core = '<%= MSTech.GestaoEscolar.Web.WebProject.ApplicationWEB.UrlCoreSSO %>';
        var api = '<%= MSTech.GestaoEscolar.Web.WebProject.ApplicationWEB.UrlGestaoAcademicaWebApi %>';
        var msgDocenciaCompartilhada = '<%= GetGlobalResourceObject("WebControls", "BoletimCompletoAluno.UCDadosBoletimAluno.MensagemCompartilhada") %>';
        var msgAlunoSemDadosPeriodo = '<%= GetGlobalResourceObject("WebControls", "BoletimCompletoAluno.UCBoletimAngular.MensagemAlunoSemDadosPeriodo") %>';
        var urlRetorno = '<%= URLRetorno %>';

        var Usuario = '<%= Usuario %>';
        var Entidade = '<%= Entidade %>';
        var Grupo = '<%= Grupo %>';
        var Token = '<%= Token %>';
    </script>

    <form id="form1" runat="server">
        <div ng-app="app" class="area-rel-pedagogico">           

            <aside class="nav-aside">
                <div ng-controller="matriculaTurmaController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !matriculaLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>

                        <!-- Header relatorio -->
                        <header class="info-header">
                            <div class="foto-aluno">
                                <img class="imgFoto" src="{{getPhotoStudent(matricula.arq_idFoto)}}" alt="Foto do aluno" />
                            </div>
                            <div class="info-aluno">
                                <h2 class="info-nome">{{matricula.pes_nome}} <small>{{matricula.alc_matricula}}</small>
                                </h2>
                                <%--<span class="info-turma">{{matricula.tci_nome}} / {{matricula.tur_codigo}}
                                    </span>--%>
                                <h2 class="info-escola">{{matricula.esc_nome}} -  {{matricula.uad_nome}}
                                </h2>

                                <div ng-controller="CalendarioController" ng-cloak>
                                    <div ng-view>
                                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !calendarioLoaded">
                                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                                        </div>
                                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                                            {{mensagemErro}}
                                        </div>
                                        <div ng-if="mensagemAlerta" class="summary">
                                            {{mensagemAlerta}}
                                        </div>
                                        <div>
                                            <div class="dropdown">
                                                <button class="btn btn-default dropdown-toggle dropdown-ico" type="button" id="dropdownMenu1"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" ng-disabled="listCalendario.length <= 1">
                                                    <span>{{params.ano}}</span> - <span class="info-turma">{{matricula.tci_nome}} / {{matricula.tur_codigo}}</span>
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" ng-show="listCalendario.length > 1">
                                                    <li ng-repeat="calendario in listCalendario" ng-show="calendario.cal_ano!=params.ano">
                                                        <a href="#" ng-click="trocarAno(calendario.cal_ano, calendario.mtu_id, calendario.tpc_id)">{{calendario.cal_ano}}</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </header>

                        <a href="#nav-list-collapse" class="btn btn-primary btn-nav-toggle" role="button" data-toggle="collapse" aria-expanded="false" aria-controls="nav-list-collapse"><i class="material-icons">&#xE5D2;</i></a>
                        <div class="collapse" id="nav-list-collapse">
                            <div class="nav-list-scroll mCustomScrollbar" data-mcs-theme="dark" jqmcustomscrollbar>
                                <ul class="nav-list" id="nav-list">
                                    <li>
                                        <a href="#area-notas-faltas" onclick="menuClick(this)">{{matricula.nomeNota}}s e faltas</a>
                                    </li>
                                    <li>
                                        <a href="#area-obs-conselho" onclick="menuClick(this)">Observações do conselho de classe</a>
                                    </li>
                                    <li>
                                        <a href="#area-com-estudos" onclick="menuClick(this)">Compromissos de estudo</a>
                                    </li>
                                    <li>
                                        <a href="#area-sondagem" onclick="menuClick(this)">Resultados de sondagem</a>
                                    </li>
                                    <li>
                                        <a href="#area-obs-individuais" onclick="menuClick(this)">Observações individuais</a>
                                    </li>
                                    <li>
                                        <a href="#area-just-faltas" onclick="menuClick(this)">Justificativas de faltas</a>
                                    </li>
                                    <li>
                                        <a href="#area-cons-mov" onclick="menuClick(this)">Remanejamentos e reclassificações</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>

            <!--Conteúdo-->
            <div role="main" id="acontent">
                <button title="Ir para o topo" class="btn btn-primary btn-float" id="btn-top"><i class="material-icons">&#xE5D8;</i></button>
                <button title="Voltar" class="btn btn-primary btn-float" id="btn-voltar"><i class="material-icons">&#xE166;</i></button>
                <button title="Imprimir" class="btn btn-primary btn-float" id="btn-print"><i class="material-icons">&#xE8AD;</i></button>

                <!-- Boletim -->
                <div ng-controller="BoletimRelPedagogicoController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !boletimLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <section id="area-notas-faltas" class="section-area" ng-repeat="boletim in listBoletins | limitTo : 1" ng-show="boletimLoaded">
                            <h3 ng-if="!boletim.ensinoInfantil"><i class="material-icons pull-left">&#xE5CC;</i>{{boletim.nomeNota}}s e faltas</h3>
                            <div class="conteudo">

                                <table class="table table-responsive-list" ng-if="!boletim.ensinoInfantil">
                                    <thead>
                                        <tr>
                                            <th rowspan="2" style="vertical-align: middle">Disciplina</th>
                                            <th class="text-center" ng-repeat="periodo in boletim.periodos">{{periodo.tpc_nome}}</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Síntese Final</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Total de Ausências</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Frequência Final (%)</th>
                                        </tr>
                                        <tr>
                                            <th class="text-center" ng-repeat="periodo in boletim.periodos">{{boletim.nomeNota}}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="(indexMat, materia) in boletim.matter" ng-class="checkParImpar(indexMat)" ng-if="!materia.enriquecimentoCurricular||!materia.recuperacao">
                                            <td data-header="Disciplina"><strong>{{materia.Disciplina}}</strong></td>
                                            <td class="text-center" ng-repeat="(indexAval, avaliacao) in materia.avaliacao"
                                                ng-if="indexAval%2 == 0" data-header="{{avaliacao.tpc_nome + ' - ' + boletim.nomeNota}}"
                                                rowspan="{{ indexAval%2 == 0 || !materia.tipoComponenteRegencia ? 1 : boletim.QtComponenteRegencia }}">{{avaliacao.conceito}}
                                            </td>
                                            <td class="text-center cel-destaque" data-header="Final - Nota"><strong>{{materia.MediaFinal}}</strong></td>
                                            <td class="text-center cel-destaque" data-header="Final - Faltas" ng-if="indexMat == 0 || !materia.tipoComponenteRegencia" rowspan="{{ materia.tipoComponenteRegencia ? boletim.QtComponenteRegencia : 1 }}"><strong>{{materia.totalFaltas}}</strong></td>
                                            <td class="text-center cel-destaque" data-header="Final - Frequencia" ng-if="boletim.exibeCompensacaoAusencia && (indexMat == 0 || boletim.QtComponenteRegencia == 0)" rowspan="{{ boletim.QtComponenteRegencia > 0 ? boletim.QtComponentes : 1 }}"><strong>{{materia.FrequenciaFinalAjustada}}</strong></td>
                                        </tr>
                                        <tr ng-if="(!boletim.parecerConclusivo || boletim.parecerConclusivo.length > 0)"
                                            style="display: {{boletim.displayParecerConclusivo; }}">
                                            <td class="text-center" colspan="20"><strong>Parecer conclusivo: {{ boletim.parecerConclusivo }}</strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>


                                <table class="table table-responsive-list" ng-if="boletim.showCurricularEnrichment && !boletim.ensinoInfantil">
                                    <thead>
                                        <tr>
                                            <th rowspan="2" style="vertical-align: middle; width: 130px;">Enriq. curricular / Projetos / Ativ. compl.</th>
                                            <th class="text-center" ng-repeat="periodo in boletim.periodos">{{periodo.tpc_nome}}</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Parecer Final</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Total de Ausências</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Frequência Final (%)</th>
                                        </tr>
                                        <tr>
                                            <th class="text-center" ng-repeat="periodo in boletim.periodos">Faltas</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="(indexMat, materia) in boletim.enrichment" ng-class="checkParImpar(indexMat)" ng-if="materia.enriquecimentoCurricular">
                                            <td data-header="Disciplina">{{materia.Disciplina}}</td>
                                            <td class="text-center" ng-repeat="(indexAval, avaliacao) in materia.notas" data-header="{{avaliacao.tpc_nome}}">{{avaliacao.nota.numeroFaltas != null ? avaliacao.nota.numeroFaltas : "-"}}</td>
                                            <td class="text-center" data-header="Parecer Final">{{materia.parecerFinal}}</td>
                                            <td class="text-center" data-header="Final - Faltas">{{materia.totalFaltas}}</td>
                                            <td class="text-center" data-header="Final - Frequencia">{{materia.FrequenciaFinalAjustada}}</td>
                                        </tr>
                                    </tbody>
                                </table>

                                <table class="table table-responsive-list" ng-if="boletim.ensinoInfantil">
                                    <thead>
                                        <tr>
                                            <th rowspan="2" style="vertical-align: middle"></th>

                                            <th class="text-center" ng-repeat="periodo in boletim.periodos" title="{{periodo.MatriculaPeriodo}}">
                                                <span>{{periodo.tpc_nome}}</span>
                                            </th>

                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Total de Aulas</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Total de Ausências</th>
                                            <th rowspan="2" class="text-center" style="vertical-align: middle">Frequência Final (%)</th>

                                        </tr>
                                        <tr>
                                            <th class="text-center" style="vertical-align: middle" ng-repeat="periodo in boletim.periodos">Faltas</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr ng-repeat="(indexMat, materia) in boletim.matter" ng-class="checkParImpar(indexMat)">
                                            <td>{{boletim.tur_codigo}}</td>
                                            <td class="text-center" ng-repeat="(indexAval, avaliacao) in materia.notas" data-header="{{avaliacao.tpc_nome}}">{{avaliacao.nota.numeroFaltas != null ? avaliacao.nota.numeroFaltas : "-"}}</td>
                                            <td class="text-center" data-header="Total de Aulas">{{materia.totalAulas}}</td>
                                            <td class="text-center" data-header="Total de Ausências">{{materia.totalFaltas}}</td>
                                            <td class="text-center" data-header="Frequência Final (%)">{{materia.FrequenciaFinalAjustada}}</td>
                                        </tr>

                                    </tbody>
                                    <!--tbody-->
                                </table>

                                <table class="table table-responsive-list" ng-if="boletim.showRecuperacao">
                                    <thead>
                                        <tr>
                                            <th rowspan="2" style="vertical-align: middle; width: 130px;">
                                                <span>
                                                    <asp:Literal runat="server" Text="<%$ Resources:UserControl, UCDadosBoletim.lblRecuperacaoTitulo.Text %>" /></span>
                                            </th>

                                            <th class="text-center" ng-repeat="periodo in boletim.periodos" title="{{periodo.MatriculaPeriodo}}">
                                                <span>{{periodo.tpc_nome}}</span>
                                            </th>

                                            <th rowspan="2" class="text-center">Total de Ausências</th>
                                            <th rowspan="2" class="text-center" ng-if="boletim.exibeCompensacaoAusencia">Parecer Final</th>

                                        </tr>
                                        <tr>
                                            <th class="text-center" ng-repeat="periodo in boletim.periodos">Faltas</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr ng-repeat="(indexRec, materia) in boletim.recovery" ng-class="checkParImpar(indexRec)" ng-if="materia.recuperacao">
                                            <td data-header="Disciplina">{{materia.Disciplina}}</td>
                                            <td class="text-center" ng-repeat="(indexAval, avaliacao) in materia.notas" data-header="{{avaliacao.tpc_nome}}>{{avaliacao.nota.numeroFaltas != null ? avaliacao.nota.numeroFaltas : "-"}}</td>
                                            <td class="text-center" data-header="Total de Ausências">{{materia.totalFaltas}}</td>
                                            <td class="text-center" data-header="Parecer Final" ng-if="boletim.exibeCompensacaoAusencia">{{materia.parecerFinal}}</td>
                                        </tr>

                                    </tbody>
                                    <!--tbody-->
                                </table>
                            </div>
                        </section>
                    </div>
                </div>

                <div ng-controller="ConselhoClasseController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !conselhoLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <!-- OBSERVACOES CONSELHO -->
                        <section id="area-obs-conselho" class="section-area">
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Observações do conselho de classe</h3>
                            <div class="conteudo">
                                <div class="sr-only">Conteúdo dividido por Accordion</div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="panel-group accordion" id="accordionConselho" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default" ng-repeat="conselho in listDadosConselho" ng-show="conselhoLoaded">
                                                <div class="panel-heading" role="tab" id="{{'headingConselho-' + conselho.tpc_id}}">
                                                    <h4 class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordionConselho" href="{{'#collapseConselho-' + conselho.tpc_id}}" aria-expanded="true" aria-controls="{{'collapseConselho-' + conselho.tpc_id}}" class="collapsed">{{conselho.tpc_nome}}
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="{{'collapseConselho-' + conselho.tpc_id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="{{'headingConselho-' + conselho.tpc_id}}">
                                                    <div class="panel-body">
                                                        <ul class="list">
                                                            <li>
                                                                <span class="list-item"><strong>Desempenho e aprendizagem</strong>{{conselho.desempenho}}</span>
                                                            </li>
                                                            <li>
                                                                <span class="list-item"><strong>Recomendações ao Aluno</strong>{{conselho.recomendacaoAluno}}</span>
                                                            </li>
                                                            <li>
                                                                <span class="list-item"><strong>Recomendações aos Pais/Responsáveis</strong>{{conselho.recomendacaoResponsavel}}</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!-- Compromisso de estudo -->
                        <section id="area-com-estudos" class="section-area">
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Compromissos de estudo</h3>
                            <div class="conteudo">
                                <div class="sr-only">Conteúdo dividido por Accordion</div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="panel-group accordion" id="accordionCompromisso" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default" ng-repeat="conselho in listDadosConselho" ng-show="conselhoLoaded">
                                                <div class="panel-heading" role="tab" id="{{'headingCompromisso-' + conselho.tpc_id}}">
                                                    <h4 class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordionCompromisso" href="{{'#collapseCompromisso-' + conselho.tpc_id}}" aria-expanded="true" aria-controls="{{'collapseCompromisso-' + conselho.tpc_id}}" class="collapsed">{{conselho.tpc_nome}}
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="{{'collapseCompromisso-' + conselho.tpc_id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="{{'headingCompromisso-' + conselho.tpc_id}}">
                                                    <div class="panel-body">
                                                        <ul class="list">
                                                            <li>
                                                                <span class="list-item"><strong>O que tenho feito?</strong>{{conselho.cpe_atividadeFeita}}</span>
                                                            </li>
                                                            <li>
                                                                <span class="list-item"><strong>O que pretendo fazer?</strong>{{conselho.cpe_atividadePretendeFazer}}</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <!-- SONDAGEM -->
                <div ng-controller="SondagemController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !sondagemLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <section id="area-sondagem" class="section-area">
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Resultados de sondagem</h3>
                            <div class="conteudo">
                                <div class="sr-only">Conteúdo dividido por Accordion</div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="panel-group accordion" id="accordionSondagem" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default" ng-repeat="sondagem in listSondagens" ng-show="sondagemLoaded">
                                                <div class="panel-heading" role="tab" id="{{'headingSondagem-' + sondagem.id}}">
                                                    <h4 class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordionSondagem" href="{{'#collapseSondagem-' + sondagem.id}}" aria-expanded="true" aria-controls="{{'collapseSondagem-' + sondagem.id}}" >{{sondagem.titulo}}
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="{{'collapseSondagem-' + sondagem.id}}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="{{'headingSondagem-' + sondagem.id}}">
                                                    <div class="panel-body">
                                                        <ul class="list">
                                                            <li ng-repeat="questao in sondagem.questoes">
                                                                <span class="list-header">{{questao.descricao}}</span>
                                                                <div class="obs-block" ng-repeat="agendamento in questao.agendamentos">
                                                                    <p ng-repeat="resposta in agendamento.respostas">
                                                                        <span class="list-item"><strong>{{resposta.subQuestao}}</strong><span ng-repeat="(index, respostaAluno) in resposta.respostasAluno">{{respostaAluno.resposta}}<span ng-if="index < resposta.respostasAluno.length - 1">; </span></span></span>
                                                                    </p>
                                                                    <p class="text-autor">Período de agendamento: <strong>{{agendamento.dataInicio}} - {{agendamento.dataFim ? agendamento.dataFim : "*"}}</strong></p>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <div style="max-width:700px">
                                                            <canvas id="line" class="chart chart-line" chart-data="getGraphData(sondagem.id)"
                                                                chart-labels="getGraphLabels(sondagem.id)" chart-series="getGraphSeries(sondagem.id)" chart-options="getGraphOptions(sondagem.id)"
                                                                chart-dataset-override="graphDatasetOverride" width="90" height="50"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <div ng-controller="AnotacaoController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !anotacaoLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <!-- OBSERVACOES INDIVIDUAIS -->
                        <section id="area-obs-individuais" class="section-area" >
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Observações individuais</h3>
                            <div class="conteudo">
                                <div class="obs-block" ng-repeat="anotacao in listAnotacoesDocente" ng-show="anotacaoLoaded">
                                    <p>
                                        {{anotacao.anotacao}}
                                    </p>
                                    <p class="text-autor">Observação do(a) professor(a) <strong>{{anotacao.nomeDocente}} | {{anotacao.nomeDisciplina}} | {{anotacao.data}}</strong></p>
                                </div>
                                <div class="obs-block" ng-repeat="anotacao in listAnotacoesGestor" ng-show="anotacaoLoaded">
                                    <p>
                                        {{anotacao.anotacao}}
                                    </p>
                                    <p class="text-autor">Observação do(a) <strong>{{anotacao.funcaoGestor}} | {{anotacao.data}}</strong></p>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <div ng-controller="JustificativaFaltaController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !justificativaLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <!-- Justificativa de falta -->
                        <section id="area-just-faltas" class="section-area">
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Justificativas de faltas</h3>
                            <div class="conteudo">
                                <div class="obs-block" ng-repeat="justificativa in listJustificativa" ng-show="justificativaLoaded">
                                    <p>
                                        <strong>{{justificativa.tipo}}</strong><span ng-if="justificativa.observacao"> - {{justificativa.observacao}}</span>
                                    </p>
                                    <p class="text-autor">Período: <strong>{{justificativa.dataInicio}} - {{justificativa.dataFim ? justificativa.dataFim : "*"}}</strong></p>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <div ng-controller="MovimentacaoController" ng-cloak>
                    <div ng-view>
                        <div class="loader" ng-if="!mensagemErro && !mensagemAlerta && !movimentacaoLoaded">
                            <img class="imgLoader" src="../../App_Themes/IntranetSMEBootStrap/images/ajax-loader.gif" style="border-width: 0px;">
                        </div>
                        <div ng-if="mensagemErro" class="summary" style="background: #fff url(/App_Themes/IntranetSMEBootStrap/images/error.png) no-repeat 45px 50%;">
                            {{mensagemErro}}
                        </div>
                        <div ng-if="mensagemAlerta" class="summary">
                            {{mensagemAlerta}}
                        </div>
                        <!-- Movimentações -->
                        <section id="area-cons-mov" class="section-area">
                            <h3><i class="material-icons pull-left">&#xE5CC;</i>Remanejamentos e reclassificações</h3>
                            <div class="conteudo">
                                <div class="obs-block" ng-repeat="movimentacao in listMovimentacoes" ng-show="movimentacaoLoaded">
                                    <h4>
                                        <strong>{{movimentacao.tipo}}</strong>
                                    </h4>
                                    <p ng-if="movimentacao.turmaAnterior">
                                        <strong>Origem: </strong>{{movimentacao.escolaAnterior + " | " + movimentacao.turmaAnterior}}
                                    </p>
                                    <p ng-if="movimentacao.turmaAtual">
                                        <strong>Destino: </strong>{{movimentacao.escolaAtual + " | " + movimentacao.turmaAtual}}
                                    </p>
                                    <p class="text-autor">Data de movimentação: <strong>{{movimentacao.dataRealizacao}}</strong></p>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </form>    
</body>
</html>
