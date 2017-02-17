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
	public class ESC_Escola : Abstract_ESC_Escola
	{
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSNotNullOrEmpty("Unidade administrativa � obrigat�rio.")]
        public override Guid uad_id { get; set; }
        [MSValidRange(20, "C�digo da escola pode conter at� 20 caracteres.")]
        public override string esc_codigo { get; set; }
        [MSValidRange(200, "Nome da escola pode conter at� 200 caracteres.")]
        [MSNotNullOrEmpty("Nome da escola � obrigat�rio.")]
        public override string esc_nome { get; set; }
        [MSValidRange(20, "C�digo INEP deve conter at� 20 caracteres.")]
        public override string esc_codigoInep { get; set; }
        [MSNotNullOrEmpty("Cidade � obrigat�rio.")]
        public override Guid cid_id { get; set; }
        [MSNotNullOrEmpty("Rede de ensino � obrigat�rio.")]
        public override int tre_id { get; set; }        
        [MSDefaultValue(1)]
        public override byte esc_situacao { get; set; }        
        public override DateTime esc_dataCriacao { get; set; }        
        public override DateTime esc_dataAlteracao { get; set; }
        // Propriedade criada para facilitar consulta 
        public Guid uad_idSuperior { get; set; }
        [MSValidRange(200, "Ato de cria��o da escola deve conter at� 200 caracteres.")]
        public override string esc_atoCriacao { get; set; }
        public override DateTime esc_dataPublicacaoDiarioOficial { get; set; }
	}
}