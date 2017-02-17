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
	public class CLS_TurmaNota : Abstract_CLS_TurmaNota
	{
        [DataObjectField(true, false, false)]
        public override int tnt_id { get; set; }        
        public override string tnt_nome { get; set; }

        [MSDefaultValue(1)]
        public override byte tnt_situacao { get; set; }
        public override DateTime tnt_dataCriacao { get; set; }
        public override DateTime tnt_dataAlteracao { get; set; }

        [MSNotNullOrEmpty("Posi��o do docente � obrigat�rio.")]
        public override byte tdt_posicao { get; set; }

        [MSDefaultValue(0)]
        public override bool tnt_exclusiva { get; set; }

        //Vari�vel n�o presente na tabela CLS_TurmaNota
        //Utilizada no cadastro de atividade da disciplina da turma
        public virtual long tur_id { get; set; }

        public long idAula { get; set; }
        public long idAtividade { get; set; }

        /// <summary>
        /// Vari�vel auxiliar para a importa��o de aulas, ultima data do log de altera��o da atividade.
        /// </summary>
        public DateTime dataLogAlteracaoAtividade { get; set; }

        /// <summary>
        /// Vari�vel auxiliar para a importa��o de aulas, ultima data do log de lan�amento de nota.
        /// </summary>
        public DateTime dataLogLancamentoNota { get; set; }

        public static DataTable TipoTabela_TurmaNota()
        {
            DataTable dtTurmaNota = new DataTable();
            dtTurmaNota.Columns.Add("idAula", typeof(Int64));
            DataColumn dcId = dtTurmaNota.Columns.Add("idAtividade", typeof(Int64));
            dcId.AutoIncrement = true;
            dcId.AutoIncrementSeed = 1;
            dcId.AutoIncrementStep = 1;
            dtTurmaNota.Columns.Add("tud_id", typeof(Int64));
            dtTurmaNota.Columns.Add("tnt_id", typeof(Int32));
            dtTurmaNota.Columns.Add("tpc_id", typeof(Int32));
            dtTurmaNota.Columns.Add("tau_id", typeof(Int32));
            dtTurmaNota.Columns.Add("tnt_nome", typeof(String));
            dtTurmaNota.Columns.Add("tnt_data", typeof(DateTime));
            dtTurmaNota.Columns.Add("tnt_descricao", typeof(String));
            dtTurmaNota.Columns.Add("tnt_situacao", typeof(Byte));
            dtTurmaNota.Columns.Add("tnt_efetivado", typeof(Boolean));
            dtTurmaNota.Columns.Add("tav_id", typeof(Int32));
            dtTurmaNota.Columns.Add("tdt_posicao", typeof(Byte));
            dtTurmaNota.Columns.Add("tnt_exclusiva", typeof(Boolean));
            dtTurmaNota.Columns.Add("usu_id", typeof(Guid));
            dtTurmaNota.Columns.Add("pro_id", typeof(Guid));
            dtTurmaNota.Columns.Add("tnt_chaveDiario", typeof(Int32));
            dtTurmaNota.Columns.Add("tnt_dataAlteracao", typeof(DateTime));
            dtTurmaNota.Columns.Add("usu_idDocenteAlteracao", typeof(Guid));
            return dtTurmaNota;
        }
	}
}