/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.Entities.Abstracts;
using System.ComponentModel;
using MSTech.Validation;
using System.Data;

namespace MSTech.GestaoEscolar.Entities
{  
	/// <summary>
	/// 
	/// </summary>
	[Serializable]
    public class ACA_Aluno : Abstract_ACA_Aluno
	{
        [DataObjectField(true, true, false)]
        public override Int64 alu_id { get; set; }
        [MSNotNullOrEmpty("Pessoa � obrigat�rio.")]
        public override Guid pes_id { get; set; }
        [MSNotNullOrEmpty("Entidade � obrigat�rio.")]
        public override Guid ent_id { get; set; }
        [MSValidRange(100, "Respons�vel pela presta��o da informa��o do aluno pode conter at� 100 caracteres.")]
        public override string alu_responsavelInfo { get; set; }
        [MSValidRange(20, "Documento do respons�vel pela presta��o da informa��o do aluno  pode conter at� 20 caracteres.")]
        public override string alu_responsavelInfoDoc { get; set; }
        [MSValidRange(20, "�rg�o emissor do documento do respons�vel pela presta��o da informa��o do aluno  pode conter at� 20 caracteres.")]
        public override string alu_responsavelInfoOrgaoEmissao { get; set; }
        [MSDefaultValue(1)]
        public override byte alu_situacao { get; set; }
        [MSDefaultValue(false)]
        [MSNotNullOrEmpty("Se o aluno possui irm�o g�meo � obrigat�rio.")]
        public override bool alu_gemeo { get; set; }
        public override DateTime alu_dataCriacao { get; set; }
        public override DateTime alu_dataAlteracao { get; set; }
        [MSDefaultValue(1)]
        public override bool alu_possuiEmail { get; set; }
        [MSValidRange(20, "Protocolo para aluno excedente pode conter at� 20 caracteres.")]
        public override string alu_protocoloExcedente { get; set; }
        [MSDefaultValue(false)]
        public override bool alu_possuiInformacaoSigilosa { get; set; }
        [MSDefaultValue(false)]
        public override bool alu_bloqueioBoletimOnline { get; set; }

        /// <summary>
        /// Retorna o DataTable no formato do TipoTabela_Aluno.
        /// </summary>
        /// <returns>DataTable no formato do TipoTabela_Aluno.</returns>
        public static DataTable TipoTabela_Aluno()
        {
            DataTable dtAluno = new DataTable();
            dtAluno.Columns.Add("alu_id", typeof(Int64));

            return dtAluno;
        }
	}
}