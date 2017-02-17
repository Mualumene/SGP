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
	/// 
	/// </summary>
    [Serializable]
    public class CFG_ConfiguracaoInscricaoCreche : Abstract_CFG_ConfiguracaoInscricaoCreche, ICFG_Configuracao
	{
        [DataObjectField(true, false, false)]
        public override Guid cfg_id { get; set; }

        [MSValidRange(100, "Chave pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Chave � obrigat�rio.")]
        public override string cfg_chave { get; set; }

        [MSValidRange(300, "Valor pode conter at� 300 caracteres.")]
        [MSNotNullOrEmpty("Valor � obrigat�rio.")]
        public override string cfg_valor { get; set; }

        [MSValidRange(200, "Descri��o pode conter at� 200 caracteres.")]
        public override string cfg_descricao { get; set; }

        [MSDefaultValue(1)]
        public override byte cfg_situacao { get; set; }

        public override DateTime cfg_dataCriacao { get; set; }
        public override DateTime cfg_dataAlteracao { get; set; }
	}
}