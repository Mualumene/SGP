/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Data;
using System.Collections.Generic;
using MSTech.Data.Common;
using MSTech.Business.Common;
using MSTech.GestaoEscolar.DAL;
using MSTech.GestaoEscolar.Entities;
using MSTech.Validation.Exceptions;
using MSTech.GestaoEscolar.CustomResourceProviders;

namespace MSTech.GestaoEscolar.BLL
{
    #region Estruturas

    /// <summary>
    /// Estrutura para associar a lista de turnos ao per�odo do par�metro.
    /// </summary>
    public struct ParametroFormacaoTurmas
    {
        public string crp_descricao { get; set; }
        public MTR_ParametroFormacaoTurma entityParametroPeriodo { get; set; }
        public List<MTR_ParametroFormacaoTurmaTurno> listaParametroPeriodoTurno { get; set; }
        public List<MTR_ParametroFormacaoTurmaCapacidadeDeficiente> listaCapacidadeDeficiente { get; set; }
        public List<MTR_ParametroFormacaoTurmaTipoDeficiencia> listaTipoDeficiencia { get; set; }
    }

    #endregion

    #region Enumeradores

    /// <summary>
    /// Tipos de digito do c�digo da turma
    /// </summary>
    public enum MTR_ParametroFormacaoTurmaTipoDigito : byte
    {
        Numerico = 1
        ,
        Alfabetico = 2
        ,
        SemControleAutomatico = 3
    }

    /// <summary>
    /// Situa��es do registro
    /// </summary>
    public enum MTR_ParametroFormacaoTurmaSituacao : byte
    {
        Ativo = 1
        ,
        Excluido = 2
    }

    /// <summary>
    /// Tipos de turma dispon�veis.
    /// </summary>
    public enum MTR_ParametroFormacaoTurmaTipo : byte
    {
        Normal = 1
        ,
        EletivaAluno = 2
    }

    /// <summary>
    /// Tipos de controle de capacidade.
    /// </summary>
    public enum MTR_ParametroFormacaoTurmaTipoControleCapacidade : byte
    {
        SemControle = 1
        ,
        CapacidadeNormal
        ,
        CapacidadeNormalIndividual
    }

    /// <summary>
    /// Tipos de defici�ncia por aluno inclu�do.
    /// </summary>
    public enum MTR_ParametroFormacaoTurmaTiposDeficienciaAlunoIncluidos : byte
    {
        SemAlunos = 1
        ,
        TodosTipos
        ,
        Escolher
    }

    #endregion

    /// <summary>
    /// MTR_ParametroFormacaoTurma Business Object 
    /// </summary>
    public class MTR_ParametroFormacaoTurmaBO : BusinessBase<MTR_ParametroFormacaoTurmaDAO, MTR_ParametroFormacaoTurma>
    {
        /// <summary>
        /// Seleciona todos os cursos e grupamentos de ensino de
        /// acordo com os registro da tabela MTR_ParametroFormacaoTurma.
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento/in�cio.</param>
        /// <param name="cur_id">Id do curso.</param>
        /// <returns>Lista com estruturas de par�metro de forma��o de turmas.</returns>
        public static List<ParametroFormacaoTurmas> SelecionaPorProcessoCurso(int pfi_id, int cur_id)
        {
            List<ParametroFormacaoTurmas> listaParametroFormacaoTurmas = new List<ParametroFormacaoTurmas>();

            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();
            DataTable dt = dao.SelectBy_ProcessoCurso(pfi_id, cur_id);
            foreach (DataRow row in dt.Rows)
            {
                ParametroFormacaoTurmas entityParametroFormacaoTurmas = new ParametroFormacaoTurmas
                    {
                        entityParametroPeriodo = new MTR_ParametroFormacaoTurma(),
                        listaParametroPeriodoTurno = new List<MTR_ParametroFormacaoTurmaTurno>(),
                        crp_descricao = row["crp_descricao"].ToString()
                    };

                entityParametroFormacaoTurmas.entityParametroPeriodo = dao.DataRowToEntity(row, entityParametroFormacaoTurmas.entityParametroPeriodo);
                if (entityParametroFormacaoTurmas.entityParametroPeriodo.pft_id > 0)
                {
                    entityParametroFormacaoTurmas.listaParametroPeriodoTurno = MTR_ParametroFormacaoTurmaTurnoBO.SelecionaPorProcessoParametro(pfi_id, entityParametroFormacaoTurmas.entityParametroPeriodo.pft_id, false);
                }

                if (entityParametroFormacaoTurmas.entityParametroPeriodo.pft_tipoControleCapacidade == ((byte)MTR_ParametroFormacaoTurmaTipoControleCapacidade.CapacidadeNormalIndividual))
                {
                    entityParametroFormacaoTurmas.listaCapacidadeDeficiente = MTR_ParametroFormacaoTurmaCapacidadeDeficienteBO.SelecionaPorProcessoParametro(pfi_id, entityParametroFormacaoTurmas.entityParametroPeriodo.pft_id);
                }

                if (entityParametroFormacaoTurmas.entityParametroPeriodo.pft_tipoControleDeficiente == ((byte)MTR_ParametroFormacaoTurmaTiposDeficienciaAlunoIncluidos.Escolher))
                {
                    entityParametroFormacaoTurmas.listaTipoDeficiencia = MTR_ParametroFormacaoTurmaTipoDeficienciaBO.SelecionaPorProcessoParametro(pfi_id, entityParametroFormacaoTurmas.entityParametroPeriodo.pft_id);
                }

                listaParametroFormacaoTurmas.Add(entityParametroFormacaoTurmas);
            }

            return listaParametroFormacaoTurmas;
        }

