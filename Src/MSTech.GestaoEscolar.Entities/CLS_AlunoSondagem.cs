/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using System;
    using System.Data;
    using Validation;
    /// <summary>
    /// Description: .
    /// </summary>
    public class CLS_AlunoSondagem : Abstract_CLS_AlunoSondagem
    {
        /// <summary>
        /// ID da tabela ACA_Sondagem.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_Sondagem � obrigat�rio.")]
        public override int snd_id { get; set; }

        /// <summary>
        /// ID da tabela ACA_SondagemAgendamento.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_SondagemAgendamento � obrigat�rio.")]
        public override int sda_id { get; set; }

        /// <summary>
        /// ID da tabela ACA_Aluno.
        /// </summary>
        [MSNotNullOrEmpty("ID da tabela ACA_Aluno � obrigat�rio.")]
        public override long alu_id { get; set; }
        
        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Excluido).
        /// </summary>
        [MSDefaultValue(1)]
        public override byte asn_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro.
        /// </summary>
        public override DateTime asn_dataCriacao { get; set; }

        /// <summary>
        /// Data de altera��o do registro.
        /// </summary>
        public override DateTime asn_dataAlteracao { get; set; }

        /// <summary>
        /// Vari�vel auxiliar para a situa��o do agendamento
        /// </summary>
        public byte sda_situacao { get; set; }

        public static DataTable TipoTabela_AlunoSondagem()
        {
            DataTable dtAlunoSondagem = new DataTable();
            dtAlunoSondagem.Columns.Add("alu_id", typeof(long));
            dtAlunoSondagem.Columns.Add("sdq_id", typeof(int));
            dtAlunoSondagem.Columns.Add("sdq_idSub", typeof(int));
            dtAlunoSondagem.Columns.Add("sdr_id", typeof(int));
            dtAlunoSondagem.Columns.Add("respAluno", typeof(bool));
            return dtAlunoSondagem;
        }
    }
}