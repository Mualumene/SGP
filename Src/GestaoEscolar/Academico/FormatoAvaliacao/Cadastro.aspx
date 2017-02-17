<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    Inherits="Academico_FormatoAvaliacao_Cadastro" CodeBehind="Cadastro.aspx.cs" %>

<%@ PreviousPageType VirtualPath="~/Academico/FormatoAvaliacao/Busca.aspx" %>
<%@ Register Src="~/WebControls/Combos/UCComboEscalaAvaliacao.ascx" TagName="_UCComboEscalaAvaliacao"
    TagPrefix="uc2" %>
<%@ Register Src="~/WebControls/Combos/UCComboTipoPeriodoCalendario.ascx" TagName="UCComboTipoPeriodoCalendario"
    TagPrefix="uc3" %>
<%@ Register Src="~/WebControls/FiltroEscolas/UCFiltroEscolas.ascx" TagName="UCFiltroEscolas"
    TagPrefix="uc4" %>
<%@ Register Src="~/WebControls/Mensagens/UCCamposObrigatorios.ascx" TagName="UCCamposObrigatorios"
    TagPrefix="uc5" %>
<%@ Register Src="~/WebControls/Combos/UCComboEscalaAvaliacaoParecer.ascx" TagName="UCComboEscalaAvaliacaoParecer"
    TagPrefix="uc7" %>
