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
    public class CLS_ArquivoEfetivacaoDAO : AbstractCLS_ArquivoEfetivacaoDAO
    {
        #region M�todos

        /// <summary>
        /// Monta o layout de exporta��o dos dados dos alunos para o fechamento de escolas que n�o possuem internet.
        /// </summary>
        /// <param name="esc_id">Id da escola</param>
        /// <param name="uni_id">Id da unidade</param>
        /// <param name="cal_id">Id do calendario</param>
        /// <param name="tur_id">Id da turma</param>
        /// <param name="tpc_id">Id do periodo calendario</param>
        /// <param name="nomeBimestre">Nome padr�o do periodo calendario no sistema</param>
        /// <param name="nomeDisciplina">Valor do parametro mensagem [MSG_DISCIPLINAS]</param>
        /// <param name="ordemAluno">Valor do parametro academico ORDENACAO_COMBO_ALUNO</param>
        /// <returns>Layout montado pronto para o arquivo</returns>
        public DataTable ExportacaoAlunosFechamento
        (
            int esc_id,
            int uni_id,
            int cal_id,
            long tur_id,
            int tpc_id,
            string nomeBimestre,
            string nomeDisciplina,
            short ordemAluno
       )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_ArquivoEfetivacao_ExportacaoAlunosFechamento", _Banco);

            try
            {
                #region PARAMETROS

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
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cal_id";
                Param.Size = 4;
                Param.Value = cal_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int64;
                Param.ParameterName = "@tur_id";
                Param.Size = 8;
                Param.Value = tur_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@tpc_id";
                Param.Size = 4;
                Param.Value = tpc_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.AnsiString;
                Param.ParameterName = "@nomeBimestre";
                Param.Size = 200;
                Param.Value = nomeBimestre;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.AnsiString;
                Param.ParameterName = "@nomeDisciplina";
                Param.Size = 200;
                Param.Value = nomeDisciplina;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Byte;
                Param.ParameterName = "@ordemAluno";
                Param.Size = 1;
                Param.Value = ordemAluno;
                qs.Parameters.Add(Param);

                #endregion PARAMETROS

                qs.Execute();

                return qs.Return;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Consulta as �ltimas exporta��es/importa��es de acordo com os filtros
        /// </summary>
        /// <param name="esc_id">Id da escola</param>
        /// <param name="uni_id">Id da unidade</param>
        /// <param name="cal_id">Id do calendario</param>
        /// <param name="tur_codigo">C�digo da turma</param>
        /// <param name="tpc_id">Id do periodo calendario</param>
        public DataTable SelectBy_Filtros
        (
            int esc_id,
            int uni_id,
            int cal_id,
            string tur_codigo,
            int tpc_id,
            bool paginado,
            int currentPage,
            int pageSize,
            out int totalRecords
       )
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_ArquivoEfetivacao_SelectByPesquisa", _Banco);

            try
            {
                #region PARAMETROS

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
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cal_id";
                Param.Size = 4;
                Param.Value = cal_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.AnsiString;
                Param.ParameterName = "@tur_codigo";
                Param.Size = 30;
                if (!string.IsNullOrEmpty(tur_codigo))
                    Param.Value = tur_codigo;
                else
                    Param.Value = DBNull.Value;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@tpc_id";
                Param.Size = 4;
                Param.Value = tpc_id;
                qs.Parameters.Add(Param);

                #endregion PARAMETROS

                if (paginado)
                    totalRecords = qs.Execute(currentPage, pageSize);
                else
                {
                    qs.Execute();
                    totalRecords = qs.Return.Rows.Count;
                }

                return qs.Return;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Seleciona os dados para valida��o na an�lise dos registros do arquivo
        /// de importa��o de fechamento.
        /// </summary>
        /// <param name="cal_id">ID do calend�rio.</param>
        /// <param name="tpc_id">ID do tipo de per�odo do calend�rio.</param>
        /// <param name="tur_id">ID do=a turma.</param>
        /// <returns></returns>
        public DataTable SelecionaDadosValidacaoAnaliseImportacao(int cal_id, int tpc_id, long tur_id, Guid ent_id)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CLS_ArquivoEfetivacao_SelecionaDadosValidacaoAnalise", _Banco);

            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@cal_id";
                Param.Size = 4;
                Param.Value = cal_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@tpc_id";
                Param.Size = 4;
                Param.Value = tpc_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int64;
                Param.ParameterName = "@tur_id";
                Param.Size = 8;
                Param.Value = tur_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Guid;
                Param.ParameterName = "@ent_id";
                Param.Size = 16;
                Param.Value = ent_id;
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
        

        #endregion

        #region M�todos Sobrescritos


        /// <summary>
        /// M�todo alterado para que o update n�o fa�a a altera��o da data de cria��o
        /// </summary>
        /// <param name="entity"> Entidade CLS_ArquivoEfetivacao</param>
        /// <returns>true = sucesso | false = fracasso</returns> 
        protected override bool Alterar(CLS_ArquivoEfetivacao entity)
        {
            __STP_UPDATE = "NEW_CLS_ArquivoEfetivacao_UPDATE";
            return base.Alterar(entity);
        }

        /// <summary>
        /// M�todo alterado para que o delete n�o fa�a exclus�o f�sica e sim l�gica (update).
        /// </summary>
        /// <param name="entity"> Entidade CLS_ArquivoEfetivacao</param>
        /// <returns>true = sucesso | false = fracasso</returns>         
        public override bool Delete(CLS_ArquivoEfetivacao entity)
        {
            __STP_DELETE = "NEW_CLS_ArquivoEfetivacao_UPDATE_Situacao";
            return base.Delete(entity);
        }

        /// <summary>
        /// Configura os parametros do metodo de Inserir.
        /// </summary>
        /// <param name="qs">Objeto da Store Procedure.</param>
        /// <param name="entity">Entidade com os dados para preenchimento dos parametros.</param>
        protected override void ParamInserir(QuerySelectStoredProcedure qs, CLS_ArquivoEfetivacao entity)
        {
            entity.aef_dataCriacao = entity.aef_dataAlteracao = DateTime.Now;

            base.ParamInserir(qs, entity);
        }

        /// <summary>
        /// Configura os parametros do metodo de Alterar.
        /// </summary>
        /// <param name="qs">Objeto da Store Procedure.</param>
        /// <param name="entity">Entidade com os dados para preenchimento dos parametros.</param>
        protected override void ParamAlterar(QueryStoredProcedure qs, CLS_ArquivoEfetivacao entity)
        {
            base.ParamAlterar(qs, entity);

            qs.Parameters.RemoveAt("@aef_dataCriacao");
            qs.Parameters["@aef_dataAlteracao"].Value = DateTime.Now;
        }

        /// <summary>
        /// Configura os parametros do metodo de Deletar.
        /// </summary>
        /// <param name="qs">Objeto da Store Procedure.</param>
        /// <param name="entity">Entidade com os dados para preenchimento dos parametros.</param>
        protected override void ParamDeletar(QueryStoredProcedure qs, CLS_ArquivoEfetivacao entity)
        {
            if (entity != null & qs != null)
            {
                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@aef_id";
                Param.Size = 4;
                Param.Value = entity.aef_id;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Int32;
                Param.ParameterName = "@aef_situacao";
                Param.Size = 1;
                Param.Value = 3;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.DateTime;
                Param.ParameterName = "@aef_dataAlteracao";
                Param.Size = 8;
                Param.Value = DateTime.Now;
                qs.Parameters.Add(Param);
            }
        }

        #endregion
    }
}