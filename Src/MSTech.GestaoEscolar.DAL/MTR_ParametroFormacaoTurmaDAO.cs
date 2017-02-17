/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Data;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.DAL.Abstracts;
using MSTech.GestaoEscolar.Entities;

namespace MSTech.GestaoEscolar.DAL
{
    /// <summary>
    /// Classe MTR_ParametroFormacaoTurmaDAO
	/// </summary>
	public class MTR_ParametroFormacaoTurmaDAO : Abstract_MTR_ParametroFormacaoTurmaDAO
	{
        #region M�todos

        /// <summary>
        /// Retorna a entidade cadastrada no processo, para o curso e per�odo informados.
        /// </summary>
        /// <param name="pfi_id">ID do processo</param>
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>
        /// <param name="crp_id">ID do per�odo do curso</param>
        /// <returns></returns>
        public MTR_ParametroFormacaoTurma LoadBy_Processo_CursoPeriodo(int pfi_id, int cur_id, int crr_id, int crp_id)
        {
            MTR_ParametroFormacaoTurma entity = new MTR_ParametroFormacaoTurma();
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_Processo_CursoPeriodo", _Banco);

            #region Par�metros

            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@pfi_id";
            Param.Size = 4;
            Param.Value = pfi_id;
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

            #endregion

            qs.Execute();

            if (qs.Return.Rows.Count > 0)
            {
                entity = DataRowToEntity(qs.Return.Rows[0], entity);
            }

            return entity;
        }
        
        /// <summary>
        /// Seleciona todos os cursos e grupamentos de ensino de
        /// acordo com os registro da tabela MTR_ParametroFormacaoTurma.
        /// </summary> 
        /// <param name="pfi_id">Id do processo de fechamento/in�cio</param>
        /// <param name="cur_id">Id do curso</param>    
        /// <returns>DataTable com os par�metros de enturma��o</returns>
        public DataTable SelectBy_ProcessoCurso(int pfi_id, int cur_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_Processo", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@pfi_id";
                Param.Size = 4;
                Param.Value = pfi_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cur_id";
                Param.Size = 4;
                if (cur_id > 0)
                    Param.Value = cur_id;
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
        /// Retorna os cursos, per�odo e turnos dispon�veis para a forma��o de turmas.        
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public DataTable SelectBy_FormacaoTurmas(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_FormacaoTurmas", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@pfi_id";
                Param.Size = 4;
                Param.Value = pfi_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@esc_id";
                Param.Size = 4;
                Param.Value = esc_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@uni_id";
                Param.Size = 4;
                Param.Value = uni_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Boolean;
                Param.ParameterName = "@adm";
                Param.Size = 1;
                Param.Value = adm;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@usu_id";
                Param.Size = 16;
                Param.Value = usu_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@gru_id";
                Param.Size = 16;
                Param.Value = gru_id;
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
        /// Retorna os cursos, disciplinas e turnos dispon�veis para a forma��o de turmas eletiva.       
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public DataTable SelectBy_FormacaoTurmasEletiva(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_FormacaoTurmasEletiva", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@pfi_id";
                Param.Size = 4;
                Param.Value = pfi_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@esc_id";
                Param.Size = 4;
                Param.Value = esc_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@uni_id";
                Param.Size = 4;
                Param.Value = uni_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Boolean;
                Param.ParameterName = "@adm";
                Param.Size = 1;
                Param.Value = adm;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@usu_id";
                Param.Size = 16;
                Param.Value = usu_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@gru_id";
                Param.Size = 16;
                Param.Value = gru_id;
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
        /// Retorna os cursos, per�odo e turnos dispon�veis para o fechamento de matr�cula.        
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public DataTable SelectBy_FechamentoMatricula(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_FechamentoMatricula", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@pfi_id";
                Param.Size = 4;
                Param.Value = pfi_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@esc_id";
                Param.Size = 4;
                Param.Value = esc_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@uni_id";
                Param.Size = 4;
                Param.Value = uni_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Boolean;
                Param.ParameterName = "@adm";
                Param.Size = 1;
                Param.Value = adm;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@usu_id";
                Param.Size = 16;
                Param.Value = usu_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@gru_id";
                Param.Size = 16;
                Param.Value = gru_id;
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
        /// Verifica se existe par�metros para o ano atual e curso informado.        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                
        /// <param name="crp_id">ID do per�odo do curr�culo</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        public DataTable SelectBy_AnoCursoPeriodo(int cur_id, int crr_id, int crp_id, Guid ent_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_AnoCursoPeriodo", _Banco);
            try
            {
                #region Par�metros

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
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
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
        /// Verifica se existe par�metros para forma��o de turmas eletiva para o ano atual e curso informado.        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                       
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        public DataTable SelectBy_AnoCurso(int cur_id, int crr_id, Guid ent_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_MTR_ParametroFormacaoTurma_SelectBy_AnoCurso", _Banco);
            try
            {
                #region Par�metros

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
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
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
        #endregion
	}
}