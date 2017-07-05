/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System.Data;
    using System.ComponentModel;
    using Validation.Exceptions;
    using System.Collections.Generic;
    using System;
    using System.Linq;

    #region Enumeradores

    public enum QuestionarioTipoConteudo
    {
        [Description("T�tulo 1")]
        Titulo1 = 1,
        [Description("T�tulo 2")]
        Titulo2,
        [Description("Texto")]
        Texto,
        [Description("Pergunta")]
        Pergunta
    }

    public enum QuestionarioTipoResposta
    {
        [Description("M�ltipla sele��o")]
        MultiplaSelecao = 1,
        [Description("Sele��o �nica")]
        SelecaoUnica,
        [Description("Texto aberto")]
        TextoAberto
    }

    #endregion

    [Serializable]
    public class QuestionarioConteudo : CLS_QuestionarioConteudo
    {
        public List<CLS_QuestionarioResposta> lstRepostas { get; set; }

        public QuestionarioConteudo()
        {
            lstRepostas = new List<CLS_QuestionarioResposta>();
        }
    }

    /// <summary>
    /// Description: CLS_QuestionarioConteudo Business Object. 
    /// </summary>
    public class CLS_QuestionarioConteudoBO : BusinessBase<CLS_QuestionarioConteudoDAO, CLS_QuestionarioConteudo>
    {

        /// <summary>
        ///Busca os conte�dos filtrado por question�rio
        /// </summary>
        /// <param name="qst_id"></param>
        /// <returns></returns>
        public static DataTable SelectByQuestionarioPaginado
           (
                int qst_id
                , int currentPage
                , int pageSize
           )
        {
            totalRecords = 0;

            if (pageSize == 0)
                pageSize = 1;

            CLS_QuestionarioConteudoDAO dao = new CLS_QuestionarioConteudoDAO();
            return dao.SelectByQuestionarioPaginado(true, currentPage / pageSize, pageSize, qst_id, out totalRecords);
        }

        /// <summary>
        ///Busca os conte�dos filtrado por question�rio
        /// </summary>
        /// <param name="qst_id"></param>
        /// <returns></returns>
        public static DataTable SelectByQuestionario
           (
                int qst_id
           )
        {
            CLS_QuestionarioConteudoDAO dao = new CLS_QuestionarioConteudoDAO();
            return dao.SelectByQuestionario(qst_id);
        }

        /// <summary>
        ///Busca os conte�dos filtrado por question�rio
        /// </summary>
        /// <param name="qst_id"></param>
        /// <returns></returns>
        public static DataTable SelectConteudoRespostaByQuestionario
           (
                int qst_id
                , byte tipoConteudo
                , byte tipoResposta
           )
        {
            CLS_QuestionarioConteudoDAO dao = new CLS_QuestionarioConteudoDAO();

            DataTable dt = dao.SelectByQuestionario(qst_id);

            if (dt.AsEnumerable().Any(r => Convert.ToByte(r["qtc_tipo"]) == tipoConteudo && Convert.ToByte(r["qtc_tipoResposta"]) == tipoResposta))
                dt = dt.AsEnumerable()
                        .Where(row => row.Field<byte>("qtc_tipo") == tipoConteudo
                            && row.Field<byte>("qtc_tipoResposta") == tipoResposta)
                        .CopyToDataTable();
            else dt = new DataTable();

            return dt;            
        }

        /// <summary>
        /// Altera a ordem do conte�do
        /// </summary>
        /// <param name="entitySubir">Entidade do conte�do</param>
        /// <param name="entityDescer">Entidade do conte�do</param>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public static bool SaveOrdem
        (
            CLS_QuestionarioConteudo entityDescer
            , CLS_QuestionarioConteudo entitySubir
        )
        {
            CLS_QuestionarioConteudoDAO dao = new CLS_QuestionarioConteudoDAO();

            if (entityDescer.Validate())
                dao.Salvar(entityDescer);
            else
                throw new ValidationException(entityDescer.PropertiesErrorList[0].Message);

            if (entitySubir.Validate())
                dao.Salvar(entitySubir);
            else
                throw new ValidationException(entitySubir.PropertiesErrorList[0].Message);

            return true;
        }
    }
}