/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Data;
using System.ComponentModel;
using System.Collections.Generic;
using MSTech.Business.Common;
using MSTech.GestaoEscolar.DAL;
using MSTech.GestaoEscolar.Entities;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{

    public enum ChaveParametroTipoMovimentacao
    {
        /// <summary>
        /// Inteiro: Indica o prazo em dias para realizar a avalia��o do aluno        
        /// </summary>
        [StringValue("PTM_PRAZO_DIAS_REALIZAR_AVALIACAO")]
        PrazoDiasRealizarAvaliacao = 1
        ,
        /// <summary>
        /// Inteiro: Indica a observa��o padr�o do hist�rico escolar que deve estar anexa
        /// </summary>
        [StringValue("PTM_OBSERVACAO_PADRAO_HISTORICO")]
        ObservacaoPadraoHistorico = 2
        ,
        /// <summary>
        /// Inteiro: Prazo, em dias, para a escola de origem confirmar a transfer�ncia, 
        /// quando esta for iniciada pela escola de destino
        /// </summary>
        [StringValue("PTM_PRAZO_DIAS_ESCOLA_ORIGEM_CONFIRMAR_TRANSF")]
        PrazoDiasEscolaOrigemConfirmarTransferencia = 3
        ,
        /// <summary>
        /// Inteiro: Prazo, em dias, para que seja executada a movimenta��o de adequa��o ap�s 
        /// uma movimenta��o de inclus�o de alunos
        /// </summary>
        [StringValue("PTM_PRAZO_DIAS_EXECUTAR_MOVIMENTACAO_ADEQUACAO")]
        PrazoDiasExecutarMovimentacaoAdequacao = 4
        ,
        /// <summary>
        /// Data de refer�ncia para c�lculo da idade
        /// </summary>
        [StringValue("PTM_DATA_REFERENCIA_CALCULO_IDADE")]
        DataReferenciaCalculoIdade = 5,
        /// <summary>
        /// Inteiro: Prazo em dias de efetiva��o da escola de origem        
        /// </summary>
        [StringValue("PTM_PRAZO_DIAS_EFETIVACAO_ESCOLA_ORIGEM")]
        PrazoDiasEfetivacaoEscolaOrigem = 6
    }

    /// <summary>
    /// MTR_ParametroTipoMovimentacao Business Object 
    /// </summary>
    public class MTR_ParametroTipoMovimentacaoBO : BusinessBase<MTR_ParametroTipoMovimentacaoDAO, MTR_ParametroTipoMovimentacao>
    {
        /// <summary>
        /// Retorna o Nome (ptm_chave) da chave do par�metro informado.      
        /// </summary>
        /// <param name="chave">Chave</param>
        /// <returns>ptm_valor</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static string SelecionaChaveParametroTipoMovimentacao
        (
            ChaveParametroTipoMovimentacao chave
        )
        {
            return StringValueAttribute.GetStringValue(chave);
        }

        /// <summary>
        /// Retorna o Valor (ptm_valor) pela Chave do par�metro informado.
        /// </summary>
        /// <param name="tmo_id">ID do par�metro de de movimenta��o</param>        
        /// <param name="chave">Chave</param>
        /// <returns>ptm_valor</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static string SelecionaValorParametroTipoMovimentacao
        (
            int tmo_id
            , ChaveParametroTipoMovimentacao chave
        )
        {
            string valorChave = StringValueAttribute.GetStringValue(chave);

            MTR_ParametroTipoMovimentacaoDAO dao = new MTR_ParametroTipoMovimentacaoDAO();
            return dao.SelectBy_ptm_chave(tmo_id, valorChave);
        }

        /// <summary>
        /// Retorna os par�metros cadastrados para o par�metro de movimenta��o
        /// </summary>
        /// <param name="tmo_id">ID do tipo de movimenta��o</param>        
        /// <param name="banco"></param>
        /// <returns>Lista de par�metros</returns>      
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<MTR_ParametroTipoMovimentacao> SelecionaListParametrosPorParametroMovimentacao
        (
            int tmo_id
            , Data.Common.TalkDBTransaction banco
        )
        {
            List<MTR_ParametroTipoMovimentacao> lista = new List<MTR_ParametroTipoMovimentacao>();

            MTR_ParametroTipoMovimentacaoDAO dao = new MTR_ParametroTipoMovimentacaoDAO();

            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            try
            {
                DataTable dt = dao.SelectBy_tmo_id(tmo_id);

                foreach (DataRow dr in dt.Rows)
                {
                    MTR_ParametroTipoMovimentacao ent = new MTR_ParametroTipoMovimentacao();
                    ent = dao.DataRowToEntity(dr, ent);

                    lista.Add(ent);
                }

                return lista;
            }
            catch (Exception err)
            {
                if (banco == null)
                    dao._Banco.Close(err);

                throw;
            }
            finally
            {
                if (banco == null)
                    dao._Banco.Close();
            }
        }

        /// <summary>
        /// Retorna os par�metros cadastrados para o par�metro de movimenta��o
        /// </summary>        
        /// <param name="valor"></param>
        /// <param name="chave">Chave</param>
        /// <returns></returns>
        public static bool VerificaValorParametroTipoMovimentacao
            (
                 string valor
                 , ChaveParametroTipoMovimentacao chave
            )
        {

            string valorChave = StringValueAttribute.GetStringValue(chave);

            MTR_ParametroTipoMovimentacaoDAO dao = new MTR_ParametroTipoMovimentacaoDAO();
            return dao.SelectBy_ptm_chave_valor(valor, valorChave);

        }

        /// <summary>
        /// Verifica se o tipo de movimento tem prazo em dias para realizar a avalia��o do aluno 
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarPrazoDiasRealizarAvaliacao(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.MatriculaInicial:
                case (int)MTR_TipoMovimentacaoTipoMovimento.RenovacaoInicial:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem que anexar uma observa��o padr�o do hist�rico escolar junto com a avalia��o
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarObservacaoPadraoHistorico(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.MatriculaInicial:
                case (int)MTR_TipoMovimentacaoTipoMovimento.RenovacaoInicial:
                case (int)MTR_TipoMovimentacaoTipoMovimento.Reclassificacao:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem prazo, em dias, para a escola de origem confirmar 
        /// a transfer�ncia, quando esta for iniciada pela escola de destino 
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarPrazoDiasEscolaOrigemConfirmarTransferencia(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.TransferenciaPropriaRede:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem prazo em dias de efetiva��o da escola de origem        
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarPrazoDiasEfetivacaoEscolaOrigem(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.TransferenciaPropriaRede:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem prazo, em dias, para que seja executada a movimenta��o 
        /// de adequa��o ap�s uma movimenta��o de inclus�o de alunos
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarPrazoDiasExecutarMovimentacaoAdequacao(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.Adequacao:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem data de refer�ncia para c�lculo da idade
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarDataReferenciaCalculoIdade(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.MatriculaInicial:
                case (int)MTR_TipoMovimentacaoTipoMovimento.RenovacaoInicial:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Inclui ou Altera o par�metro para o par�metro de movimenta��o
        /// </summary>
        /// <param name="entity">Entidade MTR_ParametroTipoMovimentacao</param>
        /// <param name="banco">Conex�o aberta com o banco de dados/Null para uma nova conex�o</param>
        /// <returns></returns>
        public new static bool Save
        (
            MTR_ParametroTipoMovimentacao entity
            , Data.Common.TalkDBTransaction banco
        )
        {
            MTR_ParametroTipoMovimentacaoDAO dao = new MTR_ParametroTipoMovimentacaoDAO();

            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            try
            {
                if (entity.Validate())
                {
                    dao.Salvar(entity);
                }
                else
                {
                    throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));
                }

                return true;
            }
            catch (Exception err)
            {
                if (banco == null)
                    dao._Banco.Close(err);

                throw;
            }
            finally
            {
                if (banco == null)
                    dao._Banco.Close();
            }
        }

        /// <summary>
        /// Deleta o par�metro de para o par�metro de movimenta��o
        /// </summary>
        /// <param name="entity">Entidade MTR_ParametroTipoMovimentacao</param>
        /// <param name="banco">Conex�o aberta com o banco de dados/Null para uma nova conex�o</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Delete
        (
            MTR_ParametroTipoMovimentacao entity
            , Data.Common.TalkDBTransaction banco
        )
        {
            MTR_ParametroTipoMovimentacaoDAO dao = new MTR_ParametroTipoMovimentacaoDAO();

            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            try
            {
                // Verifica se o par�metro do par�metro de movimenta��o pode ser deletado
                if (GestaoEscolarUtilBO.VerificarIntegridade
                (
                    "ptm_id"
                    , entity.ptm_id.ToString()
                    , "MTR_TipoMovimentacao,MTR_ParametroTipoMovimentacao"
                    , dao._Banco
                ))
                {
                    throw new ValidationException("N�o � poss�vel excluir o par�metro de movimenta��o pois possui outros registros ligados a ele.");
                }

                // Deleta logicamente o par�metro do par�metro de movimenta��o
                dao.Delete(entity);

                return true;
            }
            catch (Exception err)
            {
                if (banco == null)
                    dao._Banco.Close(err);

                throw;
            }
            finally
            {
                if (banco == null)
                    dao._Banco.Close();
            }
        }
    }
}