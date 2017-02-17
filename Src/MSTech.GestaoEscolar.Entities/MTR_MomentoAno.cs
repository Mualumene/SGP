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
    public class MTR_MomentoAno : Abstract_MTR_MomentoAno
    {
        /// <summary>
        /// Id dos momentos de movimenta��o
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int mom_id { get; set; }

        /// <summary>
        /// Prazo em dias para realiza��o da movimenta��o
        /// </summary>
        [MSNotNullOrEmpty("Quantidade de dias corridos que a escola pode realizar uma movimenta��o sem ter uma a��o retroativa � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int mom_prazoMovimentacao { get; set; }

        /// <summary>
        /// Prazo em dias para aprova��o de uma a��o retroativa por usu�rios com vis�o gest�o
        /// </summary>
        [MSNotNullOrEmpty("Limite de aprova��o da a��o retroativa pela vis�o Gest�o (em dias corridos) � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int mom_prazoAprovacaoRetroativa { get; set; }

        /// <summary>
        /// Situa��o do registro: 1-Ativo, 3-Exclu�do
        /// </summary>
        [MSDefaultValue(1)]
        public override byte mom_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>
        public override DateTime mom_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro
        /// </summary>
        public override DateTime mom_dataAlteracao { get; set; }
    }
}