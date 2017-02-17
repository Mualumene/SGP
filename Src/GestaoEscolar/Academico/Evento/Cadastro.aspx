<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Academico_Eventos_Cadastro" CodeBehind="Cadastro.aspx.cs" %>

<%@ PreviousPageType VirtualPath="~/Academico/Evento/Busca.aspx" %>
<%@ Register Src="~/WebControls/Combos/UCComboTipoEvento.ascx" TagName="_UCComboTipoEvento"
    TagPrefix="uc1" %>
<%@ Register Src="~/WebControls/Combos/UCComboTipoPeriodoCalendario.ascx" TagName="UCComboTipoPeriodoCalendario"
    TagPrefix="uc2" %>
<%@ Register Src="~/WebControls/Combos/UCComboCalendario.ascx" TagName="_UCComboCalendario"
    TagPrefix="uc3" %>
<%@ Register Src="../../WebControls/FiltroEscolas/UCFiltroEscolas.ascx" TagName="UCFiltroEscolas"
    TagPrefix="uc4" %>
<%@ Register Src="../../WebControls/Mensagens/UCCamposObrigatorios.ascx" TagName="UCCamposObrigatorios"
    TagPrefix="uc5" %>
<%@ Register Src="../../WebControls/Mensagens/UCLoader.ascx" TagName="UCLoader" TagPrefix="uc6" %>

