/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using Data.Common;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using Entities;
    using System.Data;
    using System;    /// <summary>
                     /// Description: .
                     /// </summary>
    public class SYS_ServicosLogExecucaoDAO : Abstract_SYS_ServicosLogExecucaoDAO
    {
        #region M�todos de consulta

        /// <summary>
        /// Seleciona os dados do fechamento de fechamento de alunos que foram
		///	alterados depois da �ltima execu��o do servi�o.
        /// </summary>
        /// <param name="ser_id">ID do servi�o</param>
        /// <param name="sle_id">ID da execu��o do servi�o</param>
        /// <returns></returns>
        public DataTable SelectDadosFechamento(byte ser_id, Guid sle_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_SYS_ServicosLogExecucao_SelectDadosFechamento", _Banco);
            qs.TimeOut = 0;

            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.ParameterName = "@ser_id";
                Param.DbType = DbType.Byte;
                Param.Size = 1;
                Param.Value = ser_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.ParameterName = "@sle_id";
                Param.DbType = DbType.Guid;
                Param.Size = 16;
                Param.Value = sle_id;
                qs.Parameters.Add(Param);

                #endregion Par�metros

                qs.Execute();

                return qs.Return;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        #endregion M�todos de consulta
    }
}