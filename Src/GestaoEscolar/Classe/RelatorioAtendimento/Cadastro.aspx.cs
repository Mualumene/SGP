﻿namespace GestaoEscolar.Classe.RelatorioAtendimento
{
    using MSTech.CoreSSO.BLL;
    using MSTech.GestaoEscolar.BLL;
    using MSTech.GestaoEscolar.Web.WebProject;
    using System;

    public partial class Cadastro : MotherPageLogado
    {
        private long VS_alu_id
        {
            get
            {
                return Convert.ToInt64(ViewState["VS_alu_id"] ?? -1);
            }

            set
            {
                ViewState["VS_alu_id"] = value;
            }
        }

        private int VS_cal_id
        {
            get
            {
                return Convert.ToInt32(ViewState["VS_cal_id"] ?? -1);
            }

            set
            {
                ViewState["VS_cal_id"] = value;
            }
        }

        /// <summary>
        /// Propriedade que seta a url de retorno da página.
        /// </summary>
        private string VS_PaginaRetorno
        {
            get
            {
                if (ViewState["VS_PaginaRetorno"] != null)
                    return ViewState["VS_PaginaRetorno"].ToString();

                return "";
            }
            set
            {
                ViewState["VS_PaginaRetorno"] = value;
            }
        }

        /// <summary>
        /// Propriedade que guarda dados necessários para a página de retorno.
        /// </summary>
        private object VS_DadosPaginaRetorno
        {
            get
            {
                return ViewState["VS_DadosPaginaRetorno"];
            }
            set
            {
                ViewState["VS_DadosPaginaRetorno"] = value;
            }
        }

        /// <summary>
        /// Propriedade que guarda dados necessários para a página de retorno Minhas turmas.
        /// </summary>
        private object VS_DadosPaginaRetorno_MinhasTurmas
        {
            get
            {
                return ViewState["VS_DadosPaginaRetorno_MinhasTurmas"];
            }
            set
            {
                ViewState["VS_DadosPaginaRetorno_MinhasTurmas"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UCCRelatorioAtendimento.IndexChanged += UCCRelatorioAtendimento_IndexChanged;
            UCCPeriodoCalendario.IndexChanged += UCCPeriodoCalendario_IndexChanged;

            if (!IsPostBack)
            {
                if ((PreviousPage != null) && PreviousPage.IsCrossPagePostBack)
                {
                    VS_alu_id = PreviousPage.EditItemAluId;
                    VS_cal_id = PreviousPage.EditItemCalId;
                }
                else if (Session["PaginaRetorno_RelatorioAEE"] != null)
                {
                    VS_PaginaRetorno = Session["PaginaRetorno_RelatorioAEE"].ToString();
                    Session.Remove("PaginaRetorno_RelatorioAEE");
                    VS_DadosPaginaRetorno = Session["DadosPaginaRetorno"];
                    Session.Remove("DadosPaginaRetorno");
                    VS_DadosPaginaRetorno_MinhasTurmas = Session["VS_DadosTurmas"];
                    Session.Remove("VS_DadosTurmas");
                }

                UCCRelatorioAtendimento.CarregarPorPermissaoUuarioTipo(CLS_RelatorioAtendimentoTipo.AEE);
                UCCPeriodoCalendario.CarregarPorCalendario(VS_cal_id);
                updFiltros.Update();
            }
        }

        private void CarregarRelatorio()
        {
            pnlLancamento.Visible = btnSalvar.Visible = false;

            if (UCCPeriodoCalendario.Valor[0] > 0 && UCCPeriodoCalendario.Valor[1] > 0 && UCCRelatorioAtendimento.Valor > 0)
            {
                pnlLancamento.GroupingText = UCCRelatorioAtendimento.Texto;
                UCLancamentoRelatorioAtendimento.Carregar(VS_alu_id, UCCRelatorioAtendimento.Valor, false);
                pnlLancamento.Visible = btnSalvar.Visible = true;
                UCCPeriodoCalendario.PermiteEditar = UCCRelatorioAtendimento.PermiteEditar = false; 
            }

            updBotoes.Update();
            updFiltros.Update();
            updLancamento.Update();
        }

        /// <summary>
        /// Verifica qual página deve voltar e redireciona.
        /// </summary>
        private void VerificaPaginaRedirecionar()
        {
            string url = "~/Classe/RelatorioAtendimento/Busca.aspx";

            if (!string.IsNullOrEmpty(VS_PaginaRetorno))
            {
                Session["DadosPaginaRetorno"] = VS_DadosPaginaRetorno;
                Session["VS_DadosTurmas"] = VS_DadosPaginaRetorno_MinhasTurmas;
                url = VS_PaginaRetorno;
            }

            RedirecionarPagina(url);
        }

        private void UCCPeriodoCalendario_IndexChanged()
        {
            try
            {
                CarregarRelatorio();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = UtilBO.GetErroMessage("Erro ao tentar carregar os dados", UtilBO.TipoMensagem.Erro);
                ApplicationWEB._GravaErro(ex);
                updMensagem.Update();
            }
        }

        private void UCCRelatorioAtendimento_IndexChanged()
        {
            try
            {
                CarregarRelatorio();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = UtilBO.GetErroMessage("Erro ao tentar carregar os dados", UtilBO.TipoMensagem.Erro);
                ApplicationWEB._GravaErro(ex);
                updMensagem.Update();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            VerificaPaginaRedirecionar();
        }
    }
}