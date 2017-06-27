/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using System.ComponentModel;
    using Validation;

    /// <summary>
    /// Description: .
    /// </summary>
    [Serializable]
	public class CLS_RelatorioAtendimento : Abstract_CLS_RelatorioAtendimento
	{

        /// <summary>
        /// ID do relat�rio de atendimento.
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int rea_id { get; set; }

        /// <summary>
        /// T�tulo do relat�rio de atendimento.
        /// </summary>
        [MSValidRange(200, "T�tulo pode conter at� 200 caracteres.")]
        [MSNotNullOrEmpty("T�tulo � obrigat�rio.")]
        public override string rea_titulo { get; set; }

        /// <summary>
        /// Tipo do relat�rio de atendimento (1 - AEE, 2 - NAAPA, 3 - Recupera��o Paralela).
        /// </summary>
        [MSNotNullOrEmpty("Tipo � obrigat�rio.")]
        public override byte rea_tipo { get; set; }

        /// <summary>
        /// Permite editar campo de Ra�a/Cor.
        /// </summary>
        [MSNotNullOrEmpty("Permite editar campo de Ra�a/Cor � obrigat�rio.")]
        public override bool rea_permiteEditarRecaCor { get; set; }

        /// <summary>
        /// Permite editar campo de Hip�tese Diagn�stica.
        /// </summary>
        [MSNotNullOrEmpty("Permite editar campo de Hip�tese Diagn�stica � obrigat�rio.")]
        public override bool rea_permiteEditarHipoteseDiagnostica { get; set; }

        /// <summary>
        /// Permite editar campo de Acoes Realizadas.
        /// </summary>
        [MSNotNullOrEmpty("Permite A��es realizadas � obrigat�rio.")]
        public override bool rea_permiteAcoesRealizadas { get; set; }

        /// <summary>
        /// ID do tipo de disciplina do relat�rio de atendimento.
        /// </summary>
        public override int tds_id { get; set; }

        /// <summary>
        /// Periodicidade de preenchimento do relat�rio de atendimento (1 - Peri�dico, 2 - Encerramento).
        /// </summary>
        public override byte rea_periodicidadePreenchimento { get; set; }
        
        /// <summary>
        /// T�tulo do arquivo anexado no relat�rio de atendimento.
        /// </summary>
        [MSValidRange(256, "T�tulo do anexo pode conter at� 256 caracteres.")]
        public override string rea_tituloAnexo { get; set; }

        /// <summary>
        /// Situa��o do registro (1 - Ativo, 3 - Excluido).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte rea_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime rea_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime rea_dataAlteracao { get; set; }
    }
}