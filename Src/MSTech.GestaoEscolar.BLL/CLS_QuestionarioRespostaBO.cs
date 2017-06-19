/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System.ComponentModel;

    #region Enumeradores

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

    /// <summary>
    /// Description: CLS_QuestionarioResposta Business Object. 
    /// </summary>
    public class CLS_QuestionarioRespostaBO : BusinessBase<CLS_QuestionarioRespostaDAO, CLS_QuestionarioResposta>
	{
				
	}
}