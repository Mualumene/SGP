/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using System.Data;
using MSTech.Data.Common;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
	
	/// <summary>
	/// MTR_MomentoAno Business Object 
	/// </summary>
	public class MTR_MomentoAnoBO : BusinessBase<MTR_MomentoAnoDAO,MTR_MomentoAno>
	{
        /// <summary>
        /// Retorna todas as configura��es de momentos cadastrados no ano informado, dentro da entidade.
        /// </summary>
        /// <param name="ent_id">Entidade - obrigat�rio</param>
        /// <param name="mom_ano">Ano - opcional</param>
        /// <returns></returns>
        public static DataTable GetSelectBy_Entidade_Ano(Guid ent_id, int mom_ano)
		{
		    MTR_MomentoAnoDAO dao = new MTR_MomentoAnoDAO();
		    return dao.SelectBy_Entidade_Ano(ent_id, mom_ano);
		}

        /// <summary>
        /// Retorna o prazo para movimenta��o de uma entidade e ano
        /// </summary>
        /// <param name="ent_id">Entidade - obrigat�rio</param>
        /// <param name="mom_ano">Ano - obrigat�rio</param>
        /// <param name="bancoGestao">Conex�o aberta com o banco de dados - Opcional (null para nova conex�o)</param>
        /// <returns></returns>
        public static int SelecionaPrazoMovimentacaoPorEntidadeAno(Guid ent_id, int mom_ano, TalkDBTransaction bancoGestao)
        {
            MTR_MomentoAnoDAO dao = new MTR_MomentoAnoDAO();

            if (bancoGestao != null)
                dao._Banco = bancoGestao;

            DataTable dt = dao.SelectBy_Entidade_Ano(ent_id, mom_ano);

            string sPrazoMovimentacao = string.Empty;

            if (dt.Rows.Count > 0)
                sPrazoMovimentacao =  dt.Rows[0]["mom_prazoMovimentacao"].ToString();

            return string.IsNullOrEmpty(sPrazoMovimentacao) ? 0 : Convert.ToInt32(sPrazoMovimentacao);
        }

        /// <summary>
        /// Retorna o prazo para a aprova��o da movimenta��o retroativa, poder ser por usu�rios com vis�o Gest�o
        /// </summary>
        /// <param name="ent_id">Entidade - obrigat�rio</param>
        /// <param name="mom_ano">Ano - obrigat�rio</param>
        /// <param name="bancoGestao">Conex�o aberta com o banco de dados - Opcional (null para nova conex�o)</param>
        /// <returns></returns>
        public static int SelecionaPrazoAprovacaoRetroativaPorEntidadeAno(Guid ent_id, int mom_ano, TalkDBTransaction bancoGestao)
        {
            MTR_MomentoAnoDAO dao = new MTR_MomentoAnoDAO();

            if (bancoGestao != null)
                dao._Banco = bancoGestao;

            DataTable dt = dao.SelectBy_Entidade_Ano(ent_id, mom_ano);

            string sPrazoAprovacaoRetroativa = string.Empty;

            if (dt.Rows.Count > 0)
                sPrazoAprovacaoRetroativa = dt.Rows[0]["mom_prazoAprovacaoRetroativa"].ToString();

            return string.IsNullOrEmpty(sPrazoAprovacaoRetroativa) ? 0 : Convert.ToInt32(sPrazoAprovacaoRetroativa);
        }
        
        public static new bool Delete(MTR_MomentoAno entity)
        {
            TalkDBTransaction banco = new MTR_MomentoAnoDAO()._Banco;
            banco.Open(IsolationLevel.ReadCommitted);

            try
            {
                // Verifica se o registro est� sendo usado em outras tabelas.
                if (GestaoEscolarUtilBO.VerificaIntegridadaChaveDupla
                    (
                        "mom_ano"
                        , "mom_id"
                        , entity.mom_ano.ToString()
                        , entity.mom_id.ToString()
                        , "MTR_MomentoCalendarioPeriodo,MTR_MomentoCongelamentoEscola,MTR_TipoMomentoAno,MTR_MomentoAno,MTR_TipoMomentoAnoCurriculo"
                        , banco
                    ))
                {
                    throw new ValidationException("N�o � poss�vel excluir a configura��o dos momentos de movimenta��o pois possui outros registros ligados a ela.");
                }

                return Delete(entity, banco);
            }
            catch (Exception ex)
            {
                banco.Close(ex);
                throw;
            }
            finally
            {
                banco.Close();
            }
        }
	}
}