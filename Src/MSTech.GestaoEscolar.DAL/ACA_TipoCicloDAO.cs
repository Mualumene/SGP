/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL.Abstracts;

namespace MSTech.GestaoEscolar.DAL
{

    /// <summary>
    /// Ciclos de Aprendizagem
    /// </summary>
    public class ACA_TipoCicloDAO : Abstract_ACA_TipoCicloDAO
    {
        #region M�todos

        public bool AtualizaObjetoAprendizagem(int tci_id, bool tci_objetoAprendizagem)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_AtualizaObjetoAprendizagem", _Banco);

            try
            {
                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@tci_id";
                Param.Size = 4;
                Param.Value = tci_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Boolean;
                Param.ParameterName = "@tci_objetoAprendizagem";
                Param.Size = 1;
                Param.Value = tci_objetoAprendizagem;
                qs.Parameters.Add(Param);

                qs.Execute();

                return true;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna os tipos de ciclo de aprendizagem ativos
        /// </summary>
        /// <param name="totalRecords">Total de registros da consulta</param>
        /// <returns>Lista com os tipos</returns>
        public DataTable SelecionarAtivos(out int totalRecords)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_SelecionarAtivos", _Banco);
            List<ACA_TipoCiclo> lstTpCiclo = new List<ACA_TipoCiclo>();

            try
            {
                qs.Execute();

                totalRecords = qs.Return.Rows.Count;

                return qs.Return;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna os tipos de ciclo de aprendizagem ativos de cursos ligados � escola
        /// </summary>
        /// <param name="cal_ano">Ano do objeto de aprendizagem do ciclo</param>
        /// <param name="tds_id">ID do tipo de disciplina do objeto de aprendizagem</param>
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uad_idSuperior">ID da unidade superior</param>
        /// <param name="totalRecords">Total de registros da consulta</param>
        /// <returns>Lista com os tipos</returns>
        public DataTable SelecionarAtivosEscolaAno(int cal_ano, int tds_id, int esc_id, Guid uad_idSuperior, out int totalRecords)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_SelecionarAtivosEscolaAno", _Banco);
            List<ACA_TipoCiclo> lstTpCiclo = new List<ACA_TipoCiclo>();

            try
            {
                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cal_ano";
                Param.Size = 4;
                Param.Value = cal_ano;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@tds_id";
                Param.Size = 4;
                Param.Value = tds_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@esc_id";
                Param.Size = 4;
                if (esc_id > 0)
                    Param.Value = esc_id;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@uad_idSuperior";
                Param.Size = 16;
                if (uad_idSuperior != Guid.Empty)
                    Param.Value = uad_idSuperior;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                qs.Execute();

                totalRecords = qs.Return.Rows.Count;

                return qs.Return;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna informa��es do tipo do ciclo de ensino do aluno
        /// </summary>
        /// <param name="alu_id">id do aluno</param>
        /// <returns>Lista com os tipos</returns>
        public DataTable SelecionaDadosDoCicloDoAluno(long alu_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_SelectBy_Aluno", _Banco);
            try
            {
                #region PARAMETROS
                Param = qs.NewParameter();
                Param.DbType = DbType.Int64;
                Param.ParameterName = "@alu_id";
                Param.Size = 8;
                Param.Value = alu_id;
                qs.Parameters.Add(Param);
                #endregion PARAMETROS

                qs.Execute();

                return qs.Return;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Carrega os ciclos vinculados ao curso/curriculo per�odo n�o exclu�dos logicamente
        /// filtrados por curso e curr�culo
        /// </summary>
        /// <param name="cur_id">ID de Curso</param>
        /// <param name="crr_id">ID de curriculo</param>
        /// <returns>DataTable com os dados</returns>
        public DataTable SelecionaCicloPorCursoCurriculo
        (
            int cur_id,
            int crr_id
        )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_SelectBy_CursoCurriculo", _Banco);
            try
            {
                #region PARAMETROS
                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cur_id";
                Param.Size = 4;
                if (cur_id > 0)
                    Param.Value = cur_id;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@crr_id";
                Param.Size = 4;
                if (crr_id > 0)
                    Param.Value = crr_id;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);
                #endregion PARAMETROS

                qs.Execute();

                return qs.Return;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }
        
        /// <summary>
        /// Verifica o maior n�mero de ordem cadastado de tipo de ciclo
        /// </summary>     
        public int Select_MaiorOrdem()
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_ACA_TipoCiclo_Select_MaiorOrdem", _Banco);
            try
            {
                qs.Execute();

                return qs.Return.Rows.Count > 0 ? Convert.ToInt32(qs.Return.Rows[0][0]) : 0;
            }
            catch
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        #endregion
    }
}