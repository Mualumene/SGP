/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	public class CLS_PlanejamentoProjetoRelacionada : Abstract_CLS_PlanejamentoProjetoRelacionada
	{

        /// <summary>
        /// ID da escola.
        /// </summary>
        [MSNotNullOrEmpty("Escola � obrigat�ria.")]
        [DataObjectField(true, false, false)]
        public override int esc_id { get; set; }

        /// <summary>
        /// ID da unidade escolar.
        /// </summary>
        [MSNotNullOrEmpty("Unidade escolar � obrigat�ria.")]
        [DataObjectField(true, false, false)]
        public override int uni_id { get; set; }

        /// <summary>
        /// ID do calendario anual.
        /// </summary>
        [MSNotNullOrEmpty("Calendario anual � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cal_id { get; set; }

        /// <summary>
        /// ID do curso.
        /// </summary>
        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cur_id { get; set; }

        /// <summary>
        /// ID do planejamento do projeto.
        /// </summary>
        [MSNotNullOrEmpty("Planejamento do projeto � obrigat�ria.")]
        [DataObjectField(true, false, false)]
        public override int plp_id { get; set; }

        /// <summary>
        /// ID do tipo de disciplina.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de disciplina � obrigat�ria.")]
        [DataObjectField(true, false, false)]
        public override int tds_id { get; set; }

	}
}