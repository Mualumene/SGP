/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using MSTech.Business.Common;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
	
	/// <summary>
	/// ORC_ConteudoTipoPeriodoCalendario Business Object 
	/// </summary>
	public class ORC_ConteudoTipoPeriodoCalendarioBO : BusinessBase<ORC_ConteudoTipoPeriodoCalendarioDAO,ORC_ConteudoTipoPeriodoCalendario>
	{
        /// <summary>
        /// Retorna os tipos de per�odos do calend�rio, e a liga��o de cada um com o conte�do.
        /// </summary>
        /// <param name="obj_id">ID do objetivo</param>
        /// <param name="ctd_id">ID do conte�do</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaPor_Conteudo
        (
            int obj_id
            , int ctd_id
        )
        {
            ORC_ConteudoTipoPeriodoCalendarioDAO dao = new ORC_ConteudoTipoPeriodoCalendarioDAO();
            return dao.SelectBy_Conteudo(obj_id, ctd_id);
        }

        /// <summary>
        /// Retorna uma lista de tipos de per�odos do calend�rio
        /// </summary>
        /// <param name="obj_id">ID do objetivo</param>
        /// <param name="ctd_id">ID do conte�do</param>      
        /// <param name="banco">Conex�o aberta com o banco de dados/NULL para uma nova conex�o</param>
        /// <returns></returns>      
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<ORC_ConteudoTipoPeriodoCalendario> SelecionaListaPor_Conteudo
        (
            int obj_id
            , int ctd_id
            , TalkDBTransaction banco
        )
        {
            List<ORC_ConteudoTipoPeriodoCalendario> lista = new List<ORC_ConteudoTipoPeriodoCalendario>();

            ORC_ConteudoTipoPeriodoCalendarioDAO dao = new ORC_ConteudoTipoPeriodoCalendarioDAO();

            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            try
            {
                DataTable dt = dao.SelectBy_obj_id_ctd_id(obj_id, ctd_id);

                foreach (DataRow dr in dt.Rows)
                {
                    ORC_ConteudoTipoPeriodoCalendario ent = new ORC_ConteudoTipoPeriodoCalendario();
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

        #region Salvar

        /// <summary>
        /// Salva os per�odos relacionados ao conte�do.
        /// </summary>
        /// <param name="entConteudo">Entidae do conte�do</param>
        /// <param name="list">Lista de tpc_id</param>
        /// <param name="banco">Transa��o - obrigat�rio</param>
        internal static void SalvarPeriodos(ORC_Conteudo entConteudo, List<int> list, TalkDBTransaction banco)
        {
            List<ORC_ConteudoTipoPeriodoCalendario> listaPeriodosBanco = SelecionaListaPor_Conteudo(entConteudo.obj_id, entConteudo.ctd_id, banco);
        
            // Inclui os per�odos para o conte�do do objetivo
            foreach (int tpc_id in list)
            {
                ORC_ConteudoTipoPeriodoCalendario entity = new ORC_ConteudoTipoPeriodoCalendario
                                                               {
                                                                   obj_id = entConteudo.obj_id,
                                                                   ctd_id = entConteudo.ctd_id,
                                                                   tpc_id = tpc_id
                                                               };

                // S� inclui o tipo de per�odo do calend�rio para o conte�do do objetivo se ele n�o existir no banco
                if (!listaPeriodosBanco.Exists(p => p.obj_id == entity.obj_id && 
                                                    p.ctd_id == entity.ctd_id &&
                                                    p.tpc_id == entity.tpc_id))
                {
                    if (!entity.Validate())
                        throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));                    
                    
                    Save(entity, banco);
                }        
            }

            // Deleta os per�odos para o conte�do do objetivo que n�o est�o na lista do usu�rio                        
            foreach (ORC_ConteudoTipoPeriodoCalendario entityPeriodo in listaPeriodosBanco)
            {
                if (!list.Exists(p => p.Equals(entityPeriodo.tpc_id)))
                {
                    Delete(entityPeriodo, banco);
                }
            }    
        }

        #endregion
	}
}