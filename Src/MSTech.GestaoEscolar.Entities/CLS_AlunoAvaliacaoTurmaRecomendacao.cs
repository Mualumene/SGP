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
	public class CLS_AlunoAvaliacaoTurmaRecomendacao : Abstract_CLS_AlunoAvaliacaoTurmaRecomendacao
    {
        /// <summary>
        /// ID da turma.
        /// </summary>
        [MSNotNullOrEmpty("Turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long tur_id { get; set; }

        /// <summary>
        /// ID do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// ID da matr�cula turma do aluno.
        /// </summary>
        [MSNotNullOrEmpty("Matr�cula turma � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int mtu_id { get; set; }

        /// <summary>
        /// ID do formato de avalia��o.
        /// </summary>
        [MSNotNullOrEmpty("Formato de avalia��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int fav_id { get; set; }

        /// <summary>
        /// ID da avalia��o.
        /// </summary>
        [MSNotNullOrEmpty("Avalia��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int ava_id { get; set; }

        /// <summary>
        /// ID do tipo de qualidade.
        /// </summary>
        [MSNotNullOrEmpty("Recomenda��o ao aluno e pais-respons�veis � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int rar_id { get; set; }

        /// <summary>
        /// Propriedade auxiliar - Tipo de recomenda��o.
        /// </summary>
        [MSNotNullOrEmpty("Tipo de recomenda��o � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override short rar_tipo { get; set; }
    }
}