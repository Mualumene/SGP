﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="GestaoEscolar.Classe.LancamentoSondagem.Cadastro" %>

<%@ PreviousPageType VirtualPath="~/Classe/LancamentoSondagem/Busca.aspx" %>
<%@ Register Src="../../WebControls/Mensagens/UCLoader.ascx" TagName="UCLoader" TagPrefix="uc1" %>
<%@ Register Src="~/WebControls/Combos/UCComboUAEscola.ascx" TagName="UCComboUAEscola" TagPrefix="uc2" %>
<%@ Register Src="~/WebControls/Combos/Novos/UCCCursoCurriculo.ascx" TagName="UCCCursoCurriculo" TagPrefix="uc3" %>
<%@ Register Src="~/WebControls/Combos/Novos/UCCCalendario.ascx" TagName="UCComboCalendario" TagPrefix="uc4"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:UCLoader ID="UCLoader1" runat="server" AssociatedUpdatePanelID="updLancamento" />
    <asp:UpdatePanel ID="updMensagem" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" ValidationGroup="FiltroTurma" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <fieldset id="fdsSondagem" runat="server">
        <legend><asp:Label runat="server" ID="lblLegend" Text="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lblLegend.Text %>" /></legend>
        <asp:Label ID="lblDadosSondagem" runat="server" EnableViewState="False"></asp:Label>
        <br /><br />
        <asp:UpdatePanel runat="server" ID="updLancamento" UpdateMode="Conditional">
            <ContentTemplate>
                <fieldset>
                    <legend><asp:Literal runat="server" ID="litFiltroTurma" Text="<%$ Resources:Classe, LancamentoSondagem.Cadastro.litFiltroTurma.Text %>"></asp:Literal></legend>
                    <uc2:UCComboUAEscola runat="server" ID="UCComboUAEscola" AsteriscoObg="true" ObrigatorioEscola="true" ObrigatorioUA="true"
                        CarregarEscolaAutomatico="true" MostraApenasAtivas="true" MostrarMessageSelecioneEscola="true" MostrarMessageSelecioneUA="true" />
                    <uc4:UCComboCalendario ID="UCComboCalendario" runat="server" MostrarMensagemSelecione="true" Obrigatorio="true" PermiteEditar="false" />
                    <uc3:UCCCursoCurriculo runat="server" ID="UCCCursoCurriculo" Obrigatorio="true" MostrarMensagemSelecione="true" PermiteEditar="false" />
                    <asp:Label ID="lblTurma" Text="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lblTurma.Text %>" runat="server" AssociatedControlID="ddlTurma"></asp:Label>
                    <asp:DropDownList ID="ddlTurma" runat="server" AppendDataBoundItems="True"
                        AutoPostBack="true" DataTextField="tur_codigo" DataValueField="tur_id" SkinID="text60C"
                        OnSelectedIndexChanged="ddlTurma_SelectedIndexChanged">
                    </asp:DropDownList>
                </fieldset>
                <div class="responsive-scroll area-form scroll-table-full">
                    <asp:Label ID="lblResultadoVazio" runat="server" Visible="false"></asp:Label>
                    <div runat="server" id="divLancamentoMulti" visible="false">
                        <asp:Repeater ID="rptLancamentoMulti" runat="server" OnItemDataBound="rptLancamento_ItemDataBound">
                        <HeaderTemplate>
                            <table class="grid sortableFrequencia" cellspacing="0">
                                <thead>
                                    <tr class="gridHeader" id="headerBotoes">
                                        <th></th>
                                        <th runat="server" id="thBotoes">
                                            <div style="float:left">
                                                <asp:LinkButton Style="zoom: 140%; -moz-transform: scale(1.40);" ID="lkbAnterior" Text="|<" runat="server"
                                                    CssClass="ui-icon ui-icon-circle-triangle-w" OnClick="lkbAnterior_Click" ToolTip="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lkbAnterior.ToolTip %>"></asp:LinkButton>
                                            </div>
                                            <div style="float:right">
                                                <asp:LinkButton Style="zoom: 140%; -moz-transform: scale(1.40);" ID="lkbProximo" Text=">|" runat="server"
                                                    CssClass="ui-icon ui-icon-circle-triangle-e" OnClick="lkbProximo_Click" ToolTip="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lkbProximo.ToolTip %>"/>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="gridHeader" id="headerAgendamentos">
                                        <th runat="server" id="thAgendamentos">
                                            <asp:Repeater ID="rptAgendamentos" runat="server" OnItemDataBound="rptAgendamentos_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thAgendamento" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblAgendamento" runat="server" Text='<%# Bind("periodo") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        </th>
                                    </tr>
                                    <tr class="gridHeader" id="headerQuestoes">
                                        <th></th>
                                        <asp:Repeater ID="rptQuestoesHistorico" runat="server" OnItemDataBound="rptQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="rptQuestoes" runat="server" OnItemDataBound="rptQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tr>
                                    <tr class="gridHeader" id="headerSubQuestoes">
                                        <th></th>
                                        <asp:Repeater ID="rptSubQuestoesHistorico" runat="server" OnItemDataBound="rptSubQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thSubQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblSubQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="rptSubQuestoes" runat="server" OnItemDataBound="rptSubQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thSubQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblSubQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tr>
                                    <tr class="gridHeader">
                                        <th>
                                            <asp:Label ID="lblNomeAluno" runat="server" Text="Aluno"></asp:Label>
                                        </th>
                                        <asp:Repeater ID="rptRespostasHistorico" runat="server">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblResposta" runat="server" Text='<%# Bind("sdr_sigla") %>' ToolTip='<%# Bind("sdr_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="rptRespostas" runat="server">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblResposta" runat="server" Text='<%# Bind("sdr_sigla") %>' ToolTip='<%# Bind("sdr_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="gridRow">
                                <td>
                                    <asp:Label ID="lblNomeAluno" runat="server" Text='<%#Bind("pes_nome") %>'></asp:Label>
                                    <asp:HiddenField ID="hdnAluId" runat="server" />
                                </td>
                                <asp:Repeater ID="rptRespostasAlunoHistorico" runat="server" OnItemDataBound="rptRespostasAluno_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:CheckBox ID="ckbResposta" runat="server" Text="" ToolTip='<%# Bind("sdr_descricao") %>' Checked='<%# Bind("respAluno") %>' />
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rptRespostasAluno" runat="server" OnItemDataBound="rptRespostasAluno_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:CheckBox ID="ckbResposta" runat="server" Text="" ToolTip='<%# Bind("sdr_descricao") %>' Checked='<%# Bind("respAluno") %>' />
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="gridAlternatingRow">
                                <td>
                                    <asp:Label ID="lblNomeAluno" runat="server" Text='<%#Bind("pes_nome") %>'></asp:Label>
                                    <asp:HiddenField ID="hdnAluId" runat="server" />
                                </td>
                                <asp:Repeater ID="rptRespostasAlunoHistorico" runat="server" OnItemDataBound="rptRespostasAluno_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:CheckBox ID="ckbResposta" runat="server" Text="" ToolTip='<%# Bind("sdr_descricao") %>' Checked='<%# Bind("respAluno") %>' />
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rptRespostasAluno" runat="server" OnItemDataBound="rptRespostasAluno_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:CheckBox ID="ckbResposta" runat="server" Text="" ToolTip='<%# Bind("sdr_descricao") %>' Checked='<%# Bind("respAluno") %>' />
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tr>
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                                </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                    <div runat="server" id="divLancamentoUnica" visible="false">
                        <asp:Repeater ID="rptLancamentoUnico" runat="server" OnItemDataBound="rptLancamento_ItemDataBound">
                        <HeaderTemplate>
                            <table class="grid sortableFrequencia" cellspacing="0">
                                <thead>
                                    <tr class="gridHeader" id="headerBotoes">
                                        <th>
                                            <asp:Label ID="lblNomeAlunoGeral" runat="server" Text="Aluno"></asp:Label>
                                        </th>
                                        <th runat="server" id="thBotoes">
                                            <div style="float:left">
                                                <asp:LinkButton Style="zoom: 140%; -moz-transform: scale(1.40);" ID="lkbAnterior" Text="|<" runat="server"
                                                    CssClass="ui-icon ui-icon-circle-triangle-w" OnClick="lkbAnterior_Click" ToolTip="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lkbAnterior.ToolTip %>"></asp:LinkButton>
                                            </div>
                                            <div style="float:right">
                                                <asp:LinkButton Style="zoom: 140%; -moz-transform: scale(1.40);" ID="lkbProximo" Text=">|" runat="server"
                                                    CssClass="ui-icon ui-icon-circle-triangle-e" OnClick="lkbProximo_Click" ToolTip="<%$ Resources:Classe, LancamentoSondagem.Cadastro.lkbProximo.ToolTip %>"/>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="gridHeader" id="headerAgendamentos">
                                        <th runat="server" id="thAgendamentos">
                                            <asp:Repeater ID="rptAgendamentos" runat="server" OnItemDataBound="rptAgendamentos_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thAgendamento" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblAgendamento" runat="server" Text='<%# Bind("periodo") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        </th>
                                    </tr>
                                    <tr class="gridHeader" id="headerQuestoes">
                                        <th>
                                            <asp:Label ID="lblNomeAluno" runat="server" Text="Aluno"></asp:Label>
                                        </th>
                                        <asp:Repeater ID="rptQuestoesHistorico" runat="server" OnItemDataBound="rptQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="rptQuestoes" runat="server" OnItemDataBound="rptQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tr>
                                    <tr class="gridHeader" id="headerSubQuestoes">
                                        <th>
                                            <asp:Label ID="lblNomeAlunoSub" runat="server" Text="Aluno"></asp:Label>
                                        </th>
                                        <asp:Repeater ID="rptSubQuestoesHistorico" runat="server" OnItemDataBound="rptSubQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thSubQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblSubQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Repeater ID="rptSubQuestoes" runat="server" OnItemDataBound="rptSubQuestoes_ItemDataBound">
                                            <ItemTemplate>
                                                <th class="center {sorter :false} .sorterFalse" id="thSubQuestao" runat="server" style="border-left:1px solid #ccc">
                                                    <asp:Label ID="lblSubQuestao" runat="server" Text='<%# Bind("sdq_descricao") %>'></asp:Label>
                                                </th>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="gridRow">
                                <td>
                                    <asp:Label ID="lblNomeAluno" runat="server" Text='<%#Bind("pes_nome") %>'></asp:Label>
                                    <asp:HiddenField ID="hdnAluId" runat="server" />
                                </td>
                                <asp:Repeater ID="rptRespostasAlunoUnicoHistorico" runat="server" OnItemDataBound="rptRespostasAlunoUnico_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:DropDownList runat="server" ID="ddlResposta" DataTextField="sdr_descricao" DataValueField="sdr_id" SkinID="text10C"></asp:DropDownList>
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                            <asp:HiddenField ID="groupName" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rptRespostasAlunoUnico" runat="server" OnItemDataBound="rptRespostasAlunoUnico_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:DropDownList runat="server" ID="ddlResposta" DataTextField="sdr_descricao" DataValueField="sdr_id" SkinID="text10C"></asp:DropDownList>
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                            <asp:HiddenField ID="groupName" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="gridAlternatingRow">
                                <td>
                                    <asp:Label ID="lblNomeAluno" runat="server" Text='<%#Bind("pes_nome") %>'></asp:Label>
                                    <asp:HiddenField ID="hdnAluId" runat="server" />
                                </td>
                                <asp:Repeater ID="rptRespostasAlunoUnicoHistorico" runat="server" OnItemDataBound="rptRespostasAlunoUnico_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:DropDownList runat="server" ID="ddlResposta" DataTextField="sdr_descricao" DataValueField="sdr_id" SkinID="text10C"></asp:DropDownList>
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                            <asp:HiddenField ID="groupName" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rptRespostasAlunoUnico" runat="server" OnItemDataBound="rptRespostasAlunoUnico_ItemDataBound">
                                    <ItemTemplate>
                                        <td class="center" style="text-align:center;" id="tdResposta" runat="server">
                                            <asp:DropDownList runat="server" ID="ddlResposta" DataTextField="sdr_descricao" DataValueField="sdr_id" SkinID="text10C"></asp:DropDownList>
                                            <asp:HiddenField ID="hdnRespId" runat="server" />
                                            <asp:HiddenField ID="groupName" runat="server" />
                                        </td>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tr>
                        </AlternatingItemTemplate>
                        <FooterTemplate>
                                </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    </div>
                </div>
                <div class="right area-botoes-bottom">
                    <asp:Button ID="btnSalvar" runat="server" Text="<%$ Resources:Classe, LancamentoSondagem.Cadastro.btnSalvar.Text %>" OnClick="btnSalvar_Click" />
                    <asp:Button ID="btnCancelar" runat="server" Text="<%$ Resources:Classe, LancamentoSondagem.Cadastro.btnCancelar.Text %>" CausesValidation="false"
                        OnClick="btnCancelar_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>
</asp:Content>
