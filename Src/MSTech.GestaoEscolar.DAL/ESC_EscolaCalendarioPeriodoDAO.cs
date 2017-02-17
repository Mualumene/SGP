/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using System.Data;
    using MSTech.Data.Common;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using System.Collections.Generic;
    using MSTech.GestaoEscolar.Entities;
    using System.Linq;
	
	/// <summary>
	/// Description: .
	/// </summary>
	public class ESC_EscolaCalendarioPeriodoDAO : AbstractESC_EscolaCalendarioPeriodoDAO
	{
        /// <summary>
        /// Retorna os per�odos da escola.
        /// </summary>
        /// <param name="esc_id"></param>
        /// <returns></returns>
        public DataTable SelectEscolaPeriodos(int esc_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ESC_EscolaCalendarioPeriodo_SelectBy_esc_id", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@esc_id";
                Param.Size = 4;
                Param.Value = esc_id;
                qs.Parameters.Add(Param);                

                #endregion Par�metros

                qs.Execute();

                DataTable dt = new DataTable();
                if (qs.Return.Rows.Count > 0)
                    dt = qs.Return;

                return dt;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna os per�odos das escolas do calend�rio.
        /// </summary>
        /// <param name="cal_id"></param>
        /// <returns></returns>
        public List<ESC_EscolaCalendarioPeriodo> SelectEscolaPeriodosCalendario(int cal_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ESC_EscolaCalendarioPeriodo_SelectBy_cal_id", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cal_id";
                Param.Size = 4;
                Param.Value = cal_id;
                qs.Parameters.Add(Param);

                #endregion Par�metros

                qs.Execute();

                return qs.Return.Rows.Count > 0 ?
                    qs.Return.Rows.Cast<DataRow>().Select(dr => DataRowToEntity(dr, new ESC_EscolaCalendarioPeriodo())).ToList() :
                    new List<ESC_EscolaCalendarioPeriodo>();
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }
	}
}