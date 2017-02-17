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
	public class ACA_AlunoAnexo : AbstractACA_AlunoAnexo
	{
		/// <summary>
		/// ID do aluno.
		/// </summary>
		[MSNotNullOrEmpty("Aluno � obrigat�rio.")]
		[DataObjectField(true, false, false)]
		public override long alu_id { get; set; }

		/// <summary>
		/// ID do anexo do aluno.
		/// </summary>
		[DataObjectField(true, false, false)]
		public override int aan_id { get; set; }

		/// <summary>
		/// ID do arquivo de anexo do aluno.
		/// </summary>
		[MSNotNullOrEmpty("Arquivo de anexo � obrigat�rio.")]
		public override long arq_id { get; set; }

        /// <summary>
        /// Descri��o do anexo do aluno.
        /// </summary>
        [MSValidRange(500, "Descrica��o do anexo do aluno pode possuir at� 500 caracteres.")]
        [MSNotNullOrEmpty("Descri��o do anexo do aluno � obrigat�rio.")]
        public override string aan_descricao { get; set; }

		/// <summary>
		/// Situacao do anexo do aluno (1 - Ativo, 3 - Exclu�do).
		/// </summary>
		[MSDefaultValue(1)]
		public override byte aan_situacao { get; set; }

		/// <summary>
		/// Data de cria��o do anexo do aluno.
		/// </summary>
		public override DateTime aan_dataCriacao { get; set; }

		/// <summary>
		/// Data de altera��o do anexo do aluno.
		/// </summary>
		public override DateTime aan_dataAlteracao { get; set; }

        public string arq_nome { get; set; }
        public byte arq_situacao { get; set; }
	}
}