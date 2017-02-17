/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
    public enum ChaveParametroTipoMovimentacaoCurriculoPeriodo
    {
        /// <summary>
        /// Booleano: Indica se � necess�rio fazer uma avalia��o para realizar a movimenta��o        
        /// </summary>
        [StringValue("PMP_EXIGE_AVALIACAO")]
        ExigeAvaliacao = 1
        ,
        /// <summary>
        /// Booleano: Indica se � necess�rio fazer uma avalia��o para realizar a movimenta��o
        /// ap�s uma idade limite        
        /// </summary>
        [StringValue("PMP_EXIGE_AVALIACAO_APOS_IDADE_LIMITE")]
        ExigeAvaliacaoAposIdadeLimite = 2
        ,
        /// <summary>
        /// Inteiro: Indica qual a idade limite para realizar a movimenta��o sem exigir avalia��o        
        /// </summary>
        [StringValue("PMP_IDADE_LIMITE_EXIGE_AVALIACAO")]
        IdadeLimiteExigeAvaliacao = 3
        ,
        /// <summary>
        /// Booleano: Indica se ser� definido uma rela��o com a idade ideal do curso
        /// </summary>
        [StringValue("PMP_RELACIONA_IDADE_IDEAL_CURSO")]
        RelacionaIdadeIdealCurso = 4
        ,
        /// <summary>
        /// Inteiro: Indica qual � o limite da idade ideal do curso
        /// </summary>
        [StringValue("PMP_LIMITE_IDADE_IDEAL_CURSO")]
        LimiteIdadeIdealCurso = 5
    }

	/// <summary>
	/// MTR_ParametroTipoMovimentacaoCurriculoPeriodo Business Object 
	/// </summary>
	public class MTR_ParametroTipoMovimentacaoCurriculoPeriodoBO : BusinessBase<MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO,MTR_ParametroTipoMovimentacaoCurriculoPeriodo>
	{
        /// <summary>
        /// Retorna o Nome (pmp_chave) da chave do par�metro informado.      
        /// </summary>
        /// <param name="chave">Chave</param>
        /// <returns>pmp_valor</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static string SelecionaChaveParametroTipoMovimentacaoCurriculoPeriodo
        (
            ChaveParametroTipoMovimentacaoCurriculoPeriodo chave
        )
        {
            return StringValueAttribute.GetStringValue(chave);
        }

        /// <summary>
        /// Retorna o Valor (pmp_valor) pela Chave do par�metro informado.
        /// </summary>
        /// <param name="tmo_id">ID do par�metro de movimenta��o</param>
        /// <param name="tmp_id">ID do curr�culo per�odo</param>
        /// <param name="chave">Chave</param>
        /// <returns>pmp_valor</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static string SelecionaValorParametroTipoMovimentacaoCurriculoPeriodo
        (
            int tmo_id
            , int tmp_id
            , ChaveParametroTipoMovimentacaoCurriculoPeriodo chave
        )
        {
            string valorChave = StringValueAttribute.GetStringValue(chave);
            
            MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO dao = new MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO();
            return dao.SelectBy_pmp_chave(tmo_id, tmp_id, valorChave);
        }

        /// <summary>
        /// Retorna os par�metros cadastrados para o curso per�odo do par�metro de movimenta��o
        /// </summary>
        /// <param name="tmo_id">ID do tipo de movimenta��o</param>
        /// <param name="tmp_id">ID do curr�culo per�odo</param>  
        /// <returns>Lista de par�metros</returns>      
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<MTR_ParametroTipoMovimentacaoCurriculoPeriodo> SelecionaListParametrosCursosPeriodosPorParametroMovimentacao
        (
            int tmo_id
            , int tmp_id            
        )
        {
            List<MTR_ParametroTipoMovimentacaoCurriculoPeriodo> lista = new List<MTR_ParametroTipoMovimentacaoCurriculoPeriodo>();

            MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO dao = new MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO();

            DataTable dt = dao.SelectBy_tmp_id(tmo_id, tmp_id);

            foreach (DataRow dr in dt.Rows)
            {
                MTR_ParametroTipoMovimentacaoCurriculoPeriodo ent = new MTR_ParametroTipoMovimentacaoCurriculoPeriodo();
                ent = dao.DataRowToEntity(dr, ent);

                lista.Add(ent);
            }

            return lista;
        }

        /// <summary>
        /// Verifica se o tipo de movimento exige avalia��o
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarExigeAvaliacao(int tipoMovimento)
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
        /// Verifica se o tipo de movimento exige avalia��o ap�s idade limite
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarExigeAvaliacaoAposDataLimite(int tipoMovimento)
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
        /// Verifica se o tipo de movimento tem idade limite para realizar a movimenta��o sem exigir avalia��o 
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarIdadeLimiteExigeAvaliacao(int tipoMovimento)
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
        /// Verifica se o tipo de movimento ser� definido uma rela��o com a idade ideal do curso
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarRelacionaIdadeIdealCurso(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.MudancaModalidaeEnsino:
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Verifica se o tipo de movimento tem limite da idade ideal do curso
        /// </summary>
        /// <param name="tipoMovimento">Tipo do movimento</param>
        /// <returns></returns>
        public static bool VerificarLimiteIdadeIdealCurso(int tipoMovimento)
        {
            switch (tipoMovimento)
            {
                case (int)MTR_TipoMovimentacaoTipoMovimento.MudancaModalidaeEnsino:
                    return true;
                default:
                    return false;
            }
        }
        
        /// <summary>
        /// Inclui ou Altera o par�metro de curso per�odo para par�metro de movimenta��o
        /// </summary>
        /// <param name="entity">Entidade MTR_ParametroTipoMovimentacaoCurriculoPeriodo</param>
        /// <param name="banco">Conex�o aberta com o banco de dados/Null para uma nova conex�o</param>
        /// <returns></returns>
        public new static bool Save
        (
            MTR_ParametroTipoMovimentacaoCurriculoPeriodo entity
            , Data.Common.TalkDBTransaction banco
        )
        {
            MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO dao = new MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO();

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
        /// Deleta o par�metro de curso per�odo para par�metro de movimenta��o
        /// </summary>
        /// <param name="entity">Entidade MTR_ParametroTipoMovimentacaoCurriculoPeriodo</param>
        /// <param name="banco">Conex�o aberta com o banco de dados/Null para uma nova conex�o</param>
        /// <param name="ent_id">Id da entidade do usu�rio logado.</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Delete
        (
            MTR_ParametroTipoMovimentacaoCurriculoPeriodo entity
            , Data.Common.TalkDBTransaction banco
            , Guid ent_id
        )
        {
            MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO dao = new MTR_ParametroTipoMovimentacaoCurriculoPeriodoDAO();
            
            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            try
            {
                // Verifica se o curso per�odo do par�metro de movimenta��o pode ser deletado
                if (GestaoEscolarUtilBO.VerificaIntegridadaChaveDupla("tmo_id", "tmp_id", entity.tmo_id.ToString(), entity.tmp_id.ToString(), "MTR_TipoMovimentacaoCurriculoPeriodo,MTR_ParametroTipoMovimentacaoCurriculoPeriodo", dao._Banco))
                {
                    MTR_TipoMovimentacaoCurriculoPeriodo tmp = new MTR_TipoMovimentacaoCurriculoPeriodo { tmo_id = entity.tmo_id, tmp_id = entity.tmp_id };
                    MTR_TipoMovimentacaoCurriculoPeriodoBO.GetEntity(tmp, dao._Banco);

                    ACA_Curso cur = new ACA_Curso { cur_id = tmp.cur_id };
                    ACA_CursoBO.GetEntity(cur, dao._Banco);

                    ACA_CurriculoPeriodo crp = new ACA_CurriculoPeriodo { cur_id = tmp.cur_id, crr_id = tmp.crr_id, crp_id = tmp.crp_id };
                    ACA_CurriculoPeriodoBO.GetEntity(crp, dao._Banco);

                    throw new ValidationException("N�o � poss�vel excluir o(a) " + GestaoEscolarUtilBO.nomePadraoCurso(ent_id).ToLower() + " " + cur.cur_nome + " e " + GestaoEscolarUtilBO.nomePadraoPeriodo(ent_id).ToLower() + " " + crp.crp_descricao + " pois possui outros registros ligados a ele(a).");
                }

                // Deleta logicamente o par�metro do curso per�odo para par�metro de movimenta��o
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