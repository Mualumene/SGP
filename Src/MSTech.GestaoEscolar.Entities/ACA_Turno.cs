/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
    /// <summary>
    /// 
    /// </summary>
    [Serializable]
    public class ACA_Turno : Abstract_ACA_Turno
    {
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSNotNullOrEmpty("Tipo de turno � obrigat�rio.")]
        public override int ttn_id { get; set; }
        [MSNotNullOrEmpty("Descri��o do turno � obrigat�rio.")]
        public override string trn_descricao { get; set; }
        [MSDefaultValue(1)]
        public override byte trn_controleTempo { get; set; }
        [MSNotNullOrEmpty("Hora inicial � obrigat�rio.")]
        public override TimeSpan trn_horaInicio { get; set; }
        [MSNotNullOrEmpty("Hora final � obrigat�rio.")]
        public override TimeSpan trn_horaFim { get; set; }
        [MSDefaultValue(1)]
        public override byte trn_situacao { get; set; }
        public override DateTime trn_dataCriacao { get; set; }
        public override DateTime trn_dataAlteracao { get; set; }
    }
}