﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="CadastroEixo.aspx.cs" Inherits="GestaoEscolar.Academico.ObjetoAprendizagem.CadastroEixo" %>

<%@ PreviousPageType VirtualPath="~/Academico/ObjetoAprendizagem/BuscaEixo.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="updMessage" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="_lblMessage" runat="server" EnableViewState="False"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="_updDadosBasicos" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <fieldset id="fds" runat="server">
                <legend>Cadastro de eixos de objetos de conhecimento</legend>
                <div id="_divPesquisa" runat="server">
                    <asp:Label ID="_lblDisciplina" runat="server" Text="<%$ Resources:Mensagens, MSG_DISCIPLINA %>" AssociatedControlID="txtDisciplina"></asp:Label>
                    <asp:TextBox ID="txtDisciplina" runat="server" Enabled="false"></asp:TextBox>
                    <asp:Label ID="lblAnoLetivo" runat="server" Text="Ano letivo" AssociatedControlID="txtAnoletivo" />
                    <asp:TextBox ID="txtAnoletivo" runat="server" Enabled="false" />
                    <div id="divEixoPai" runat="server" visible="false">
                        <asp:Label runat="server" ID="lblEixoPai" Text="Eixo pai" AssociatedControlID="txtEixoPai" />
                        <asp:TextBox ID="txtEixoPai" runat="server" Enabled="false" />
                    </div>
                    <asp:Label runat="server" ID="lblEixo" Text="Eixo" AssociatedControlID="txtEixo" />
                    <asp:TextBox ID="txtEixo" runat="server" Enabled="false" />
                </div>
                <div class="right">
                    <asp:Button ID="_btnNovoSub" runat="server" Text="Incluir novo sub eixo de objeto de conhecimento" OnClick="_btnNovoSub_Click" />
                    <asp:Button ID="btnNovoObjeto" runat="server" Text="Incluir novo objeto de conhecimento" OnClick="btnNovoObjeto_Click" />
                    <asp:Button ID="_btnCancelar" runat="server" Text="Voltar" OnClick="_btnCancelar_Click" />
                </div>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
    <fieldset id="fdsSubEixos" runat="server">
        <legend>Sub eixos</legend>
        <asp:UpdatePanel ID="updSubEixo" runat="server" UpdateMode="Always">
            <ContentTemplate>
                <asp:GridView ID="_grvEixoObjetoAprendizagem" runat="server" AutoGenerateColumns="False"
                    AllowPaging="False" DataKeyNames="oae_id" HorizontalAlign="Center"
                    EmptyDataText="Nenhum sub eixo cadastrado para o eixo."
                    OnRowCommand="_grvEixoObjetoAprendizagem_RowCommand" OnRowDataBound="_grvEixoObjetoAprendizagem_RowDataBound"
                    AllowSorting="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:LinkButton ID="_btnSelecionar" runat="server" CommandName="Edit" Text='<%# Bind("oae_descricao") %>'
                                    PostBackUrl="~/Academico/ObjetoAprendizagem/CadastroEixo.aspx"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="oae_situacaoText" HeaderText="Situação" />
                        <asp:TemplateField HeaderText="Ordem">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("oae_ordem") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:ImageButton ID="_btnSubir" runat="server" CausesValidation="false" CommandName="Subir"
                                    Height="16" Width="16" />
                                <asp:ImageButton ID="_btnDescer" runat="server" CausesValidation="false" CommandName="Descer"
                                    Height="16" Width="16" />
                            </ItemTemplate>
                            <HeaderStyle CssClass="center" HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Excluir">
                            <ItemTemplate>
                                <asp:ImageButton ID="_btnExcluir" SkinID="btExcluir" runat="server" CommandName="Deletar" />
                            </ItemTemplate>
                            <HeaderStyle CssClass="center" />
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>
    <fieldset id="fdsObjetos" runat="server">
        <legend>Objetos de conhecimento</legend>
        <asp:UpdatePanel ID="updObjetos" runat="server" UpdateMode="Always">
            <ContentTemplate>
                <asp:GridView ID="_grvObjetoAprendizagem" runat="server" AutoGenerateColumns="False"
                    AllowPaging="False" DataKeyNames="oap_id" HorizontalAlign="Center"
                    EmptyDataText="Nenhum objeto de conhecimento cadastrado para o eixo."
                    OnRowCommand="_grvObjetoAprendizagem_RowCommand" OnRowDataBound="_grvObjetoAprendizagem_RowDataBound"
                    AllowSorting="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:LinkButton ID="_btnSelecionar" runat="server" CommandName="Edit" Text='<%# Bind("oap_descricao") %>'
                                    PostBackUrl="~/Academico/ObjetoAprendizagem/Cadastro.aspx"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="oap_situacao" HeaderText="Situação" />
                        <asp:TemplateField HeaderText="Excluir">
                            <ItemTemplate>
                                <asp:ImageButton ID="_btnExcluir" SkinID="btExcluir" runat="server" CommandName="Deletar" />
                            </ItemTemplate>
                            <HeaderStyle CssClass="center" />
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>
    <div id="divInserir" class="hide">
        <asp:UpdatePanel runat="server" ID="updMessagePopUp" UpdateMode="Always">
            <ContentTemplate>
                <asp:Label ID="lblMessagePopUp" runat="server" EnableViewState="False"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel runat="server" ID="updPopUp" UpdateMode="Conditional">
            <ContentTemplate>
                <fieldset>
                    <legend>Novo sub eixo de objeto de conhecimento</legend>
                    <asp:Label runat="server" ID="lblDescricao" Text="Descrição *" AssociatedControlID="txtDescricao" />
                    <asp:TextBox runat="server" ID="txtDescricao" SkinID="text60C" MaxLength="500" />
                    <asp:RequiredFieldValidator ID="rfvTitulo" runat="server" ControlToValidate="txtDescricao"
                        Display="Dynamic" ErrorMessage="Descrição do sub eixo de objeto de conhecimento é obrigatória." Text="*" />
                    <div class="right">
                        <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" CausesValidation="false" 
                            OnClick="btnAdicionar_Click" />
                        <asp:Button ID="btnCancelarItem" runat="server" Text="Cancelar" CausesValidation="false"
                            OnClientClick="$('#divInserir').dialog('close');" />
                    </div>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>