<%@ Register Src="~/WebControls/Combos/UCComboTipoDisciplina.ascx" TagName="UCComboTipoDisciplina"
    TagPrefix="uc6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function ValidateCheckBoxList(sender, args) {
            var checkBoxList = $("#" + sender.id).prev();
            var checkboxes = checkBoxList.find("input");
            var isValid = false;
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    isValid = true;
                    break;
                }
            }
            args.IsValid = isValid;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="updMensagens" runat="server">
        <ContentTemplate>
            <asp:Label ID="_lblMessage" runat="server" EnableViewState="False"></asp:Label>
            <asp:ValidationSummary ID="vsFormatoAvaliacao" runat="server" ValidationGroup="_ValidationFormatoAvaliacao" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="_uppCadastroFormatoAvaliacao" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <fieldset id="fdsFormatoAvaliacao" runat="server">
                <legend>Cadastro do formato de avalia��o</legend>
                <uc5:UCCamposObrigatorios ID="UCCamposObrigatorios1" runat="server" />
                <asp:Label ID="_lblNomeFormatoAvaliacao" runat="server" Text="Nome do formato de avalia��o *"
                    AssociatedControlID="_txtNomeFormatoAvaliacao"></asp:Label>
                <asp:TextBox ID="_txtNomeFormatoAvaliacao" runat="server" MaxLength="200" CssClass="text60C"></asp:TextBox>
                <asp:RequiredFieldValidator ID="_rfvNomeFormatoAvaliacao" ControlToValidate="_txtNomeFormatoAvaliacao"
                    runat="server" ErrorMessage="Nome do formato de avalia��o � obrigat�rio." ValidationGroup="_ValidationFormatoAvaliacao">*</asp:RequiredFieldValidator>
                <asp:CheckBox ID="_ckbBloqueado" Text="Bloqueado" runat="server" />
                <asp:CheckBox ID="ckbPlanejamentoAulasNotasConjunto" Text="Planejamento de aulas e lan�amento de notas conjunto"
                    runat="server" />
                <asp:Label ID="LabelTipoFormatoAvaliacao" runat="server" Text="Tipo do formato de avalia��o *"
                    AssociatedControlID="ddlTipoFormatoAvaliacao"></asp:Label>
                <asp:DropDownList ID="ddlTipoFormatoAvaliacao" runat="server" AppendDataBoundItems="True"
                    SkinID="text30C" OnSelectedIndexChanged="ddlTipoFormatoAvaliacao_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem Value="-1" Text="-- Selecione um tipo --" />
                    <asp:ListItem Value="1" Text="Conceito global" />
                    <asp:ListItem Value="2" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.ddlTipoFormatoAvaliacao.valor2 %>" />
                    <asp:ListItem Value="3" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.ddlTipoFormatoAvaliacao.valor3 %>" />
                </asp:DropDownList>
                <asp:CompareValidator ID="cvTipoFormatoAvaliacao" runat="server" ErrorMessage="Tipo do formato de avalia��o � obrigat�rio."
                    ControlToValidate="ddlTipoFormatoAvaliacao" Operator="GreaterThan" ValueToCompare="0"
                    Display="Dynamic" ValidationGroup="_ValidationFormatoAvaliacao" Visible="true"> *</asp:CompareValidator>
                <asp:CheckBox ID="ckbBloqueiaFrequenciaEfetivacao" Text="Bloquear frequ�ncia na efetiva��o do conceito global"
                    runat="server" Visible="false" />
                <asp:CheckBox ID="ckbBloqueiaFrequenciaEfetivacaoDisciplina" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.ckbBloqueiaFrequenciaEfetivacaoDisciplina.Text %>"
                    runat="server" Visible="false" />
                <asp:CheckBox ID="chkEfetivacaoDocente" Text="Efetiva��o do conceito global por docentes"
                    Visible="false" runat="server" />
                <asp:CheckBox ID="chkObrigatorioRelatorio" Text="Obrigat�rio relat�rio para reprova��o"
                    Visible="false" runat="server" />
                <asp:Label ID="LabelTipoLancamentoFrequencia" runat="server" Text="Tipo de lan�amento de frequ�ncia * "
                    AssociatedControlID="ddlTipoLancamentoFrequencia"></asp:Label>
                <asp:DropDownList ID="ddlTipoLancamentoFrequencia" runat="server" AppendDataBoundItems="True"
                    SkinID="text30C">
                    <asp:ListItem Value="-1">-- Selecione um tipo --</asp:ListItem>
                    <asp:ListItem Value="1">Aulas planejadas</asp:ListItem>
                    <asp:ListItem Value="2">Per�odo</asp:ListItem>
                    <asp:ListItem Value="3">Mensal</asp:ListItem>
                    <asp:ListItem Value="4">Aulas planejadas e mensal</asp:ListItem>
                    <asp:ListItem Value="5" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.ddlTipoLancamentoFrequencia.AulasDadas %>"></asp:ListItem>
                    <asp:ListItem Value="6">Aulas previstas do docente</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvTipoLancamentoFrequencia" runat="server" ErrorMessage="Tipo de lan�amento de frequ�ncia � obrigat�rio."
                    ControlToValidate="ddlTipoLancamentoFrequencia" Operator="GreaterThan" ValueToCompare="0"
                    Display="Dynamic" ValidationGroup="_ValidationFormatoAvaliacao" Visible="true"> *</asp:CompareValidator>
                <asp:Label ID="lblTipoApuracaoFrequencia" runat="server" Text="Tipo de apura��o de frequ�ncia * "
                    AssociatedControlID="ddlTipoApuracaoFrequencia"></asp:Label>
                <asp:DropDownList ID="ddlTipoApuracaoFrequencia" runat="server" AppendDataBoundItems="True"
                    SkinID="text30C">
                    <asp:ListItem Value="-1">-- Selecione um tipo --</asp:ListItem>
                    <asp:ListItem Value="1">Tempos de aula</asp:ListItem>
                    <asp:ListItem Value="2">Dia</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvTipoApuracaoFrequencia" runat="server" ErrorMessage="Tipo de apura��o de frequ�ncia � obrigat�rio."
                    ControlToValidate="ddlTipoApuracaoFrequencia" Operator="GreaterThan" ValueToCompare="0"
                    Display="Dynamic" ValidationGroup="_ValidationFormatoAvaliacao" Visible="true"> *</asp:CompareValidator>
                <asp:Label ID="lblCalculoQtdeAulasDadas" runat="server" Text="C�lculo de quantidade de aulas dadas * "
                    AssociatedControlID="ddlCalculoQtdeAulasDadas"></asp:Label>
                <asp:DropDownList ID="ddlCalculoQtdeAulasDadas" runat="server" AppendDataBoundItems="True"
                    SkinID="text30C">
                    <asp:ListItem Value="-1">-- Selecione um tipo --</asp:ListItem>
                    <asp:ListItem Value="1">Autom�tico</asp:ListItem>
                    <asp:ListItem Value="2">Manual</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvCalculoQtdeAulasDadas" runat="server" ErrorMessage="C�lculo de quantidade de aulas dadas � obrigat�rio."
                    ControlToValidate="ddlCalculoQtdeAulasDadas" Operator="GreaterThan" ValueToCompare="0"
                    Display="Dynamic" ValidationGroup="_ValidationFormatoAvaliacao" Visible="true"> *</asp:CompareValidator>
                <div id="divCriterioAprovacaoResultadoFinal" runat="server" visible="false">
                    <asp:Label ID="lblCriterioAprovacaoResultadoFinal" runat="server" Text="Crit�rio de aprova��o para resultado final *"
                        AssociatedControlID="ddlCriterioAprovacaoResultadoFinal"></asp:Label>
                    <asp:DropDownList ID="ddlCriterioAprovacaoResultadoFinal" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCriterioAprovacaoResultadoFinal_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:CompareValidator ID="cpvCriterioAprovacaoResultadoFinal" runat="server" ErrorMessage="Crit�rio de aprova��o para resultado final � obrigat�rio."
                        ControlToValidate="ddlCriterioAprovacaoResultadoFinal" Operator="GreaterThan"
                        ValueToCompare="0" Display="Dynamic" ValidationGroup="_ValidationFormatoAvaliacao"
                        Visible="true"> *</asp:CompareValidator>
                </div>
                <asp:CheckBox ID="chkSugerirResultadoFinalDisciplina" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkSugerirResultadoFinalDisciplina.Text %>"
                    runat="server" Visible="false" />
                <asp:CheckBox ID="chkFechamentoAutomatico" runat="server" 
                    Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkFechamentoAutomatico.Text %>"
                    OnCheckedChanged="chkFechamentoAutomatico_CheckedChanged" />
                <asp:Label Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.lblPercentualMinimoFrequenciaFinalAjustadaDisciplina.Text %>" ID="lblPercentualMinimoFrequenciaFinalAjustadaDisciplina"
                    runat="server" AssociatedControlID="txtPercentualMinimoFrequenciaFinalAjustadaDisciplina" Visible="false" EnableViewState="false"></asp:Label>
                <asp:TextBox ID="txtPercentualMinimoFrequenciaFinalAjustadaDisciplina" runat="server" SkinID="Decimal"
                    MaxLength="6" Visible="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPercentualMinimoFrequenciaFinalAjustadaDisciplina" runat="server" ControlToValidate="txtPercentualMinimoFrequenciaFinalAjustadaDisciplina"
                    ErrorMessage="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.rfvPercentualMinimoFrequenciaFinalAjustadaDisciplina.ErrorMessage %>" ValidationGroup="_ValidationFormatoAvaliacao">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvFrequenciaFinalAjustadaMin" runat="server" ControlToValidate="txtPercentualMinimoFrequenciaFinalAjustadaDisciplina"
                    Display="Dynamic" ErrorMessage="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.cvFrequenciaFinalAjustadaMin.ErrorMessage %>"
                    Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                    ValueToCompare="0">*</asp:CompareValidator>
                <asp:CompareValidator ID="cvFrequenciaFinalAjustadaMax" runat="server" ControlToValidate="txtPercentualMinimoFrequenciaFinalAjustadaDisciplina"
                    Display="Dynamic" ErrorMessage="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.cvFrequenciaFinalAjustadaMax.ErrorMessage %>"
                    Operator="LessThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                    ValueToCompare="100">*</asp:CompareValidator>
                <asp:CheckBox ID="chkMostraSomaMedia" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkMostraSomaMedia.Text %>"
                    runat="server" />
                <asp:CheckBox ID="chkPermiteRecuperacaoQualquerNota" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkPermiteRecuperacaoQualquerNota.Text %>"
                    runat="server" />
                <asp:CheckBox ID="chkPermiteRecuperacaoForaPeriodo" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkPermiteRecuperacaoForaPeriodo.Text %>"
                    runat="server" />
                <fieldset id="_fieldsetPercentual" runat="server">
                    <asp:Label Text="Percentual m�nimo de frequ�ncia *" ID="_lblPercentualMinimoFrequencia"
                        runat="server" AssociatedControlID="_txtPercentualMinimoFrequencia">  </asp:Label>
                    <asp:TextBox ID="_txtPercentualMinimoFrequencia" runat="server" SkinID="Decimal"
                        MaxLength="6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="_rfvPercMinFreq" runat="server" ControlToValidate="_txtPercentualMinimoFrequencia"
                        ErrorMessage="Percentual m�nimo de frequ�ncia � obrigat�rio." ValidationGroup="_ValidationFormatoAvaliacao">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvFrequenciaMin" runat="server" ControlToValidate="_txtPercentualMinimoFrequencia"
                        Display="Dynamic" ErrorMessage="Percentual m�nimo de frequ�ncia deve ser maior que 0."
                        Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                        ValueToCompare="0">*</asp:CompareValidator>
                    <asp:CompareValidator ID="cvFrequenciaMax" runat="server" ErrorMessage="Percentual m�nimo de frequ�ncia deve ser menor que 100."
                        ControlToValidate="_txtPercentualMinimoFrequencia" Display="Dynamic" Operator="LessThan"
                        Type="Double" ValidationGroup="_ValidationFormatoAvaliacao" ValueToCompare="100">*</asp:CompareValidator>
                    <asp:Label Text="Percentual m�nimo de frequ�ncia para relat�rio de alunos com baixa frequ�ncia" ID="_lblPercentualBaixaFrequencia"
                        runat="server" AssociatedControlID="_txtPercentualBaixaFrequencia">  </asp:Label>
                    <asp:TextBox ID="_txtPercentualBaixaFrequencia" runat="server" SkinID="Decimal"
                        MaxLength="6"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="_txtPercentualBaixaFrequencia"
                            ErrorMessage="Percentual m�nimo de frequ�ncia para relat�rio de alunos com baixa frequ�ncia � obrigat�rio." ValidationGroup="_ValidationFormatoAvaliacao">*</asp:RequiredFieldValidator>--%>
                    <asp:CompareValidator ID="cvBaixaFrequenciaMin" runat="server" ControlToValidate="_txtPercentualBaixaFrequencia"
                        Display="Dynamic" ErrorMessage="Percentual m�nimo de frequ�ncia para relat�rio de alunos com baixa frequ�ncia deve ser maior que 0."
                        Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                        ValueToCompare="0">*</asp:CompareValidator>
                    <asp:CompareValidator ID="cvBaixaFrequenciaMax" runat="server" ErrorMessage="Percentual m�nimo de frequ�ncia para relat�rio de alunos com baixa frequ�ncia deve ser menor que 100."
                        ControlToValidate="_txtPercentualBaixaFrequencia" Display="Dynamic" Operator="LessThan"
                        Type="Double" ValidationGroup="_ValidationFormatoAvaliacao" ValueToCompare="100">*</asp:CompareValidator>

                    <asp:Label ID="_lblVariacao" runat="server" Text="Varia��o *" AssociatedControlID="_txtVariacao"></asp:Label>
                    <asp:TextBox ID="_txtVariacao" runat="server" SkinID="Decimal" MaxLength="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="_rfvVariacao" runat="server" ErrorMessage="Varia��o � obrigat�rio."
                        ControlToValidate="_txtVariacao" ValidationGroup="_ValidationFormatoAvaliacao">*</asp:RequiredFieldValidator>
                </fieldset>
                <fieldset id="_fieldConceitoGlobal" runat="server">
                    <legend>Conceito global</legend>
                    <div>
                        <uc2:_UCComboEscalaAvaliacao ID="_UCComboEscalaAvaliacao_Esa_idConceitoGlobal" runat="server" />
                        <asp:Label Text="Valor m�nimo para aprova��o do conceito global *" ID="_lblValorMinimoAprovacaoConceitoGlobal"
                            runat="server" AssociatedControlID="_txtValorMinimoAprovacaoConceitoGlobal">  </asp:Label>
                        <asp:TextBox ID="_txtValorMinimoAprovacaoConceitoGlobal" runat="server" MaxLength="10"
                            Visible="false" SkinID="Decimal"></asp:TextBox>
                        <asp:CompareValidator ID="cvMinConceitoGlobal" runat="server" ControlToValidate="_txtValorMinimoAprovacaoConceitoGlobal"
                            Display="Dynamic" ErrorMessage="Valor m�nimo para aprova��o do conceito global deve ser maior que 0."
                            Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                            ValueToCompare="0">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="_rqfValorMinimoGlobal" runat="server" ControlToValidate="_txtValorMinimoAprovacaoConceitoGlobal"
                            ErrorMessage="Valor m�nimo para aprova��o do conceito global � obrigat�rio."
                            ValidationGroup="_ValidationFormatoAvaliacao" Visible="false">*</asp:RequiredFieldValidator>
                        <uc7:UCComboEscalaAvaliacaoParecer ID="UCComboEscalaAvaliacaoParecerConceitoGlobal"
                            runat="server" Visible="false" />
                        <asp:CheckBox ID="chkUtilizarAvaliacaoAdicional" runat="server" Text="Utilizar avalia��o adicional"
                            OnCheckedChanged="chkUtilizarAvaliacaoAdicional_CheckedChanged" AutoPostBack="true" />
                        <uc2:_UCComboEscalaAvaliacao ID="_UCComboEscalaAvaliacao_Esa_idConceitoGlobalAdicional"
                            runat="server" Visible="false" />
                    </div>
                </fieldset>
                <fieldset id="_fieldPorDisciplina" runat="server">
                    <legend>
                        <asp:Label runat="server" ID="lblLegend" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.lblLegend.Text %>"></asp:Label></legend>
                    <div>
                        <uc2:_UCComboEscalaAvaliacao ID="_UCComboEscalaAvaliacao_Esa_idPorDisciplina" runat="server" />
                        <asp:Label Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro._lblValorMinimoAprovacaoPorDisciplina.Text %>" ID="_lblValorMinimoAprovacaoPorDisciplina"
                            runat="server" AssociatedControlID="_txtValorMinimoAprovacaoPorDisciplina">  </asp:Label>
                        <asp:TextBox ID="_txtValorMinimoAprovacaoPorDisciplina" runat="server" MaxLength="10"
                            Visible="false" SkinID="Decimal"></asp:TextBox>
                        <asp:CompareValidator ID="_cpvMinPorDisciplina" runat="server" ControlToValidate="_txtValorMinimoAprovacaoPorDisciplina"
                            Display="Dynamic"
                            Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                            ValueToCompare="0" Visible="true">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="_rfvValorMinimoDisciplina" runat="server" ControlToValidate="_txtValorMinimoAprovacaoPorDisciplina"
                            ValidationGroup="_ValidationFormatoAvaliacao"
                            Visible="false">*</asp:RequiredFieldValidator>
                        <uc7:UCComboEscalaAvaliacaoParecer ID="UCComboEscalaAvaliacaoParecerPorDisciplina"
                            runat="server" Visible="false" />
                    </div>
                </fieldset>
                <fieldset id="_fieldDocente" runat="server">
                    <legend>Docente</legend>
                    <div>
                        <uc2:_UCComboEscalaAvaliacao ID="_UCComboEscalaAvaliacao_Esa_idDocente" runat="server" />
                        <asp:Label Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro._lblValorMinimoAprovacaoDocente.Text %>" ID="_lblValorMinimoAprovacaoDocente"
                            runat="server" AssociatedControlID="_txtValorMinimoAprovacaoDocente">  </asp:Label>
                        <asp:TextBox ID="_txtValorMinimoAprovacaoDocente" runat="server" MaxLength="10"
                            Visible="false" SkinID="Decimal"></asp:TextBox>
                        <asp:CompareValidator ID="_cpvMinPorDocente" runat="server" ControlToValidate="_txtValorMinimoAprovacaoDocente"
                            Display="Dynamic"
                            Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                            ValueToCompare="0" Visible="true">*</asp:CompareValidator>
                        <uc7:UCComboEscalaAvaliacaoParecer ID="UCComboEscalaAvaliacaoParecerDocente" runat="server"
                            Visible="false" />
                    </div>
                </fieldset>
                <fieldset id="_fieldProgressaoparcial" runat="server" visible="False">
                    <legend>Progress�o parcial</legend>
                    <asp:Label ID="LabelTipoProgressaoParcial" runat="server" Text="Tipo de progress�o parcial"
                        AssociatedControlID="ddlTipoProgressaoParcial"></asp:Label>
                    <asp:DropDownList ID="ddlTipoProgressaoParcial" runat="server" AppendDataBoundItems="True"
                        SkinID="text30C" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoProgressaoParcial_SelectedIndexChanged">
                        <asp:ListItem Value="-1">-- Selecione um tipo --</asp:ListItem>
                        <asp:ListItem Value="1">Per�odo de matr�cula seguinte</asp:ListItem>
                        <asp:ListItem Value="2">Anterior ao per�odo de matr�cula seguinte</asp:ListItem>
                        <asp:ListItem Selected="True" Value="3">Sem progress�o parcial</asp:ListItem>
                    </asp:DropDownList>
                    <uc7:UCComboEscalaAvaliacaoParecer ID="UCComboEscalaAvaliacaoParecerProgressaoParcial"
                        runat="server" Visible="false" />
                    <asp:Label Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro._lblValorMinimoProgressaoParcialPorDisciplina.Text %>" ID="_lblValorMinimoProgressaoParcialPorDisciplina"
                        runat="server" AssociatedControlID="_lblValorMinimoProgressaoParcialPorDisciplina">  </asp:Label>
                    <asp:TextBox ID="_txtValorMinimoProgressaoParcialPorDisciplina" runat="server" MaxLength="10"
                        SkinID="Decimal"></asp:TextBox>
                    <asp:CompareValidator ID="cvMinPorgressaoParcial" runat="server" ControlToValidate="_txtValorMinimoProgressaoParcialPorDisciplina"
                        Display="Dynamic"
                        Operator="GreaterThan" Type="Double" ValidationGroup="_ValidationFormatoAvaliacao"
                        ValueToCompare="0">*</asp:CompareValidator>
                    <asp:Label Text="Quantidade m�xima de progress�o parcial" ID="_lblQtdeMaxDisciplinasProgressaoParcial"
                        runat="server" AssociatedControlID="_txtQtdeMaxDisciplinasProgressaoParcial">
                    </asp:Label>
                    <asp:TextBox ID="_txtQtdeMaxDisciplinasProgressaoParcial" runat="server" MaxLength="10"
                        CssClass="numeric" SkinID="Numerico"></asp:TextBox>
                </fieldset>

            </fieldset>
            <fieldset>
                <legend>Cadastro de avalia��o</legend>
                <div></div>
                <asp:GridView ID="_dgvAvaliacao" runat="server" AutoGenerateColumns="False" OnRowCommand="_dgvAvaliacao_RowCommand"
                    DataKeyNames="fav_id,ava_id" OnRowDataBound="_dgvAvaliacao_RowDataBound" EmptyDataText="N�o existem avalia��es cadastradas.">
                    <Columns>
                        <asp:BoundField DataField="fav_id" HeaderText="fav_id" InsertVisible="False" Visible="false"
                            SortExpression="fav_id" ReadOnly="True" />
                        <asp:BoundField DataField="ava_id" HeaderText="ava_id" InsertVisible="False" Visible="false"
                            SortExpression="ava_id" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Nome da avalia��o">
                            <ItemTemplate>
                                <asp:LinkButton ID="_lkbAlterar" runat="server" CommandName="Editar" Text='<%# Bind("ava_nome") %>'
                                    CssClass="wrap600px"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ava_tipo_periodo_grid" HeaderText="Tipo" SortExpression="ava_tipo_periodo_grid" />
                        <asp:BoundField DataField="ava_apareceBoletim_grid" HeaderText="Boletim" SortExpression="ava_apareceBoletim_grid">
                            <HeaderStyle CssClass="center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ava_avaliacao_relacionada" HeaderText="Relacionada" SortExpression="ava_avaliacao_relacionada"
                            HtmlEncode="false" />
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:GridView>
                <div id="divDadosAvaliacao" runat="server">
                    <asp:CheckBox ID="chkCalcularMediaAvaliacaoFinal" runat="server" Text="Calcular m�dia na avalia��o final"
                        OnCheckedChanged="chkCalcularMediaAvaliacaoFinal_CheckedChanged" AutoPostBack="true" />
                    <div id="divFormulaCalculoMediaFinal" runat="server">
                        <asp:Label ID="lblCalculoMediaFinal" runat="server" Text="Tipo de c�lculo de m�dia"></asp:Label>
                        <asp:RadioButtonList ID="rdlTipoCalculoMediaFinal" runat="server"
                            RepeatDirection="Horizontal" OnSelectedIndexChanged="rdlTipoCalculoMediaFinal_SelectedIndexChanged"
                            AutoPostBack="true">
                            <asp:ListItem Text="M�dia das avalia��es peri�dicas" Value="3" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Informar peso nas avalia��es peri�dicas" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Somat�ria das avalia��es peri�dicas" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Label ID="lblFormulaMedia" runat="server" Visible="false"></asp:Label>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <div class="right">
                    <asp:Button ID="_btnCancelarFormatoAvaliacao" runat="server" Text="Cancelar" OnClick="_btnCancelarFormatoAvaliacao_Click"
                        CausesValidation="false" />
                </div>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div id="divAvaliacao" title="Cadastro de avalia��o" class="hide">
        <asp:UpdatePanel ID="_uppAvaliacao" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="_lblMessageInsert1" runat="server" EnableViewState="False"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="_ValidationAvaliacao" />
                <fieldset>
                    <uc5:UCCamposObrigatorios ID="UCCamposObrigatorios2" runat="server" />
                    <asp:Label ID="_lblNomeAvaliacao" runat="server" Text="Nome da avalia��o *" AssociatedControlID="_txtNomeAvaliacao"></asp:Label>
                    <asp:TextBox ID="_txtNomeAvaliacao" runat="server" MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator
                        ID="_rfvNomeAvaliacao" runat="server" ControlToValidate="_txtNomeAvaliacao" ErrorMessage="Nome da avalia��o � obrigat�rio."
                        ValidationGroup="_ValidationAvaliacao">*</asp:RequiredFieldValidator>
                    <asp:CheckBox ID="_ckbApareceBoletimAvaliacao" Text="Aparece no boletim" runat="server" />
                    <asp:Label ID="_lblTipoAvaliacao" runat="server" Text="Tipo da avalia��o *" AssociatedControlID="_ddlTipoAvaliacao"></asp:Label>
                    <asp:DropDownList ID="_ddlTipoAvaliacao" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="_ddlTipoAvaliacao_SelectedIndexChanged">
                        <asp:ListItem Value="0" Text="-- Selecione um tipo --"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Peri�dica"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Recupera��o"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Final"></asp:ListItem>
                        <asp:ListItem Value="5" Text="Peri�dica + Final "></asp:ListItem>
                        <asp:ListItem Value="4" Text="Conselho de classe"></asp:ListItem>
                        <asp:ListItem Value="7" Text="Recupera��o final"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="_cvTipoAvaliacao" runat="server" ErrorMessage="Tipo da avalia��o � obrigat�rio."
                        ControlToValidate="_ddlTipoAvaliacao" Operator="GreaterThan" ValueToCompare="0"
                        Display="Dynamic" ValidationGroup="_ValidationAvaliacao">*
                    </asp:CompareValidator>
                    <div id="divPeso" runat="server" visible="false">
                        <asp:Label ID="Label1" runat="server" Text="Peso da avalia��o na m�dia final (%)"
                            AssociatedControlID="txtPeso"></asp:Label>
                        <asp:TextBox ID="txtPeso" runat="server" MaxLength="6" SkinID="Decimal"></asp:TextBox>
                        <asp:CompareValidator ControlToValidate="txtPeso" runat="server" ID="cvPeso"
                            ValueToCompare="100" Operator="LessThanEqual" ValidationGroup="_ValidationAvaliacao" Type="Double"
                            Display="Dynamic" ErrorMessage="Peso da avalia��o deve ser menor ou igual a 100,00%.">*</asp:CompareValidator>
                    </div>
                    <asp:CheckBox ID="ckbGlobalNaoObrig" Text="Avalia��o do conceito global n�o obrigat�rio" Visible="false"
                        runat="server" />
                    <asp:CheckBox ID="ckbGlobalNaoObrigFrequencia" Text="Frequ�ncia do conceito global n�o obrigat�rio" Visible="false"
                        runat="server" />
                    <asp:CheckBox ID="ckbDiscNaoObrig" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.ckbDiscNaoObrig.Text %>" Visible="false" Checked="True"
                        runat="server" />
                    <asp:CheckBox ID="chkExibeSemProfessor" runat="server" Text="Exibir op��o Sem professor" Visible="false" Checked="true" />
                    <asp:CheckBox ID="chkExibeNaoAvaliados" runat="server" Text="Exibir n�o avaliados" Visible="false" Checked="false" />
                    <asp:CheckBox ID="chkExibeObservacaoConselho" runat="server" Text="Exibir observa��o para conselho pedag�gico" Visible="false" Checked="false" />
                    <asp:CheckBox ID="chkExibeObservacaoDisciplina" runat="server" Text="Exibir observa��o para as disciplinas" Visible="false" Checked="false" />
                    <asp:CheckBox ID="chkExibeFrequencia" runat="server" Text="Exibir frequ�ncia" Visible="true" Checked="false" />
                    <asp:CheckBox ID="chkExibeNotaPosConselho" Text="Exibir nota p�s-conselho" runat="server" Checked="false" />
                    <asp:CheckBox ID="chkAvaliacaoFinalAnalitica" Text="Avalia��o final anal�tica" runat="server" Checked="false" />
                    <asp:CheckBox ID="chkOcultarAtualizacao" Text="Ocultar bot�o de atualiza��o de notas e frequ�ncia" runat="server" Checked="false" />
                    <div id="divExibicaoBoletim" runat="server" visible="false">
                        <asp:Label ID="lblExibicaoBoletim" runat="server" Text="Exibi��o no boletim"></asp:Label>
                        <asp:CheckBox ID="chkConceitoGlobalNota" runat="server" Text="Conceito global nota"
                            Visible="false" />
                        <asp:CheckBox ID="chkConceitoGlobalFrequencia" runat="server" Text="Conceito global frequ�ncia"
                            Visible="false" />
                        <asp:CheckBox ID="chkConceitoGlobalAdicional" runat="server" Text="Conceito global avalia��o adicional"
                            Visible="false" />
                        <asp:CheckBox ID="chkDisciplinaNotas" runat="server" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkDisciplinaNotas.Text %>" Visible="false" />
                        <asp:CheckBox ID="chkDisciplinaFrequencia" runat="server" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkDisciplinaFrequencia.Text %>"
                            Visible="false" />
                        <asp:Label ID="lblMessageExibicaoBoletim" runat="server" Visible="False"></asp:Label>
                    </div>
                    <asp:CheckBox ID="chkConsideraPeriodoLetivo" runat="server" Text="Considera per�odo letivo"
                        Visible="false" AutoPostBack="true" OnCheckedChanged="chkConsideraPeriodoLetivo_CheckedChanged" />
                    <uc3:UCComboTipoPeriodoCalendario ID="_UCComboTipoPeriodoCalendario" runat="server" />
                    <div id="divRecBaseada" runat="server" visible="false">
                        <asp:Label ID="lblRecBaseada" runat="server" Text="Avalia��o baseada no(a) *"></asp:Label>
                        <asp:CheckBox ID="chkBaseadaConceitoGlobal" runat="server" Text="Conceito global"
                            Visible="false" OnCheckedChanged="chkBaseadaConceitoGlobal_CheckedChanged" />
                        <div id="divConceitoMaximo" runat="server" visible="false">
                            <asp:Label ID="lblConceitoMaximo" runat="server" Text="Conceito m�ximo *" AssociatedControlID="ddlConceitoMaximo"></asp:Label>
                            <asp:DropDownList ID="ddlConceitoMaximo" runat="server">
                                <asp:ListItem Value="0" Text="-- Selecione um conceito m�ximo --"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Qualquer um"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Parecer m�nimo para aprova��o"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cpvConceitoMaximo" runat="server" ErrorMessage="Conceito m�ximo � obrigat�rio."
                                ControlToValidate="ddlConceitoMaximo" Operator="GreaterThan" ValueToCompare="0"
                                Display="Dynamic" ValidationGroup="_ValidationAvaliacao">*
                            </asp:CompareValidator>
                        </div>
                        <asp:CheckBox ID="chkBaseadaNotaDisciplina" runat="server" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkBaseadaNotaDisciplina.Text %>"
                            Visible="false" />
                        <asp:CheckBox ID="chkBaseadaAvaliacaoAdicional" runat="server" Text="Avalia��o adicional"
                            Visible="false" />
                        <asp:Label ID="lblMessageAvisoRecBaseada" runat="server" Visible="False"></asp:Label>
                    </div>
                    <div id="divRegraRecuperacao" runat="server" visible="false">
                        <asp:Label ID="lblRegraRecuperacao" runat="server" Text="Regra para recupera��o"></asp:Label>
                        <asp:CheckBox ID="chkRegraConceito" runat="server" Text="Conceito global m�nimo para aprova��o n�o atingido"
                            Visible="false" />
                        <asp:CheckBox ID="chkRegraFrequencia" runat="server" Text="Frequ�ncia m�nima n�o atingida at� avalia��o final"
                            Visible="false" />
                        <asp:CheckBox ID="chkRegraNotas" runat="server" Text="<%$ Resources:Academico, FormatoAvaliacao.Cadastro.chkRegraNotas.Text %>"
                            Visible="false" />
                    </div>
                </fieldset>
                <fieldset id="_fdsAvaliacaoRelacionada" runat="server">
                    <legend>Cadastro de avalia��o relacionada</legend>
                    <asp:GridView ID="_dgvAvaliacaoRelacionada" runat="server" AutoGenerateColumns="False"
                        Visible="False" DataKeyNames="avr_id" OnRowCommand="_dgvAvaliacaoRelacionada_RowCommand"
                        OnRowDataBound="_dgvAvaliacaoRelacionada_RowDataBound" EmptyDataText="N�o existem avalia��es relacionadas cadastradas.">
                        <Columns>
                            <asp:BoundField DataField="fav_id" HeaderText="fav_id" InsertVisible="False" Visible="false"
                                SortExpression="fav_id" ReadOnly="True" />
                            <asp:BoundField DataField="ava_id" HeaderText="ava_id" InsertVisible="False" Visible="false"
                                SortExpression="ava_id" ReadOnly="True" />
                            <asp:BoundField DataField="avr_id" HeaderText="avr_id" InsertVisible="False" Visible="false"
                                SortExpression="avr_id" ReadOnly="True" />
                            <asp:TemplateField HeaderText="Avalia��o">
                                <ItemTemplate>
                                    <asp:LinkButton ID="_lkbAlterar" runat="server" CommandName="Editar" Text='<%# Bind("ava_rel_nome") %>'
                                        PostBackUrl=""></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ava_rel_opcoes_grid" HeaderText="Op��es" SortExpression="ava_rel_opcoes_grid" />
                            <asp:TemplateField HeaderText="Excluir" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton ID="_btnExcluir" SkinID="btExcluir" CommandName="Deletar" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle CssClass="center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </fieldset>
                <div class="right">
                    <asp:Button ID="_btnCancelarAvaliacao" runat="server" Text="Cancelar" OnClick="_btnCancelarAvaliacao_Click"
                        CausesValidation="false" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="divAvaliacaoRelacionada" title="Cadastro de avalia��o relacionada" class="hide">
        <asp:UpdatePanel ID="_uppAvaliacaoRelacionada" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="_lblMessageInsert2" runat="server" EnableViewState="False"></asp:Label><asp:ValidationSummary
                    ID="ValidationSummary3" runat="server" ValidationGroup="_ValidationAvaliacaoRelacionada" />
                <fieldset>
                    <asp:Label ID="_lblAvaliacaoRelacionada" runat="server" Text="Avalia��o *" AssociatedControlID="_ddlAvaliacao"></asp:Label>
                    <asp:DropDownList ID="_ddlAvaliacao" runat="server" AppendDataBoundItems="true" DataTextField="ava_nome"
                        DataValueField="ava_id" Width="350px">
                    </asp:DropDownList>
                    <asp:CompareValidator ID="_cvComoAvaliacao" runat="server" ErrorMessage="Avalia��o � obrigat�rio."
                        ControlToValidate="_ddlAvaliacao" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic"
                        ValidationGroup="_ValidationAvaliacaoRelacionada">*</asp:CompareValidator><br />
                    <asp:CheckBox ID="_ckbSubstituirNota_AvaliacaoRelacionada" runat="server" Text="Substituir nota?" />
                    <asp:CheckBox ID="_ckbManterMaiorNota_AvaliacaoRelacionada" runat="server" Text="Manter maior nota?" />
                    <asp:CheckBox ID="_ckbObrigatorioNaoAtingirNotaMinima_AvaliacaoRelacionada" runat="server"
                        Text="Obrigat�rio se n�o atingir nota m�nima?" />
                    <div class="right">
                        <asp:Button ID="_btnCancelarAvaliacaoRelacionada" runat="server" Text="Cancelar"
                            OnClick="_btnCancelarAvaliacaoRelacionada_Click" CausesValidation="false" />
                    </div>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
