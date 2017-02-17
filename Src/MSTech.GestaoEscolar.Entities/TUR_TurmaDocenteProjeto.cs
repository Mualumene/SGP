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
	public class TUR_TurmaDocenteProjeto : AbstractTUR_TurmaDocenteProjeto
	{
        /// <summary>
        /// ID da turma.
        /// </summary>
        [MSNotNullOrEmpty("ID da turma � obrigat�rio")]
        [DataObjectField(true, false, false)]
        public override long tur_id { get; set; }

        /// <summary>
        /// ID do turma docente projeto.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override long tdp_id { get; set; }

        /// <summary>
        /// ID do docente.
        /// </summary>
        [MSNotNullOrEmpty("ID do docente � obrigat�rio")]
        public override long doc_id { get; set; }

        /// <summary>
        /// ID do colaborador relacionado ao docente.
        /// </summary>
        [MSNotNullOrEmpty("ID do colaborador relacionado ao docente � obrigat�rio")]
        public override long col_id { get; set; }

        /// <summary>
        /// ID do cargo do docente relacionado � disciplina.
        /// </summary>
        [MSNotNullOrEmpty("ID do cargo do docente relacionado � disciplina � obrigat�rio")]
        public override int crg_id { get; set; }

        /// <summary>
        /// ID do relacionamento do cargo do colaborador.
        /// </summary>
        [MSNotNullOrEmpty("ID do relacionamento do cargo do colaborador � obrigat�rio")]
        public override int coc_id { get; set; }

        /// <summary>
        /// Posi��o do docente.
        /// </summary>
        [MSNotNullOrEmpty("Posi��o do docente � obrigat�rio")]
        public override short tdp_posicao { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3 - Exclu�do, 4 - Inativo).
        /// </summary>
        [MSDefaultValue(1)]
        public override short tdp_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime tdp_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime tdp_dataAlteracao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar que armazena o ID do tipo de docente.
        /// </summary>
        public byte tdc_id { get; set; }
	}
}