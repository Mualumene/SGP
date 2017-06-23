/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using Validation;    /// <summary>
                         /// Description: .
                         /// </summary>
    [Serializable]
    public class CLS_RelatorioAtendimentoCargo : Abstract_CLS_RelatorioAtendimentoCargo
    {
        /// <summary>
        /// ID do relat�rio de atendimento.
        /// </summary>
        [MSNotNullOrEmpty("ID do relat�rio de atendimento � obrigat�rio.")]
        public override int rea_id { get; set; }

        /// <summary>
        /// ID do cargo.
        /// </summary>
        [MSNotNullOrEmpty("ID do cargo � obrigat�rio.")]
        public override int crg_id { get; set; }

        /// <summary>
        /// Permite consultar.
        /// </summary>
        public override bool rac_permissaoConsulta { get; set; }

        /// <summary>
        /// Permite editar.
        /// </summary>
        public override bool rac_permissaoEdicao { get; set; }

        /// <summary>
        /// Permite excluir.
        /// </summary>
        public override bool rac_permissaoExclusao { get; set; }

        /// <summary>
        /// Permite aprovar.
        /// </summary>
        public override bool rac_permissaoAprovacao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar do nome do cargo
        /// </summary>
        public string crg_descricao { get; set; }

    }
}