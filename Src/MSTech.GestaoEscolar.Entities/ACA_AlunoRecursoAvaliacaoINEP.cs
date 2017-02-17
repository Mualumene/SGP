/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;
using System;

namespace MSTech.GestaoEscolar.Entities
{

    /// <summary>
    /// Description: .
    /// </summary>
    [Serializable]
    public class ACA_AlunoRecursoAvaliacaoINEP : AbstractACA_AlunoRecursoAvaliacaoINEP
    {
        /// <summary>
        /// Id do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// Tipo do recurso para avalia��o.
        /// </summary>
        [MSNotNullOrEmpty("Tipo do recurso para avalia��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tri_id { get; set; }
    }
}