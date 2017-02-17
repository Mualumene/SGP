/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Data;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL.Abstracts;

namespace MSTech.GestaoEscolar.DAL
{
    public class RHU_CargaHorariaDAO : Abstract_RHU_CargaHorariaDAO
    {
        #region M�todos
        
        /// <summary>
        /// Retorna todos os registros de carga hor�ria n�o exclu�das logicamente.
        /// De acordo com os par�metros passados.
        /// </summary>        
        /// <param name="chr_especialista">Especialista.</param>
        /// <param name="crg_id">Id do cargo.</param>
        /// <param name="ent_id">Id da entidade.</param>
        /// <returns>Retorna um data table de registro de carga hor�ria.</returns>
        public DataTable SelectBy_PadraoEspecialistaCargo
        (            
            bool chr_especialista
            , int crg_id
            , Guid ent_id
        )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_RHU_CargaHoraria_SelectBy_PadraoEspecialistaCargo", _Banco);
            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Boolean;
                Param.ParameterName = "@chr_especialista";
                Param.Size = 1;
                Param.Value = chr_especialista;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@crg_id";
                Param.Size = 4;
                if (crg_id > 0)
                    Param.Value = crg_id;
                else
                    Param.Value = DBNull.Value;
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
        /// Retorna todos as cargas hor�rias n�o exclu�das logicamente
        /// </summary>        
        /// <param name="chr_descricao">Descri��o da carga hor�ria</param>
        /// <param name="ent_id">Entidade do usu�rio logado</param>
        /// <param name="totalRecords">Total de registros retornado na busca</param>           
        public DataTable SelectBy_Pesquisa
        (
            string chr_descricao
            , Guid ent_id
            , out int totalRecords
        )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_RHU_CargaHoraria_SelectBy_Pesquisa", _Banco);
            try
            {
                #region PARAMETROS

                Param = qs.NewParameter();
                Param.DbType = DbType.AnsiString;
                Param.ParameterName = "@chr_descricao";
                Param.Size = 200;
                if (!string.IsNullOrEmpty(chr_descricao))
                    Param.Value = chr_descricao;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
                qs.Parameters.Add(Param);

                #endregion

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
		/// Seleciona cargos de acordo com os filtros passados
		/// </summary>
		/// <param name="idsCargo">Cargos a obter carga hor�ria</param>
		/// <param name="ent_id">Id da Entidade</param>
		public DataTable SelectBy_CargoDocente
		(
			string idsCargo
			, Guid ent_id
		)
		{
			QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_RHU_CargaHoraria_SelectBy_CargoDocente", _Banco);

			try
			{
				#region PARAMETROS

				Param = qs.NewParameter();
				Param.DbType = DbType.String;
				Param.ParameterName = "@ids";
				Param.Size = 500;
				Param.Value = idsCargo;
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

        #region M�todos Sobrescritos

        /// <summary>
        /// Override do nome da ConnectionString.
        /// </summary>
        protected override string ConnectionStringName
        {
            get
            {
                return "GestaoEscolar";
            }
        }

        /// <summary>
        /// Par�metros para efetuar a inclus�o preservando a data de cria��o
        /// </summary>
        /// <param name="qs"></param>
        /// <param name="entity"></param>
        protected override void ParamInserir(QuerySelectStoredProcedure qs, RHU_CargaHoraria entity)
        {
            base.ParamInserir(qs, entity);

            qs.Parameters["@chr_descricao"].DbType = DbType.String;

            qs.Parameters["@chr_dataCriacao"].Value = DateTime.Now;
            qs.Parameters["@chr_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// Par�metros para efetuar a altera��o preservando a data de cria��o
        /// </summary>
        protected override void ParamAlterar(QueryStoredProcedure qs, RHU_CargaHoraria entity)
        {
            base.ParamAlterar(qs, entity);

            qs.Parameters["@chr_descricao"].DbType = DbType.String;

            qs.Parameters.RemoveAt("@chr_dataCriacao");
            qs.Parameters["@chr_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// M�todo alterado para que o update n�o fa�a a altera��o da data de cria��o
        /// </summary>
        /// <param name="entity"> Entidade RHU_CargaHoraria</param>
        /// <returns>true = sucesso | false = fracasso</returns> 
        protected override bool Alterar(RHU_CargaHoraria entity)
        {
            __STP_UPDATE = "NEW_RHU_CargaHoraria_Update";
            return base.Alterar(entity);
        }

        /// <summary>
        /// Par�metros para efetuar a exclus�o l�gica.
        /// </summary>
        protected override void ParamDeletar(QueryStoredProcedure qs, RHU_CargaHoraria entity)
        {
            Param = qs.NewParameter();
            Param.DbType = DbType.Int32;
            Param.ParameterName = "@chr_id";
            Param.Size = 4;
            Param.Value = entity.chr_id;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.Byte;
            Param.ParameterName = "@chr_situacao";
            Param.Size = 1;
            Param.Value = 3;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.DateTime;
            Param.ParameterName = "@chr_dataAlteracao";
            Param.Size = 8;
            Param.Value = DateTime.Now;
            qs.Parameters.Add(Param);
        }

        /// <summary>
        /// M�todo alterado para que o delete n�o fa�a exclus�o f�sica e sim l�gica (update).
        /// </summary>
        /// <param name="entity"> Entidade RHU_CargaHoraria</param>
        /// <returns>true = sucesso | false = fracasso</returns>
        public override bool Delete(RHU_CargaHoraria entity)
        {
            __STP_DELETE = "NEW_RHU_CargaHoraria_Update_Situacao";
            return base.Delete(entity);
        }

        #endregion
    }
}