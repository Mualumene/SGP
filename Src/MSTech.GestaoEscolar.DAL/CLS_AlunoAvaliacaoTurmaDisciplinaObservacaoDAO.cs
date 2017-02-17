/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using System;
    using System.Data;
    using MSTech.Data.Common;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using MSTech.GestaoEscolar.Entities;
	
	/// <summary>
	/// Description: .
	/// </summary>
	public class CLS_AlunoAvaliacaoTurmaDisciplinaObservacaoDAO : Abstract_CLS_AlunoAvaliacaoTurmaDisciplinaObservacaoDAO
	{
        #region M�todos sobreescritos

        /// <summary>
        /// Par�metros para efetuar a inclus�o definindo a data de cria��o e altera��o.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaDisciplinaObservacao</param>
        protected override void ParamInserir(QuerySelectStoredProcedure qs, CLS_AlunoAvaliacaoTurmaDisciplinaObservacao entity)
        {
            base.ParamInserir(qs, entity);

            qs.Parameters["@ado_dataCriacao"].Value = DateTime.Now;
            qs.Parameters["@ado_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// Par�metros para efetuar a altera��o preservando a data de cria��o.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaDisciplinaObservacao</param>
        protected override void ParamAlterar(QueryStoredProcedure qs, CLS_AlunoAvaliacaoTurmaDisciplinaObservacao entity)
        {
            base.ParamAlterar(qs, entity);

            qs.Parameters.RemoveAt("@ado_dataCriacao");
            qs.Parameters["@ado_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// M�todo alterado para que o update n�o fa�a a altera��o da data de cria��o.
        /// </summary>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaDisciplinaObservacao</param>
        /// <returns>True = sucesso | False = fracasso</returns> 
        protected override bool Alterar(CLS_AlunoAvaliacaoTurmaDisciplinaObservacao entity)
        {
            __STP_UPDATE = "NEW_CLS_AlunoAvaliacaoTurmaDisciplinaObservacao_UPDATE";
            return base.Alterar(entity);
        }

        /// <summary>
        /// Par�metros para efetuar a exclus�o l�gica.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaDisciplinaObservacao</param>
        protected override void ParamDeletar(QueryStoredProcedure qs, CLS_AlunoAvaliacaoTurmaDisciplinaObservacao entity)
        {
            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@tud_id";
            Param.Size = 8;
            Param.Value = entity.tud_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@alu_id";
            Param.Size = 8;
            Param.Value = entity.alu_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@mtu_id";
            Param.Size = 4;
            Param.Value = entity.mtu_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@mtd_id";
            Param.Size = 4;
            Param.Value = entity.mtd_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@fav_id";
            Param.Size = 4;
            Param.Value = entity.fav_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@ava_id";
            Param.Size = 4;
            Param.Value = entity.ava_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.DateTime;
            Param.ParameterName = "@ado_dataAlteracao";
            Param.Size = 8;
            Param.Value = DateTime.Now;
            qs.Parameters.Add(Param);
        }

        /// <summary>
        /// M�todo alterado para que o delete n�o fa�a exclus�o f�sica e sim l�gica (update).
        /// </summary>
        /// <param name="entity"> Entidade CLS_AlunoAvaliacaoTurmaDisciplinaObservacao</param>
        /// <returns>True = sucesso | False = fracasso</returns>
        public override bool Delete(CLS_AlunoAvaliacaoTurmaDisciplinaObservacao entity)
        {
            __STP_DELETE = "NEW_CLS_AlunoAvaliacaoTurmaDisciplinaObservacao_UPDATE_Situacao";
            return base.Delete(entity);
        }

        #endregion

        #region M�todos

        /// <summary>
        /// Seleciona os dados de observa�ao por aluno.
        /// </summary>
        /// <param name="alu_id">Id do aluno.</param>
        /// <param name="mtu_id">Id da matr�cula do aluno na turma.</param>
        /// <param name="tur_id">Id da turma.</param>
        /// <param name="tev_idFechamento">Id do tipo de evento do fechamento do bimestre.</param>
        /// <returns>Dados do aluno.</returns>
        public DataTable SelecionarPorAluno(long alu_id, int mtu_id, long tur_id, int tev_idFechamento, bool documentoOficial)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_AlunoAvaliacaoTurmaObservacao_SelecionarPorAluno", _Banco);

            #region Par�metros
            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@alu_id";
            Param.Size = 8;
            Param.Value = alu_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@mtu_id";
            Param.Size = 4;
            Param.Value = mtu_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@tur_id";
            Param.Size = 8;
            Param.Value = tur_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@tev_idFechamento";
            Param.Size = 4;
            Param.Value = tev_idFechamento;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Boolean;
            Param.ParameterName = "@documentoOficial";
            Param.Size = 1;
            Param.Value = documentoOficial;
            qs.Parameters.Add(Param);

            #endregion

            qs.Execute();

            return qs.Return;
        }

        #endregion
    }
}