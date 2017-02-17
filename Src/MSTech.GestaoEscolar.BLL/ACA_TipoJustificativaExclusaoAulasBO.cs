/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System.ComponentModel;
    using System.Data;
    using Validation.Exceptions;
    using System;
    using System.Collections.Generic;

    /// <summary>
    /// Description: ACA_TipoJustificativaExclusaoAulas Business Object. 
    /// </summary>
    public class ACA_TipoJustificativaExclusaoAulasBO : BusinessBase<ACA_TipoJustificativaExclusaoAulasDAO, ACA_TipoJustificativaExclusaoAulas>
    {
        /// <summary>
        /// Situa��es da tipos de justificativas para exclus�o de aulas
        /// </summary>
        public enum ACA_TipoJustificativaExclusaoAulasSituacao : byte
        {
            Ativo = 1
            ,
            Excluido = 3
            ,
            Inativo = 4
        }

        /// <summary>
        /// Retorna todos os tipos de justificativas para exclus�o de aulas n�o exclu�dos logicamente
        /// Com pagina��o
        /// </summary>
        /// <param name="paginado"></param>
        /// <param name="currentPage">P�gina atual do grid/param>
        /// <param name="pageSize">Total de registros por p�gina do grid</param>
        /// <param name="situacao"></param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaTipoJustificativaExclusaoAulas
        (
            bool paginado,
            int currentPage,
            int pageSize,
            int situacao
        )
        {
            totalRecords = 0;

            if (pageSize == 0)
                pageSize = 1;

            ACA_TipoJustificativaExclusaoAulasDAO dao = new ACA_TipoJustificativaExclusaoAulasDAO();
            return dao.SelectBy_Pesquisa(paginado, currentPage / pageSize, pageSize, situacao, out totalRecords);
        }

        /// <summary>
        /// Retorna os tipos de justificativas para exclus�o de aulas ativos.
        /// </summary>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<ACA_TipoJustificativaExclusaoAulas> GetSelectAtivos()
        {          
            ACA_TipoJustificativaExclusaoAulasDAO dao = new ACA_TipoJustificativaExclusaoAulasDAO();
            return dao.SelectAtivos();
        }        

        /// <summary>
        /// Inclui ou altera o tipo de justificativa para exclus�o de aulas
        /// </summary>
        /// <param name="entity">Entidade ACA_TipoJustificativaExclusaoAulas</param>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Save
        (
            ACA_TipoJustificativaExclusaoAulas entity
        )
        {
            if (entity.Validate())
            {
                if (VerificaNomeExistente(entity))
                    throw new DuplicateNameException("J� existe um tipo de justificativa para exclus�o de aulas cadastrada com este nome.");

                ACA_TipoJustificativaExclusaoAulasDAO dao = new ACA_TipoJustificativaExclusaoAulasDAO();
                return dao.Salvar(entity);
            }

            throw new ValidationException(entity.PropertiesErrorList[0].Message);
        }

        /// <summary>
        /// Verifica se j� existe um tipo de justificativa para exclus�o de aulas cadastrado com o mesmo nome
        /// </summary>
        /// <param name="entity">Entidade ACA_TipoNivelEnsino</param> 
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool VerificaNomeExistente
        (
            ACA_TipoJustificativaExclusaoAulas entity
        )
        {
            ACA_TipoJustificativaExclusaoAulasDAO dao = new ACA_TipoJustificativaExclusaoAulasDAO();
            return dao.SelectBy_Nome(entity.tje_id, entity.tje_nome);
        }

        /// <summary>
        /// Deleta logicamente um tipo de justificativa para exclus�o de aulas
        /// </summary>
        /// <param name="entity">Entidade ACA_TipoJustificativaExclusaoAulas</param>        
        /// <returns>True = deletado/alterado | False = n�o deletado/alterado</returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Delete
        (
            ACA_TipoJustificativaExclusaoAulas entity
        )
        {
            ACA_TipoJustificativaExclusaoAulasDAO dao = new ACA_TipoJustificativaExclusaoAulasDAO();
            dao._Banco.Open(IsolationLevel.ReadCommitted);

            try
            {
                //Verifica se o tipo de justificativa para exclus�o de aulas
                if (GestaoEscolarUtilBO.VerificarIntegridade
                  (
                    "tje_id"
                    , entity.tje_id.ToString()
                    , "ACA_TipoJustificativaExclusaoAulas"
                    , dao._Banco
                  ))
                {
                    throw new ValidationException("N�o � poss�vel excluir o tipo de justificativa para exclus�o de aulas, pois possui outros registros ligados a ele.");
                }

                //Deleta logicamente o tipo de justificativa para exclus�o de aulas
                dao.Delete(entity);

                return true;
            }
            catch (Exception ex)
            {
                dao._Banco.Close(ex);
                throw;
            }
            finally
            {
                dao._Banco.Close();
            }
        }
    }
}