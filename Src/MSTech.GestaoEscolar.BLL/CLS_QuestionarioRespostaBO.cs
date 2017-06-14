/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
	using MSTech.Business.Common;
	using MSTech.GestaoEscolar.Entities;
	using MSTech.GestaoEscolar.DAL;

    #region Enumeradores

    public enum TipoResposta
    {
        [StringValue("M�ltipla sele��o")]
        MultiplaSelecao = 1,
        [StringValue("Sele��o �nica")]
        SelecaoUnica,
        [StringValue("Texto aberto")]
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