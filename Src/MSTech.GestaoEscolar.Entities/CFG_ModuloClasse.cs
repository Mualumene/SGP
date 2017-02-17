/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
    using System;
    using System.ComponentModel;
		
	/// <summary>
	/// Description: .
	/// </summary>
	public class CFG_ModuloClasse : Abstract_CFG_ModuloClasse
	{

        /// <summary>
        /// Campo ID da tabela SYS_Modulo do Core..
        /// </summary>
        [MSNotNullOrEmpty("ID do m�dulo � obrigat�rio.")]
        public override int mod_id { get; set; }

        /// <summary>
        /// Campo ID da tabela CFG_ModuloClasse..
        /// </summary>
        public override int mdc_id { get; set; }

        /// <summary>
        /// Classe css que ir� informar a imagem do �cone..
        /// </summary>
        [MSValidRange(50, "Classe css deve possui no m�ximo 50 caracteres.")]
        [MSNotNullOrEmpty("Classe css � obrigat�ria.")]
        public override string mdc_classe { get; set; }

        /// <summary>
        /// 1-Ativo, 3-Exclu�do.
        /// </summary>
        [MSDefaultValue(1)]
        public override short mdc_situacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime mdc_dataAlteracao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime mdc_dataCriacao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar de nome do m�dulo
        /// </summary>
        public string mod_nome { get; set; }
	}
}