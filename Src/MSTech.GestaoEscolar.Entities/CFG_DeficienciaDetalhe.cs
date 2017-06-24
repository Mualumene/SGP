/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;

    [Serializable]
    public class CFG_DeficienciaDetalhe : Abstract_CFG_DeficienciaDetalhe
	{
        /// <summary>
        /// ID da deficiencia no Core - Pes_TipoDeficiencia.
        /// </summary>
        [MSNotNullOrEmpty("[tde_id] � obrigat�rio.")]
        public override Guid tde_id { get; set; }

        /// <summary>
        /// ID do detalhe, gerado automaticamente.
        /// </summary>
        public override int dfd_id { get; set; }

        /// <summary>
        /// Nome do detalhamento da defici�ncia.
        /// </summary>
        [MSValidRange(100)]
        [MSNotNullOrEmpty("Nome do detalhe � obrigat�rio.")]
        public override string dfd_nome { get; set; }

        /// <summary>
        /// Situa��o do detalhe - padr�o � sem 1.
        /// </summary>
        [MSDefaultValue(1)]
        public override byte dfd_situacao { get; set; }

        /// <summary>
        /// Data de cria��o .
        /// </summary>
        public override DateTime dfd_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o.
        /// </summary>
        public override DateTime dfd_dataAlteracao { get; set; }


        public bool PermiteExcluir { get; set; }
    }
}