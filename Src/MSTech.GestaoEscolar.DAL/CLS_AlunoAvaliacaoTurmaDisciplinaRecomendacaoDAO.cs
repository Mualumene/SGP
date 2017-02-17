/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using MSTech.Data.Common;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using System.Linq;
	
	/// <summary>
	/// Description: .
	/// </summary>
	public class CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacaoDAO : Abstract_CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacaoDAO
	{
        #region Consultas

        /// <summary>
        /// Seleciona as recomenda��es por disciplina, matr�cula do aluno e tipo de recomenda��o.
        /// </summary>
        /// <param name="tud_id">ID da turma disciplina.</param>
        /// <param name="alu_id">ID do aluno.</param>
        /// <param name="mtu_id">ID da matr�cula turma do aluno.</param>
        /// <param name="mtd_id">ID da matr�cula turma disciplina no aluno.</param>
        /// <param name="fav_id">ID do formato de avalia��o.</param>
        /// <param name="ava_id">ID da avalia��o.</param>
        /// <param name="rar_tipo">Tipo de recomenda��o.</param>
        /// <returns></returns>
        public DataTable SelecionaPorMatriculaTurmaDisciplinaTipo(long tud_id, long alu_id, int mtu_id, int mtd_id, int fav_id, int ava_id, byte rar_tipo)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacao_SelecionaPorMatriculaTurmaDisciplinaTipo", _Banco);

            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int64;
                Param.ParameterName = "@tud_id";
                Param.Size = 8;
                Param.Value = tud_id;
                qs.Parameters.Add(Param);

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
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@mtd_id";
                Param.Size = 4;
                Param.Value = mtd_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@fav_id";
                Param.Size = 4;
                Param.Value = fav_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@ava_id";
                Param.Size = 4;
                Param.Value = ava_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Byte;
                Param.ParameterName = "@rar_tipo";
                Param.Size = 1;
                if (rar_tipo > 0)
                    Param.Value = rar_tipo;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                #endregion

                qs.Execute();

                return qs.Return;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna as qualidades que o aluno atingiu
        /// </summary>
        /// <param name="alu_id">ID do aluno</param>
        /// <param name="mtu_id">Id da matr�cula do aluno.</param>
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo</param>
        /// <param name="crp_id">ID do per�odo</param>
        /// <param name="ava_id">ID da avalia��o</param>
        /// <param name="rar_tipo">Tipo da recomenda��o</param>
        public DataTable SelectBy_AluId_CurId_CrrId_CrpId
        (
            long alu_id,
            int mtu_id,
            int cur_id,
            int crr_id,
            int crp_id,
            int ava_id,
            Int16 rar_tipo,
            bool mostraPorDisciplina
        )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_AlunoAvaliacaoTurmaDisciplinaRecomendacao_SelectBy_AluId_CurId_CrrId_CrpId_Tipo", _Banco);

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
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@cur_id";
            Param.Size = 4;
            Param.Value = cur_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@crr_id";
            Param.Size = 4;
            Param.Value = crr_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@crp_id";
            Param.Size = 4;
            Param.Value = crp_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@ava_id";
            Param.Size = 4;
            Param.Value = ava_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Int16;
            Param.ParameterName = "@rar_tipo";
            Param.Size = 4;
            Param.Value = rar_tipo;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Boolean;
            Param.ParameterName = "@mostraDisciplina";
            Param.Size = 4;
            Param.Value = mostraPorDisciplina;
            qs.Parameters.Add(Param);

            #endregion

            qs.Execute();

            return qs.Return;
        }

        #endregion
    }
}