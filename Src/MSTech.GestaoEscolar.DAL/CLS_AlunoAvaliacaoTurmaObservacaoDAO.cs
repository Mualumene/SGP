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
	public class CLS_AlunoAvaliacaoTurmaObservacaoDAO : Abstract_CLS_AlunoAvaliacaoTurmaObservacaoDAO
	{
        #region M�todos sobreescritos

        /// <summary>
        /// Par�metros para efetuar a inclus�o definindo a data de cria��o e altera��o.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaObservacao</param>
        protected override void ParamInserir(QuerySelectStoredProcedure qs, CLS_AlunoAvaliacaoTurmaObservacao entity)
        {
            base.ParamInserir(qs, entity);

            qs.Parameters["@ato_dataCriacao"].Value = DateTime.Now;
            qs.Parameters["@ato_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// Par�metros para efetuar a altera��o preservando a data de cria��o.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaObservacao</param>
        protected override void ParamAlterar(QueryStoredProcedure qs, CLS_AlunoAvaliacaoTurmaObservacao entity)
        {
            base.ParamAlterar(qs, entity);

            qs.Parameters.RemoveAt("@ato_dataCriacao");
            qs.Parameters["@ato_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// M�todo alterado para que o update n�o fa�a a altera��o da data de cria��o.
        /// </summary>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaObservacao</param>
        /// <returns>True = sucesso | False = fracasso</returns> 
        protected override bool Alterar(CLS_AlunoAvaliacaoTurmaObservacao entity)
        {
            __STP_UPDATE = "NEW_CLS_AlunoAvaliacaoTurmaObservacao_UPDATE";
            return base.Alterar(entity);
        }

        /// <summary>
        /// Par�metros para efetuar a exclus�o l�gica.
        /// </summary>
        /// <param name="qs">Query Stored Procedure</param>
        /// <param name="entity">Entidade CLS_AlunoAvaliacaoTurmaObservacao</param>
        protected override void ParamDeletar(QueryStoredProcedure qs, CLS_AlunoAvaliacaoTurmaObservacao entity)
        {
            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@tur_id";
            Param.Size = 8;
            Param.Value = entity.tur_id;
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
            Param.ParameterName = "@ato_dataAlteracao";
            Param.Size = 8;
            Param.Value = DateTime.Now;
            qs.Parameters.Add(Param);
        }

        /// <summary>
        /// M�todo alterado para que o delete n�o fa�a exclus�o f�sica e sim l�gica (update).
        /// </summary>
        /// <param name="entity"> Entidade CLS_AlunoAvaliacaoTurmaObservacao</param>
        /// <returns>True = sucesso | False = fracasso</returns>
        public override bool Delete(CLS_AlunoAvaliacaoTurmaObservacao entity)
        {
            __STP_DELETE = "NEW_CLS_AlunoAvaliacaoTurmaObservacao_UPDATE_Situacao";
            return base.Delete(entity);
        }

        #endregion
	}
}