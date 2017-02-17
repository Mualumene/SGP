/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{

    /// <summary>
    /// 
    /// </summary>
    [Serializable]
    public class ACA_CursoReunioes : Abstract_ACA_CursoReunioes
    {
        /// <summary>
        /// ID do curso
        /// </summary>
        [MSNotNullOrEmpty("Curso � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cur_id { get; set; }

        /// <summary>
        /// ID do curr�culo do curso
        /// </summary>
        [MSNotNullOrEmpty("Curr�culo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int crr_id { get; set; }

        /// <summary>
        /// ID do calend�rio
        /// </summary>
        [MSNotNullOrEmpty("Calend�rio � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int cal_id { get; set; }

        /// <summary>
        /// ID de curso reuni�o
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int crn_id { get; set; }

        /// <summary>
        /// Quantidade de reuni�es por per�odo do calend�rio
        /// </summary>
        [MSNotNullOrEmpty("Quantidade de reuni�es por per�odo do calend�rio � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int crn_qtde { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Exclu�do
        /// </summary>
        [MSDefaultValue(1)]
        public override byte crn_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>
        public override DateTime crn_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro
        /// </summary>
        public override DateTime crn_dataAlteracao { get; set; }
    }
}