/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Data.Common;
using System.Data;
using System.Collections.Generic;
using System;

namespace MSTech.GestaoEscolar.BLL
{
	
	/// <summary>
	/// ESC_EscolaClassificacao Business Object 
	/// </summary>
    public class ESC_EscolaClassificacaoBO : BusinessBase<ESC_EscolaClassificacaoDAO, ESC_EscolaClassificacao>
    {
        /// <summary>
        /// Retorna os tipos de classifica��o associados � escola por vig�ncia.
        /// </summary>        
        /// <param name="esc_id">ID da escola</param>
        /// <param name="ecv_id">ID da vig�ncia da classifica��o</param>
        /// <returns>DataTable de tipos de classifica��o</returns>
        public static DataTable SelecionaTipoClassificacaoAssociado(int esc_id, long ecv_id)
        {
            ESC_EscolaClassificacaoDAO dao = new ESC_EscolaClassificacaoDAO();
            return dao.SelectTipoClassificacaoAssociado(esc_id, ecv_id);
        }

        /// <summary>
        /// Retorna os tipos de classifica��o associados a escola
        /// </summary>        
        /// <param name="esc_id">ID da escola</param>
        /// <param name="ecv_id">ID da vig�ncia da classifica��o</param>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        /// <returns>List da entidade ESC_EscolaClassificacao</returns>
        public static List<ESC_EscolaClassificacao> SelecionaTipoClassificacaoAssociado(int esc_id, long ecv_id, TalkDBTransaction banco)
        {
            ESC_EscolaClassificacaoDAO dao = new ESC_EscolaClassificacaoDAO { _Banco = banco };
            List<ESC_EscolaClassificacao> listclass = new List<ESC_EscolaClassificacao>();
            DataTable dtclass = dao.SelectTipoClassificacaoAssociado(esc_id, ecv_id);

            foreach (DataRow dr in dtclass.Rows)
            {
                ESC_EscolaClassificacao ent = new ESC_EscolaClassificacao();
                ent = dao.DataRowToEntity(dr, ent);

                listclass.Add(ent);
            }

            return listclass;
        }

        /// <summary>
        /// Retorna os tipos de classifica��o n�o associados a escola
        /// </summary>        
        /// <param name="esc_id">ID da escola</param>
        /// <returns>DataTable de tipos de classifica��o</returns>
        public static DataTable SelecionaTipoClassificacaoNaoAssociado(int esc_id)
        {
            ESC_EscolaClassificacaoDAO dao = new ESC_EscolaClassificacaoDAO();
            return dao.SelectTipoClassificacaoNaoAssociado(esc_id);
        }

        /// <summary>
        /// Seleciona hist�rico de classfifica��es da escola.
        /// </summary>
        /// <param name="esc_id">Id da escola</param>
        /// <returns>Lista com classifica��es</returns>
        public static List<ESC_EscolaClassificacao> SelecionaHistoricoEscola(int esc_id)
        {
            return new ESC_EscolaClassificacaoDAO().SelecionaHistoricoEscola(esc_id);
        }

        /// <summary>
        /// Salva os tipos de classifica��o relacionados a escola
        /// </summary>
        /// <param name="esc_id">ID da escola - obrigat�rio</param>
        /// <param name="ecv_id">ID da vig�ncia da classifica��o</param>
        /// <param name="ListaEscolaClassificacao">List de tipos de classificacao relacionados - obrigat�rio</param>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        internal static void SaveEscolaClassificacao(int esc_id, long ecv_id, List<ESC_EscolaClassificacao> ListaEscolaClassificacao, TalkDBTransaction banco)
        {
            List<ESC_EscolaClassificacao> listclass = SelecionaTipoClassificacaoAssociado(esc_id, ecv_id, banco);

            // Inclui ou Altera os cursos do projeto de refor�o
            foreach (ESC_EscolaClassificacao tce in ListaEscolaClassificacao)
            {
                ESC_EscolaClassificacao entity = new ESC_EscolaClassificacao
                {
                    esc_id = esc_id,
                    tce_id = tce.tce_id,
                    ecv_id = tce.ecv_id
                };
                GetEntity(entity, banco);

                tce.esc_id = esc_id;
                tce.IsNew = entity.IsNew;

                if (tce.IsNew)
                    Save(tce, banco);
            }

            // Exclui classifica��es, se necess�rio
            foreach (ESC_EscolaClassificacao tceBanco in listclass)
            {
                if (!ListaEscolaClassificacao.Exists(p => p.tce_id == tceBanco.tce_id))
                {
                    ESC_EscolaClassificacao ent = new ESC_EscolaClassificacao
                        {
                            esc_id = esc_id,
                            tce_id = tceBanco.tce_id,
                            ecv_id = tceBanco.ecv_id
                        };
                        Delete(ent, banco);
                }
            }
        }

        /// <summary>
        /// 	Verifica se existe o cargo na classifica��o da escola.
        /// </summary>
        /// <param name="esc_id">Id da escola</param>
        /// <param name="crg_id">Id do cargo</param>
        /// <returns></returns>
        public static bool VerificaExisteCargoClassificacao(int esc_id, int crg_id, TalkDBTransaction banco = null)
        {
            ESC_EscolaClassificacaoDAO dao = banco == null ? new ESC_EscolaClassificacaoDAO() : new ESC_EscolaClassificacaoDAO { _Banco = banco };
            try
            {
                if (banco == null)
                {
                    dao._Banco.Open(IsolationLevel.ReadCommitted);
                }

                return dao.VerificaExisteCargoClassificacao(esc_id, crg_id);
            }
            catch (Exception ex)
            {
                if (banco == null)
                {
                    dao._Banco.Close(ex);
                }
                throw;
            }
            finally
            {
                if (banco == null && dao._Banco.ConnectionIsOpen)
                {
                    dao._Banco.Close();
                }
            }
        }
    }
}