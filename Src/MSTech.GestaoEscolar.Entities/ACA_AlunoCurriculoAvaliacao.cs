/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{

    /// <summary>
    /// 
    /// </summary>
    [Serializable]
    public class ACA_AlunoCurriculoAvaliacao : Abstract_ACA_AlunoCurriculoAvaliacao
    {
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override Int64 alu_id { get; set; }
        
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int alc_id { get; set; }

        [DataObjectField(true, false, false)]
        public override int ala_id { get; set; }

        [MSNotNullOrEmpty("Turma � obrigat�rio.")]
        public override Int64 tur_id { get; set; }

        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        public override int cur_id { get; set; }

        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        public override int crr_id { get; set; }

        [MSNotNullOrEmpty("Per�odo do curso � obrigat�rio.")]
        public override int crp_id { get; set; }

        [MSNotNullOrEmpty("Avalia��o � obrigat�rio.")]
        public override int tca_id { get; set; }

        /// <summary>
        /// Indica se o aluno foi/ser� avaliado.
        /// </summary>
        [MSDefaultValue(1)]
        public override bool ala_avaliado { get; set; }
        
        [MSDefaultValue(1)]
        public override byte ala_situacao { get; set; }

        public override DateTime ala_dataCriacao { get; set; }
        public override DateTime ala_dataAlteracao { get; set; }
    }
}