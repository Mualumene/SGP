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
	/// 
	/// </summary>
    [Serializable]
	public class ACA_AlunoCurriculo : AbstractACA_AlunoCurriculo
	{
        /// <summary>
        /// ID do curr�culo do aluno.
        /// </summary>        
        [DataObjectField(true, false, false)]
        public override int alc_id { get; set; }

        /// <summary>
        /// Id da escola.
        /// </summary>
        [MSNotNullOrEmpty("Escola � obrigat�rio.")]
        public override int esc_id { get; set; }

        /// <summary>
        /// Id da unidade da escola.
        /// </summary>
        [MSNotNullOrEmpty("Escola � obrigat�rio.")]
        public override int uni_id { get; set; }

        /// <summary>
        /// Id do curso.
        /// </summary>        
        public override int cur_id { get; set; }

        /// <summary>
        /// Id do curr�culo do curso.
        /// </summary>        
        public override int crr_id { get; set; }

        /// <summary>
        /// Id do per�odo do curso.
        /// </summary>        
        public override int crp_id { get; set; }

        /// <summary>
        /// N�mero de matr�cula do aluno.
        /// </summary>
        [MSValidRange(50, "Matr�cula pode conter at� 50 caracteres.")]
        public override string alc_matricula { get; set; }

        /// <summary>
        /// C�digo INEP do hist�rico do aluno.
        /// </summary>
        [MSValidRange(20, "C�digo INEP pode conter at� 20 caracteres.")]
        public override string alc_codigoInep { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do, 4-Inativo, 5-Formado, 6-Cancelado, 7- Em matr�cula, 8- Excedente, 9-Evadido, 10- Em movimenta��o.
        /// </summary>    
        [MSDefaultValue(1)]
        public override short alc_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>        
        public override DateTime alc_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>        
        public override DateTime alc_dataAlteracao { get; set; }        
	}
}