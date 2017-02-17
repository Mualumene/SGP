/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;

using MSTech.Validation;
using MSTech.GestaoEscolar.Entities.Abstracts;

namespace MSTech.GestaoEscolar.Entities
{

    /// <summary>
    /// 
    /// </summary>
    [Serializable]
    public class MTR_ProcessoFechamentoInicio : Abstract_MTR_ProcessoFechamentoInicio
    {
        [DataObjectField(true, true, false)]
        public override int pfi_id { get; set; }

        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }

        [MSNotNullOrEmpty("Ano de fechamento � obrigat�rio.")]
        public override int pfi_anoFechamento { get; set; }

        [MSNotNullOrEmpty("Ano de in�cio � obrigat�rio.")]
        public override int pfi_anoInicio { get; set; }

        //[MSNotNullOrEmpty("Data de in�cio da previs�o de s�ries � obrigat�rio.")]
        //public override DateTime pfi_dataInicioPrevisaoSeries { get; set; }

        //[MSNotNullOrEmpty("Data de fim da previs�o de s�ries � obrigat�rio.")]
        //public override DateTime pfi_dataFimPrevisaoSeries { get; set; }

        //[MSNotNullOrEmpty("Data de in�cio da defini��o dos par�metros de remanejamento � obrigat�rio.")]
        //public override DateTime pfi_dataInicioParametroRemanejamento { get; set; }

        //[MSNotNullOrEmpty("Data de fim da defini��o dos par�metros de remanejamento � obrigat�rio.")]
        //public override DateTime pfi_dataFimParametroRemanejamento { get; set; }

        //[MSNotNullOrEmpty("Data de in�cio da enturma��o � obrigat�rio.")]
        //public override DateTime pfi_dataInicioEnturmacao { get; set; }

        //[MSNotNullOrEmpty("Data de fim da enturma��o � obrigat�rio.")]
        //public override DateTime pfi_dataFimEnturmacao { get; set; }

        //[MSNotNullOrEmpty("Data de in�cio do remanejamento � obrigat�rio.")]
        //public override DateTime pfi_dataInicioRemanejamento { get; set; }

        //[MSNotNullOrEmpty("Data de fim do remanejamento � obrigat�rio.")]
        //public override DateTime pfi_dataFimRemanejamento { get; set; }

        //[MSNotNullOrEmpty("Data de in�cio da renova��o � obrigat�rio.")]
        //public override DateTime pfi_dataInicioRenovacao { get; set; }

        //[MSNotNullOrEmpty("Data de fim da renova��o � obrigat�rio.")]
        //public override DateTime pfi_dataFimRenovacao { get; set; }

        [MSDefaultValue(1)]
        public override byte pfi_situacao { get; set; }
        public override DateTime pfi_dataCriacao { get; set; }
        public override DateTime pfi_dataAlteracao { get; set; }
    }
}