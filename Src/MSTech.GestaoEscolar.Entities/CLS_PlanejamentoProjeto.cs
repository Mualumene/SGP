/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	public class CLS_PlanejamentoProjeto : Abstract_CLS_PlanejamentoProjeto
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
        [MSNotNullOrEmpty]
        [DataObjectField(true, true, false)]
        public override int plp_id { get; set; }

        /// <summary>
        /// ID do tipo de disciplina que cadastrou.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int tds_id { get; set; }

        /// <summary>
        /// ID do tipo de turma disciplina que criou o projeto.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de turma disciplina � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override byte tud_tipo { get; set; }

        /// <summary>
        /// Nome do projeto.
        /// </summary>
        [MSValidRange(200)]
        [MSNotNullOrEmpty("Nome do projeto � obrigat�rio.")]
        public override string plp_nome { get; set; }

        /// <summary>
        /// Descri��o do projeto.
        /// </summary>
        [MSNotNullOrEmpty("Descri��o do projeto � obrigat�rio.")]
        public override string plp_descricao { get; set; }

        /// <summary>
        /// Data inicio da dura��o do planejamento do projeto.
        /// </summary>
        [MSNotNullOrEmpty("Data de in�cio do projeto � obrigat�ria.")]
        public override DateTime plp_dataInicio { get; set; }

        /// <summary>
        /// Data fim da dura��o do planejamento do projeto.
        /// </summary>
        [MSNotNullOrEmpty("Data fim do projeto � obrigat�ria.")]
        public override DateTime plp_dataFim { get; set; }

        /// <summary>
        /// Situa��o do registro.
        /// </summary>
        [MSDefaultValue(1)]
        public override short plp_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime plp_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime plp_dataAlteracao { get; set; }

	}
}