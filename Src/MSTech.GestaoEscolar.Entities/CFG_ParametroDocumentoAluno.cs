/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
	
	/// <summary>
    /// Tabela respons�vel por guardar os parametros para exibi��o de um relat�rio da entidade do sistema de gest�o acad�mica.
	/// </summary>
	[Serializable]
	public class CFG_ParametroDocumentoAluno : Abstract_CFG_ParametroDocumentoAluno
	{
        /// <summary>
        /// id da entidade da tabela CFG_RelatorioDocumentoAluno.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override Guid ent_id { get; set; }

        /// <summary>
        /// id do relat�rio da tabela CFG_RelatorioDocumentoAluno.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int rlt_id { get; set; }

        /// <summary>
        /// id do par�mentro.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int pda_id { get; set; }

        /// <summary>
        /// nome-chave do par�metro.
        /// </summary>
        [MSValidRange(100, "Chave pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Chave � obrigat�rio.")]
        public override string pda_chave { get; set; }

        /// <summary>
        /// valor do par�metro.
        /// </summary>
        [MSValidRange(1000, "Valor pode conter at� 1000 caracteres.")]
        [MSNotNullOrEmpty("Valor � obrigat�rio.")]
        public override string pda_valor { get; set; }

        /// <summary>
        /// descri��o do par�metro.
        /// </summary>
        [MSValidRange(200, "Descri��o pode conter at� 200 caracteres.")]
        public override string pda_descricao { get; set; }

        /// <summary>
        /// situa��o do parametr�: 1-Ativo; 3-Exclu�do;
        /// </summary>
        [MSDefaultValue(1)]
        public override byte pda_situacao { get; set; }

        /// <summary>
        /// data da cria��o do registro.
        /// </summary>
        public override DateTime pda_dataCriacao { get; set; }

        /// <summary>
        /// data da altera��o do registro.
        /// </summary>
        public override DateTime pda_dataAlteracao { get; set; }

        /// <summary>
        /// Descri��o do relat�rio de acordo com o campo rlt_id.
        /// </summary>
        public string NomeRelatorio { get; set; }
	}
}