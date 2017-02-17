/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.Validation;
using MSTech.GestaoEscolar.Entities.Abstracts;

namespace MSTech.GestaoEscolar.Entities
{	
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
	public class RHU_CargaHoraria : Abstract_RHU_CargaHoraria
	{   
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSValidRange(200,"Descri��o da carga hor�ria pode conter at� 200 caracteres.")]
        public override string chr_descricao { get; set; }
        [MSNotNullOrEmpty("Padr�o � obrigat�rio.")]
        public override bool chr_padrao { get; set; }
        [MSNotNullOrEmpty("Horas semanais � obrigat�rio e deve ser um n�mero inteiro maior que 0 (zero).")]
        public override int chr_cargaHorariaSemanal { get; set; }
        [MSDefaultValue(1)]
        public override byte chr_situacao { get; set; }
        public override DateTime chr_dataCriacao { get; set; }
        public override DateTime chr_dataAlteracao { get; set; }
	}
}