        /// <summary>
        /// Retorna a entidade cadastrada no processo, para o curso e per�odo informados.
        /// </summary>
        /// <param name="pfi_id">ID do processo</param>
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>
        /// <param name="crp_id">ID do per�odo do curso</param>
        /// <returns></returns>
        public static MTR_ParametroFormacaoTurma GetEntityBy_Processo_PeriodoCurso(int pfi_id, int cur_id, int crr_id, int crp_id)
        {
            return new MTR_ParametroFormacaoTurmaDAO().LoadBy_Processo_CursoPeriodo(pfi_id, cur_id, crr_id, crp_id);
        }

        /// <summary>
        /// Retorna os cursos e turnos dispon�veis para a forma��o de turmas        
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>        
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public static DataTable SelecionaCursosPeriodosFormacaoTurmas(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();
            return dao.SelectBy_FormacaoTurmas(pfi_id, esc_id, uni_id, ent_id, adm, usu_id, gru_id);
        }

        /// <summary>
        /// Retorna os cursos, disciplinas e turnos dispon�veis para a forma��o de turmas eletiva        
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>        
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public static DataTable SelecionaFormacaoTurmasEletiva(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();
            return dao.SelectBy_FormacaoTurmasEletiva(pfi_id, esc_id, uni_id, ent_id, adm, usu_id, gru_id);
        }

        /// <summary>
        /// Retorna os cursos e turnos dispon�veis para o fechamento de matr�cula.        
        /// </summary>
        /// <param name="pfi_id">Id do processo de fechamento e inicio do ano letivo</param>        
        /// <param name="esc_id">ID da escola</param>
        /// <param name="uni_id">ID da unidade da escola</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>        
        /// <param name="adm">Indica se o usu�rio � administrador</param>
        /// <param name="usu_id">ID do usu�rio logado</param>
        /// <param name="gru_id">ID do grupo do usu�rio logado</param>        
        public static DataTable SelecionaCursosPeriodosFechamentoMatricula(int pfi_id, int esc_id, int uni_id, Guid ent_id, bool adm, Guid usu_id, Guid gru_id)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();
            return dao.SelectBy_FechamentoMatricula(pfi_id, esc_id, uni_id, ent_id, adm, usu_id, gru_id);
        }

        /// <summary>
        /// Verifica se existe par�metros para o ano atual e curso informado        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                
        /// <param name="crp_id">ID do per�odo do curr�culo</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>
        /// <param name="banco">Transa��o com banco</param>  
        public static MTR_ParametroFormacaoTurma SelecionaParametroPorAnoCursoPeriodo(int cur_id, int crr_id, int crp_id, Guid ent_id, TalkDBTransaction banco)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO { _Banco = banco };

            DataTable dt = dao.SelectBy_AnoCursoPeriodo(cur_id, crr_id, crp_id, ent_id);

            MTR_ParametroFormacaoTurma entity = new MTR_ParametroFormacaoTurma();
            entity = dt.Rows.Count > 0 ? dao.DataRowToEntity(dt.Rows[0], entity) : null;

            return entity;
        }

        /// <summary>
        /// Verifica se existe par�metros para o ano atual e curso informado        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                
        /// <param name="crp_id">ID do per�odo do curr�culo</param>                
        /// <param name="ent_id">Entidade do usu�rio logado</param>  
        public static MTR_ParametroFormacaoTurma SelecionaParametroPorAnoCursoPeriodo(int cur_id, int crr_id, int crp_id, Guid ent_id)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();

            DataTable dt = dao.SelectBy_AnoCursoPeriodo(cur_id, crr_id, crp_id, ent_id);

            MTR_ParametroFormacaoTurma entity = new MTR_ParametroFormacaoTurma();
            entity = dt.Rows.Count > 0 ? dao.DataRowToEntity(dt.Rows[0], entity) : null;

            return entity;
        }

        /// <summary>
        /// Verifica se existe par�metros de forma��o para turma eletiva para o ano atual e curso informado        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                          
        /// <param name="ent_id">Entidade do usu�rio logado</param>
        /// <param name="banco">Transa��o com banco</param>  
        public static MTR_ParametroFormacaoTurma SelecionaParametroPorAnoCurso(int cur_id, int crr_id, Guid ent_id, TalkDBTransaction banco)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO { _Banco = banco };

            DataTable dt = dao.SelectBy_AnoCurso(cur_id, crr_id, ent_id);

            MTR_ParametroFormacaoTurma entity = new MTR_ParametroFormacaoTurma();
            entity = dt.Rows.Count > 0 ? dao.DataRowToEntity(dt.Rows[0], entity) : null;

            return entity;
        }

        /// <summary>
        /// Verifica se existe par�metros de forma��o para turma eletiva para o ano atual e curso informado        
        /// </summary>        
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>                          
        /// <param name="ent_id">Entidade do usu�rio logado</param>  
        public static MTR_ParametroFormacaoTurma SelecionaParametroPorAnoCurso(int cur_id, int crr_id, Guid ent_id)
        {
            MTR_ParametroFormacaoTurmaDAO dao = new MTR_ParametroFormacaoTurmaDAO();

            DataTable dt = dao.SelectBy_AnoCurso(cur_id, crr_id, ent_id);

            MTR_ParametroFormacaoTurma entity = new MTR_ParametroFormacaoTurma();
            entity = dt.Rows.Count > 0 ? dao.DataRowToEntity(dt.Rows[0], entity) : null;

            return entity;
        }
    }
}