<%@ Register Src="~/WebControls/BuscaDocente/UCBuscaDocenteEscola.ascx" TagName="UCBuscaDocenteEscola" TagPrefix="uc7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <uc6:UCLoader ID="UCLoader1" runat="server" AssociatedUpdatePanelID="UpdatePanel1" />
            <asp:Label ID="_lblMessage" runat="server" EnableViewState="False"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="evento" />
            <fieldset>
                <legend>Cadastro de eventos do calend�rio</legend>
                <uc5:UCCamposObrigatorios ID="UCCamposObrigatorios3" runat="server" />

                <uc4:UCFiltroEscolas ID="_UCFiltroEscolas" runat="server" On_SelecionarEscola="_UCFiltroEscolas__SelecionarEscola" />
                <asp:CheckBox ID="chkPadrao" runat="server" Text="<%$ Resources:Academico, Evento.Cadastro.chkEventoPadrao.Text %>"
                    AutoPostBack="True" OnCheckedChanged="chkPadrao_CheckedChanged" />
                <asp:CustomValidator ID="cvAlcance" runat="server" ValidationGroup="evento" Display="None" Text="*"
                    OnServerValidate="cvAlcance_ServerValidate" ErrorMessage="� necess�rio selecionar uma escola ou o evento do calend�rio deve ser padr�o." />

                <uc1:_UCComboTipoEvento ID="_UCComboTipoEvento" runat="server" />
                <uc2:UCComboTipoPeriodoCalendario ID="UCCTipoPeriodoCalendario1" runat="server" />

                <asp:Label ID="_lblNome" runat="server" Text="Nome do evento do calend�rio *" AssociatedControlID="_txtNome"></asp:Label>
                <asp:TextBox ID="_txtNome" runat="server" SkinID="text60C" MaxLength="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="_rfvNome" runat="server" ErrorMessage="Nome do evento do calend�rio � obrigat�rio."
                    Display="Dynamic" ControlToValidate="_txtNome" ValidationGroup="evento">*</asp:RequiredFieldValidator>

                <asp:Label ID="_lblDescricao" runat="server" Text="Descri��o" AssociatedControlID="_txtDescricao"></asp:Label>
                <asp:TextBox ID="_txtDescricao" runat="server" Rows="4" TextMode="MultiLine" SkinID="text60C"></asp:TextBox>

                <asp:Label ID="_lblInicio" runat="server" Text="In�cio do evento *" AssociatedControlID="_txtInicioEvento"></asp:Label>
                <asp:TextBox ID="_txtInicioEvento" runat="server" SkinID="Data"></asp:TextBox>
                <asp:RequiredFieldValidator ID="_rfvInicioEvento" runat="server" ErrorMessage="In�cio do evento � obrigat�rio."
                    Display="Dynamic" ControlToValidate="_txtInicioEvento" ValidationGroup="evento">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvDataInicio" runat="server" ControlToValidate="_txtInicioEvento"
                    ValidationGroup="evento" Display="Dynamic" ErrorMessage="" OnServerValidate="ValidarData_ServerValidate">*</asp:CustomValidator>

                <asp:Label ID="_lblFimEvento" runat="server" Text="Fim do evento *" AssociatedControlID="_txtFimEvento"></asp:Label>
                <asp:TextBox ID="_txtFimEvento" runat="server" SkinID="Data"></asp:TextBox>
                <asp:RequiredFieldValidator ID="_rfvFimEvento" runat="server" ErrorMessage="Fim do evento � obrigat�rio."
                    Display="Dynamic" ControlToValidate="_txtFimEvento" ValidationGroup="evento">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvDataFim" runat="server" ControlToValidate="_txtFimEvento"
                    ValidationGroup="evento" Display="Dynamic" ErrorMessage=""
                    OnServerValidate="ValidarData_ServerValidate">*</asp:CustomValidator>
                <asp:CompareValidator ID="cpvDataFim2" runat="server" ControlToValidate="_txtFimEvento"
                    ValidationGroup="evento" Display="Dynamic" Type="Date" Operator="GreaterThanEqual"
                    ControlToCompare="_txtInicioEvento" ErrorMessage="Data de fim do evento deve ser maior ou igual a data de in�cio do evento.">*</asp:CompareValidator>

                <asp:RadioButtonList ID="rblAtividadeDiscente" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="<%$ Resources:Academico, Evento.Cadastro.rblAtividadeDiscente.valor1 %>" Value="False" Selected="False"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:Academico, Evento.Cadastro.rblAtividadeDiscente.valor2 %>" Value="True" Selected="False"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvRblAtividadeDiscente" runat="server"
                    ErrorMessage="<%$ Resources:Academico, Evento.Cadastro.rfvRblAtividadeDiscente.ErrorMessage %>"
                    Display="Dynamic" ControlToValidate="rblAtividadeDiscente" ValidationGroup="evento"> <span></span>  </asp:RequiredFieldValidator>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="updCalendario" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <fieldset>
                <legend>Cadastro de calend�rios</legend>
                <div></div>
                <asp:Repeater ID="rptCampos" runat="server">
                    <HeaderTemplate>
                        <div class="checkboxlist-columns">
                    </HeaderTemplate>

                    <ItemTemplate>
                        <asp:HiddenField ID="hdnId" runat="server" Value='<%# Eval("cal_id") %>' />
                        <asp:CheckBox ID="ckbCampo" runat="server" Text='<%# Eval("cal_descricao") %>' />
                    </ItemTemplate>

                    <FooterTemplate>
                        </div> 
                    </FooterTemplate>
                </asp:Repeater>

            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>

    <fieldset>
        <div class="right">
            <asp:Button ID="_btnSalvar" runat="server" Text="Salvar" OnClick="_btnSalvar_Click"
                ValidationGroup="evento" />
            <asp:Button ID="_btnCancelar" runat="server" Text="Cancelar" OnClick="_btnCancelar_Click"
                CausesValidation="false" />
        </div>
    </fieldset>
    <div id="divDataAnterior" title="Data atual" class="hide">
        <asp:Label ID="lblDataAtual" runat="server" Text="Data inicial do evento � a data atual. N�o ser� poss�vel excluir o evento ou alterar sua data de in�cio ou os calend�rios ao qual est� ligado.">
        </asp:Label>
        <div class="right">
            <asp:Button ID="btnConfirmarEvento" runat="server" CausesValidation="False" Text="Confirmar inclus�o de evento"
                OnClick="btnConfirmarEvento_Click" />
            <asp:Button ID="btnCancelarEvento" runat="server" CausesValidation="False" OnClientClick="$('#divDataAnterior').dialog('close'); return false;"
                Text="Cancelar inclus�o de evento" />
        </div>
    </div>

    <div id="divAulaEventoSemAtividade" title="Aulas no per�odo de evento" class="hide">
        <asp:Label ID="lblMsgAulaEventoSemAtividade" runat="server" Text="Existem aulas criadas no per�odo selecionado para o evento marcado como 'Sem atividade discente'.">
        </asp:Label>
        <div class="right">
            <asp:Button ID="btnConfirmarEventoSemAtividade" runat="server" CausesValidation="False" Text="Confirmar inclus�o de evento" OnClick="btnConfirmarEventoSemAtividade_Click" />
            <asp:Button ID="btnCancelarEventoSemAtividade" runat="server" CausesValidation="False" OnClientClick="$('#divAulaEventoSemAtividade').dialog('close'); return false;"
                Text="Cancelar inclus�o de evento" />
        </div>
    </div>
</asp:Content>
