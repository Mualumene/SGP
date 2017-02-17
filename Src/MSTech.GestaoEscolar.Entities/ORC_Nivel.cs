/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using System;
    using System.ComponentModel;
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class ORC_Nivel : Abstract_ORC_Nivel
	{
        /// <summary>
        /// ID do n�vel.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int nvl_id { get; set; }

        /// <summary>
        /// ID do curso.
        /// </summary>
        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        public override int cur_id { get; set; }

        /// <summary>
        /// ID do curriculo.
        /// </summary>
        [MSNotNullOrEmpty("Curr�culo � obrigat�rio.")]
        public override int crr_id { get; set; }

        /// <summary>
        /// ID do per�odo.
        /// </summary>
        [MSNotNullOrEmpty("Curr�culo per�odo � obrigat�rio.")]
        public override int crp_id { get; set; }

        /// <summary>
        /// ID do calend�rio associado ao n�vel.
        /// </summary>
        [MSNotNullOrEmpty("Calend�rio � obrigat�rio.")]
        public override int cal_id { get; set; }

        /// <summary>
        /// ID do tipo de disciplina.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de disciplina � obrigat�rio.")]
        public override int tds_id { get; set; }

        /// <summary>
        /// Ordem do n�vel.
        /// </summary>
        [MSNotNullOrEmpty("Ordem � obrigat�rio.")]
        public override int nvl_ordem { get; set; }

        /// <summary>
        /// Nome do n�vel.
        /// </summary>
        [MSValidRange(100, "Nome pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome � obrigat�rio.")]
        public override string nvl_nome { get; set; }

        /// <summary>
        /// Nome do n�vel no plural.
        /// </summary>
        [MSValidRange(100, "Nome pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome no plural � obrigat�rio.")]
        public override string nvl_nomePlural { get; set; }

        /// <summary>
        /// Situa��o do n�vel (1-Ativo, 3-Exclu�do).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte nvl_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do n�vel.
        /// </summary>
        public override DateTime nvl_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do n�vel.
        /// </summary>
        public override DateTime nvl_dataAlteracao { get; set; }
	}
}