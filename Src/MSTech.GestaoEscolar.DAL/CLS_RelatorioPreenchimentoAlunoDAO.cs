/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using Data.Common;
    using Entities;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using System;
    using System.Data;

    /// <summary>
    /// Description: .
    /// </summary>
    public class CLS_RelatorioPreenchimentoAlunoDAO : Abstract_CLS_RelatorioPreenchimentoAlunoDAO
	{
        #region M�todos Sobrescritos

        /// <summary>
        /// Par�metros para efetuar a inclus�o preservando a data de cria��o
        /// </summary>
        /// <param name="qs"></param>
        /// <param name="entity"></param>
        protected override void ParamInserir(QuerySelectStoredProcedure qs, CLS_RelatorioPreenchimentoAluno entity)
        {
            base.ParamInserir(qs, entity);

            qs.Parameters["@pal_dataCriacao"].Value = DateTime.Now;
            qs.Parameters["@pal_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// Par�metros para efetuar a altera��o preservando a data de cria��o
        /// </summary>
        protected override void ParamAlterar(QueryStoredProcedure qs, CLS_RelatorioPreenchimentoAluno entity)
        {
            base.ParamAlterar(qs, entity);

            qs.Parameters.RemoveAt("@pal_dataCriacao");
            qs.Parameters["@pal_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>s
        /// M�todo alterado para que o update n�o fa�a a altera��o da data de cria��o
        /// </summary>
        /// <param name="entity"> Entidade CLS_RelatorioPreenchimentoAluno</param>
        /// <returns>true = sucesso | false = fracasso</returns>
        protected override bool Alterar(CLS_RelatorioPreenchimentoAluno entity)
        {
            __STP_UPDATE = "NEW_CLS_RelatorioPreenchimentoAluno_Update";
            return base.Alterar(entity);
        }

        /// <summary>
        /// Par�metros para efetuar a exclus�o l�gica.
        /// </summary>
        protected override void ParamDeletar(QueryStoredProcedure qs, CLS_RelatorioPreenchimentoAluno entity)
        {
            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@reap_id";
            Param.Size = 8;
            Param.Value = entity.reap_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int64;
            Param.ParameterName = "@alu_id";
            Param.Size = 8;
            Param.Value = entity.alu_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@pal_situacao";
            Param.Size = 1;
            Param.Value = 3;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.DateTime;
            Param.ParameterName = "@pal_dataAlteracao";
            Param.Size = 8;
            Param.Value = DateTime.Now;
            qs.Parameters.Add(Param);
        }

        /// <summary>
        /// M�todo alterado para que o delete n�o fa�a exclus�o f�sica e sim l�gica (update).
        /// </summary>
        /// <param name="entity"> Entidade CLS_RelatorioPreenchimentoAluno</param>
        /// <returns>true = sucesso | false = fracasso</returns>         
        public override bool Delete(CLS_RelatorioPreenchimentoAluno entity)
        {
            __STP_DELETE = "NEW_CLS_RelatorioPreenchimentoAluno_UpdateSituacao";
            return base.Delete(entity);
        }

        #endregion M�todos Sobrescritos
    }
}