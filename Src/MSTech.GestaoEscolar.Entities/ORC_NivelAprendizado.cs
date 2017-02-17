/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using System;
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;
		
	/// <summary>
	/// Description: .
	/// </summary>
	[Serializable]
	public class ORC_NivelAprendizado : AbstractORC_NivelAprendizado
	{
        [MSValidRange(200)]
        [MSNotNullOrEmpty("Descri��o do n�vel de aprendizado � obrigat�rio.")]
        public override string nap_descricao { get; set; }
        [MSValidRange(10)]
        [MSNotNullOrEmpty("Sigla do n�vel de aprendizado � obrigat�rio.")]
        public override string nap_sigla { get; set; }
        public override DateTime nap_dataCriacao { get; set; }
        public override DateTime nap_dataAlteracao { get; set; }
	}
}