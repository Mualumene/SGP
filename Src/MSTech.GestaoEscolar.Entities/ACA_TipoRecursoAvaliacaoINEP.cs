/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.Validation;
using MSTech.GestaoEscolar.Entities.Abstracts;

namespace MSTech.GestaoEscolar.Entities
{
    /// <summary>
    /// Description: .
    /// </summary>
    [Serializable]
    public class ACA_TipoRecursoAvaliacaoINEP : AbstractACA_TipoRecursoAvaliacaoINEP
    {
        /// <summary>
        /// Id do tipo de recurso necess�rio para a realiza��o de uma prova do Inep, esse Id � fixo, sendo utilizado no censo.
        /// </summary>
        [DataObjectField(true, false, false)]
        public override int tri_id { get; set; }

        /// <summary>
        /// Nome do tipo de recurso.
        /// </summary>
        [MSValidRange(100, "Nome do tipo de recurso pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome do tipo de recurso � obrigat�rio.")]
        public override string tri_nome { get; set; }

        /// <summary>
        /// Situa��o. 1 � Ativo; 3 � Exclu�do..
        /// </summary>
        [MSDefaultValue(1)]
        public override short tri_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime tri_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime tri_dataAlteracao { get; set; }
    }
}