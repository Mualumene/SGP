/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System;

    /// <summary>
    /// Description: CLS_TurmaAulaPendencia Business Object. 
    /// </summary>
    public class CLS_TurmaAulaPendenciaBO : BusinessBase<CLS_TurmaAulaPendenciaDAO, CLS_TurmaAulaPendencia>
    {
        /// <summary>
        /// Atualiza a pend�ncia da aula.
        /// </summary>
        /// <param name="tud_id">Id da disciplina.</param>
        /// <param name="tau_id">Id da aula.</param>
        /// <param name="semPlanoAula">Indica se possui plano de aula.</param>
        public static void AtualizarPendencia(long tud_id, int tau_id, bool semPlanoAula)
        {
            new CLS_TurmaAulaPendenciaDAO().AtualizarPendencia(tud_id, tau_id, semPlanoAula);
        }
    }
}