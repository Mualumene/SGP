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
    using System.Linq;
    using System.Collections.Generic;
    using Data.Common;
    using Validation.Exceptions;
    using System;

    /// <summary>
    /// Sem lan�amento de relatorio (1 - AEE, 2 - NAAPA, 4 - RP) Enumerador bin�rio
    /// </summary>
    [Flags]
    public enum eConfiguracaoServicoPendenciaSemRelatorioAtendimento : int
    {
        Nenhum = 0
        ,
        [Description("ACA_ConfiguracaoServicoPendenciaBO.eConfiguracaoServicoPendenciaSemRelatorioAtendimento.AEE")]
        AEE = 1
        ,
        [Description("ACA_ConfiguracaoServicoPendenciaBO.eConfiguracaoServicoPendenciaSemRelatorioAtendimento.NAAPA")]
        NAAPA = 2
        ,
        [Description("ACA_ConfiguracaoServicoPendenciaBO.eConfiguracaoServicoPendenciaSemRelatorioAtendimento.RP")]
        RP = 4
    }

    /// <summary>
    /// Classe de excess�o referente � entidade ACA_ConfiguracaoServicoPendencia
    /// Utilizada nas telas de cadastro, para identificar se houve erro de valida��o
    /// na entidade do ACA_ConfiguracaoServicoPendencia.
    /// </summary>
    public class ACA_ConfiguracaoServicoPendenciaDuplicateException : ValidationException
    {
        public ACA_ConfiguracaoServicoPendenciaDuplicateException(string message) : base(message) { }
    }

    /// <summary>
    /// Description: ACA_ConfiguracaoServicoPendencia Business Object. 
    /// </summary>
    public class ACA_ConfiguracaoServicoPendenciaBO : BusinessBase<ACA_ConfiguracaoServicoPendenciaDAO, ACA_ConfiguracaoServicoPendencia>
	{
        /// <summary>
        /// Verifica se j� existe uma Configura��o do servi�o de pend�ncia cadastrada com os mesmos dados
        /// e com a situa��o "Ativo"
        /// </summary>
        /// <param name="entity">Entidade configura��o do servi�o de pend�ncia</param>
        /// <returns>True/False</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool SelectBy_VerificaConfiguracaoServicoPendencia
        (
            ACA_ConfiguracaoServicoPendencia entity
            , TalkDBTransaction banco
        )
        {
            ACA_ConfiguracaoServicoPendenciaDAO dao = new ACA_ConfiguracaoServicoPendenciaDAO();
            if (banco == null)
                dao._Banco.Open(IsolationLevel.ReadCommitted);
            else
                dao._Banco = banco;

            return dao.SelectBy_VerificaConfiguracaoServicoPendencia(entity);
        }


        /// <summary>
        /// Retorna as configura��es de servi�o de pend�ncia n�o exclu�das logicamente, de acordo com tipo de n�vel de ensino,
        /// tipo de modalidade de ensino e tipo de turma.
        /// </summary>   
        /// <param name="tne_id">Id do tipo de n�vel de ensino</param>
        /// <param name="tme_id">Id do tipo de modalidade de ensino</param>
        /// <param name="tur_tipo">Enum do tipo de turma</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelectBy_tne_id_tme_id_tur_tipo
        (
            int tne_id
            , int tme_id
            , int tur_tipo
            , bool paginado
            , int currentPage
            , int pageSize
        )
        {
            ACA_ConfiguracaoServicoPendenciaDAO dao = new ACA_ConfiguracaoServicoPendenciaDAO();
            return dao.SelectBy_tne_id_tme_id_tur_tipo(tne_id, tme_id, tur_tipo, paginado, currentPage / pageSize, pageSize, out totalRecords);
        }
        
        /// <summary>
        /// Retorna as configura��es de servi�o de pend�ncia n�o exclu�das logicamente, de acordo com tipo de n�vel de ensino,
        /// tipo de modalidade de ensino e tipo de turma.
        /// </summary>   
        /// <param name="tne_id">Id do tipo de n�vel de ensino</param>
        /// <param name="tme_id">Id do tipo de modalidade de ensino</param>
        /// <param name="tur_tipo">Enum do tipo de turma</param>
        public static List<ACA_ConfiguracaoServicoPendencia> SelectTodasBy_tne_id_tme_id_tur_tipo
        (
            int tne_id
            , int tme_id
            , int tur_tipo
        )
        {
            ACA_ConfiguracaoServicoPendenciaDAO dao = new ACA_ConfiguracaoServicoPendenciaDAO();
            DataTable dt = dao.SelectTodasBy_tne_id_tme_id_tur_tipo(tne_id, tme_id, tur_tipo, false, 1, 0, out totalRecords);

            return (from DataRow dr in dt.Rows
                    select (ACA_ConfiguracaoServicoPendencia)GestaoEscolarUtilBO.DataRowToEntity(dr, new ACA_ConfiguracaoServicoPendencia())).ToList();
        }
    }
}