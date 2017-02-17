/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Data;
using System.ComponentModel;

using MSTech.Business.Common;
using MSTech.GestaoEscolar.DAL;
using MSTech.GestaoEscolar.Entities;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
    /// <summary>
    /// ESC_TipoClassificacaoEscola Business Object 
    /// </summary>
    public class ESC_TipoClassificacaoEscolaBO : BusinessBase<ESC_TipoClassificacaoEscolaDAO, ESC_TipoClassificacaoEscola>
    {
        /// <summary>
        /// Retorna todos os tipos de classifica��o de escola n�o exclu�dos logicamente
        /// com pagina��o.
        /// </summary>                                
        /// <param name="currentPage">P�gina atual do grid</param>
        /// <param name="pageSize">Total de registros por p�gina do grid</param>        
        /// <returns>Retorna todos os tipos de classifica��o de escola.</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaTipoClassificacaoEscolaPaginado(int currentPage, int pageSize)
        {
            ESC_TipoClassificacaoEscolaDAO dao = new ESC_TipoClassificacaoEscolaDAO();
            return dao.SelectBy_Pesquisa(true, currentPage, pageSize, out totalRecords);
        }

        /// <summary>
        /// Retorna todos os tipos de classifica��o de escola n�o exclu�dos logicamente
        /// sem pagina��o.
        /// </summary>
        /// <returns>
        /// Retorna um DataTable com todos os tipos de de classifica��o de escola.
        /// </returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaTipoClassificacaoEscola()
        {
            ESC_TipoClassificacaoEscolaDAO dao = new ESC_TipoClassificacaoEscolaDAO();
            return dao.SelectBy_Pesquisa(false, 1, 1, out totalRecords);
        }
    }
}
