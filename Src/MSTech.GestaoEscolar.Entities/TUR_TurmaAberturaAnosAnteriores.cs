/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;

    /// <summary>
    /// Description: .
    /// </summary>
    public class TUR_TurmaAberturaAnosAnteriores : Abstract_TUR_TurmaAberturaAnosAnteriores
	{
        /// <summary>
		/// Id da tabela.
		/// </summary>
        [DataObjectField(true, true, false)]
        public virtual long tab_id { get; set; }

        /// <summary>
        /// Ano.
        /// </summary>        
        [MSNotNullOrEmpty("Ano � obrigat�rio.")]
        public virtual int tab_ano { get; set; }

        /// <summary>
        /// Id da unidade superior (DRE).
        /// </summary>
        public virtual Guid uad_idSuperior { get; set; }

        /// <summary>
        /// Id da escola.
        /// </summary>
        public virtual int esc_id { get; set; }

        /// <summary>
        /// Id da unidade.
        /// </summary>
        public virtual int uni_id { get; set; }

        /// <summary>
        /// Data de in�cio.
        /// </summary>
        [MSNotNullOrEmpty("Data inicial � obrigat�rio.")]
        public virtual DateTime tab_dataInicio { get; set; }

        /// <summary>
        /// Data de fim.
        /// </summary>
        public virtual DateTime tab_dataFim { get; set; }

        /// <summary>
        /// Status (1 - Aguardando execu��o, 2 - Aberto,  3 - Encerrado).
        /// </summary>
        [MSNotNullOrEmpty]
        public virtual short tab_status { get; set; }

        /// <summary>
        /// Situa��o.
        /// </summary>
        [MSDefaultValue(1)]
        public virtual short tab_situacao { get; set; }

        /// <summary>
        /// Data de cria��o.
        /// </summary>
        public virtual DateTime tab_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o.
        /// </summary>
        public virtual DateTime tab_dataAlteracao { get; set; }
    }
}