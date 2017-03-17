/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using Validation;
    /// <summary>
    /// Description: .
    /// </summary>
    public class CLS_ObjetoAprendizagemTurmaAula : Abstract_CLS_ObjetoAprendizagemTurmaAula
    {
        /// <summary>
        /// ID da tabela TUR_TurmaDisciplina.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela � TUR_TurmaDisciplina obrigat�rio.")]
        public override long tud_id { get; set; }

        /// <summary>
        /// ID da tabela CLS_TurmaAula.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela � CLS_TurmaAula obrigat�rio.")]
        public override int tau_id { get; set; }

        /// <summary>
        /// ID da tabela ACA_ObjetoAprendizagem.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela � ACA_ObjetoAprendizagem obrigat�rio.")]
        public override int oap_id { get; set; }
    }
}