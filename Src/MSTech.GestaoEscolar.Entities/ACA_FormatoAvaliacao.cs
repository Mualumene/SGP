/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using MSTech.GestaoEscolar.Entities.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities
{
    /// <summary>
    ///
    /// </summary>
    [Serializable]
    public class ACA_FormatoAvaliacao : Abstract_ACA_FormatoAvaliacao
    {
        /// <summary>
        /// ID do Formato Avalia��o
        /// </summary>
        [DataObjectField(true, true, false)]
        public override int fav_id { get; set; }

        /// <summary>
        /// ID da Entidade
        /// </summary>
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }

        /// <summary>
        /// Indica se o formato de avalia��o � padr�o para a rede toda
        /// </summary>
        [MSDefaultValue(1)]
        public override bool fav_padrao { get; set; }

        /// <summary>
        /// Nome do Formato de Avalia��o
        /// </summary>
        [MSValidRange(100, "Nome do formato de avalia��o pode conter at� 100 caracteres.")]
        [MSNotNullOrEmpty("Nome do formato de avalia��o � obrigat�rio.")]
        public override string fav_nome { get; set; }

        /// <summary>
        /// 1 - Conceito global, 2 - Por disciplina, 3 - Conceito global e por disciplina
        /// </summary>
        [MSNotNullOrEmpty("Tipo do formato de avali��o � obrigat�rio.")]
        public override byte fav_tipo { get; set; }

        /// <summary>
        /// 1-Aulas planejadas, 2-Per�odo, 3-Mensal, 4-Aulas planejadas e mensal
        /// </summary>
        [MSNotNullOrEmpty("Tipo de lan�amento de frequ�ncia � obrigat�rio.")]
        public override byte fav_tipoLancamentoFrequencia { get; set; }

        /// <summary>
        /// Valor m�nimo para aprovar de acordo com a Escala do ConceitoGlobal
        /// </summary>
        [MSValidRange(10, "Valor m�nimo para aprova��o do conceito global pode conter at� 10 caracteres.")]
        public override string valorMinimoAprovacaoConceitoGlobal { get; set; }

        /// <summary>
        /// Valor m�nimo para aprovar de acordo com a Escala por disciplina
        /// </summary>
        [MSValidRange(10, "Valor m�nimo para aprova��o por [MSG_DISCIPLINA] pode conter at� 10 caracteres.")]
        public override string valorMinimoAprovacaoPorDisciplina { get; set; }

        /// <summary>
        /// Valor m�nimo para progress�o parcial de acordo com a Escala por disciplina
        /// </summary>
        [MSValidRange(10, "Valor m�nimo de progress�o parcial por [MSG_DISCIPLINA] pode conter at� 10 caracteres.")]
        public override string valorMinimoProgressaoParcialPorDisciplina { get; set; }

        /// <summary>
        /// Indica se a altera��o da frequ�ncia ser� bloquada ou n�o na efetiva��o
        /// </summary>
        [MSDefaultValue(1)]
        public override bool fav_bloqueiaFrequenciaEfetivacao { get; set; }

        /// <summary>
        /// Indica se a altera��o da frequ�ncia ser� bloquada ou n�o na efetiva��o da disciplina
        /// </summary>
        [MSDefaultValue(1)]
        public override bool fav_bloqueiaFrequenciaEfetivacaoDisciplina { get; set; }

        /// <summary>
        /// Indica se o planejamento e lan�amento ser� em conjunto (caso a turma seja de professor especialista).
        /// </summary>
        [MSDefaultValue(1)]
        public override bool fav_planejamentoAulasNotasConjunto { get; set; }

        /// <summary>
        /// Indica se a efetiva��o do conceito global � por docentes
        /// </summary>
        [MSDefaultValue(0)]
        public override bool fav_conceitoGlobalDocente { get; set; }

        /// <summary>
        /// indica a obrigatoriedade do relatorio para reprova��o
        /// </summary>
        [MSDefaultValue(0)]
        public override bool fav_obrigatorioRelatorioReprovacao { get; set; }

        /// <summary>
        /// 1 - Ativo, 2 - Bloquedo, 3 - Exclu�do
        /// </summary>
        [MSDefaultValue(1)]
        public override byte fav_situacao { get; set; }

        /// <summary>
        /// Data da cria��o do registro
        /// </summary>
        public override DateTime fav_dataCriacao { get; set; }

        /// <summary>
        /// Data da altera��o do registro
        /// </summary>
        public override DateTime fav_dataAlteracao { get; set; }

        /// <summary>
        /// 1-Tempos de aula, 2-Dia
        /// </summary>
        [MSNotNullOrEmpty("Tipo de apura��o de frequ�ncia � obrigat�rio.")]
        public override byte fav_tipoApuracaoFrequencia { get; set; }

        /// <summary>
        /// 1-Autom�tico, 2-Manual
        /// </summary>
        [MSNotNullOrEmpty("C�lculo de quantidade de aulas dadas � obrigat�rio")]
        public override byte fav_calculoQtdeAulasDadas { get; set; }

        /// <summary>
        /// Indica se a escola pode inserir uma nota/conceito final ao final do 4� bimestre
        /// </summary>
        [MSDefaultValue(0)]
        public override bool fav_avaliacaoFinalAnalitica { get; set; }

        /// <summary>
        /// Varia��o de valor da porcentagem de frequ�ncia
        /// </summary>
        [MSDefaultValue(0)]
        [MSNotNullOrEmpty("Varia��o � obrigat�rio")]
        public override decimal fav_variacao { get; set; }

        /// <summary>
        /// Indica se o parecer final vir� preenchido automaticamente na tela do fechamento final
        /// </summary>
        [MSDefaultValue(0)]
        public override bool fav_sugerirResultadoFinalDisciplina { get; set; }

        /// <summary>
        /// Indica se o bot�o de soma/m�dia ir� aparecer
        /// </summary>
        [MSDefaultValue(0)]
        public override bool fav_exibirBotaoSomaMedia { get; set; }

        /// <summary>
        /// Valor m�nimo para aprovar de acordo com a Escala por docente
        /// </summary>
        [MSValidRange(10, "Valor m�nimo para aprova��o por docente pode conter at� 10 caracteres.")]
        public override string valorMinimoAprovacaoDocente { get; set; }

        /// <summary>
        /// Define se o formato utilizar� o modelo de fechamento autom�tico.
        /// </summary>
        [MSDefaultValue(false)]
        public override bool fav_fechamentoAutomatico { get; set; }

        /// <summary>
        /// Permite que o professor possa lan�ar nota de recupera��o independente da nota que obtiver na avalia��o.
        /// </summary>
        [MSDefaultValue(false)]
        public override bool fav_permiteRecuperacaoQualquerNota { get; set; }

        /// <summary>
        /// Permite que a data da recupera��o possa ser fora do per�odo do calend�rio.
        /// </summary>
        [MSDefaultValue(false)]
        public override bool fav_permiteRecuperacaoForaPeriodo { get; set; }
    }
}