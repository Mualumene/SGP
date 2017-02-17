/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
	using MSTech.GestaoEscolar.Entities.Abstracts;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class ESC_UnidadeEscolaEquipamentos : AbstractESC_UnidadeEscolaEquipamentos
    {
        /// <summary>
        /// Id da tabela ESC_UnidadeEscolaEquipamentos.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int ueq_id { get; set; }

        /// <summary>
        /// Aparelho de Televis�o.
        /// </summary>
        [MSNotNullOrEmpty("Aparelho de Televis�o � obrigat�rio.")]
        public override bool ueq_aparelhoTelevisao { get; set; }

        /// <summary>
        /// Videocassete.
        /// </summary>
        [MSNotNullOrEmpty("Videocassete � obrigat�rio.")]
        public override bool ueq_videocassete { get; set; }

        /// <summary>
        /// DVD.
        /// </summary>
        [MSNotNullOrEmpty("DVD � obrigat�rio.")]
        public override bool ueq_dvd { get; set; }

        /// <summary>
        /// Antena parab�lica.
        /// </summary>
        [MSNotNullOrEmpty("Antena parab�lica � obrigat�rio.")]
        public override bool ueq_antenaParabolica { get; set; }

        /// <summary>
        /// Copiadora.
        /// </summary>
        [MSNotNullOrEmpty("Copiadora � obrigat�rio.")]
        public override bool ueq_copiadora { get; set; }

        /// <summary>
        /// Retroprojetor.
        /// </summary>
        [MSNotNullOrEmpty("Retroprojetor � obrigat�rio.")]
        public override bool ueq_retroprojetor { get; set; }

        /// <summary>
        /// Impressora.
        /// </summary>
        [MSNotNullOrEmpty("Impressora � obrigat�rio.")]
        public override bool ueq_impressora { get; set; }

        /// <summary>
        /// Aparelho de som.
        /// </summary>
        [MSNotNullOrEmpty("Aparelho de som � obrigat�rio.")]
        public override bool ueq_aparelhoSom { get; set; }

        /// <summary>
        /// Projetor Multim�dia (Data show).
        /// </summary>
        [MSNotNullOrEmpty("Projetor Multim�dia (Data show) � obrigat�rio.")]
        public override bool ueq_projetorMultimidia { get; set; }

        /// <summary>
        /// Fax.
        /// </summary>
        [MSNotNullOrEmpty("Fax � obrigat�rio.")]
        public override bool ueq_fax { get; set; }

        /// <summary>
        /// M�quina Fotogr�fica/Filmadora.
        /// </summary>
        [MSNotNullOrEmpty("M�quina Fotogr�fica/Filmadora � obrigat�rio.")]
        public override bool ueq_maquinaFotografica { get; set; }

        /// <summary>
        /// Computadores.
        /// </summary>
        [MSNotNullOrEmpty("Computadores � obrigat�rio.")]
        public override bool ueq_computadores { get; set; }

        /// <summary>
        /// Situa��o do registro: 1 - Ativo, 3 - Exclu�do.
        /// </summary>
        [MSDefaultValue(1)]
        public override short ueq_situacao { get; set; }

        /// <summary>
        /// Data de Cria��o de registro.
        /// </summary>
        public override DateTime ueq_dataCriacao { get; set; }

        /// <summary>
        /// Data de Altera��o do registro.
        /// </summary>
        public override DateTime ueq_dataAlteracao { get; set; }
	}
}