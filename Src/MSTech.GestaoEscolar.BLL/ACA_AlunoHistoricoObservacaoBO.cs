using System.Collections.Generic;
using System.ComponentModel;
using System.Data;

/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using MSTech.Business.Common;
using MSTech.CoreSSO.BLL;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.DAL;
using MSTech.GestaoEscolar.Entities;
using System;

namespace MSTech.GestaoEscolar.BLL
{
    #region Excess�es

    /// <summary>
    /// Classe de excess�o referente � entidade ACA_AlunoHistoricoObservacao.
    /// Utilizada nas telas de cadastro, para identificar se houve erro de valida��o
    /// na entidade do ACA_AlunoHistoricoObservacao.
    /// </summary>
    public class ACA_AlunoHistoricoObservacao_ValidationException : ACA_AlunoHistorico_ValidationException
    {
        public ACA_AlunoHistoricoObservacao_ValidationException(string message) : base(message) { }
    }

    #endregion Excess�es

    /// <summary>
    /// ACA_AlunoHistoricoObservacao Business Object
    /// </summary>
    public class ACA_AlunoHistoricoObservacaoBO : BusinessBase<ACA_AlunoHistoricoObservacaoDAO, ACA_AlunoHistoricoObservacao>
    {
        /// <summary>
        /// Retorna um datatable contendo todas as Observa��es do Historico do Aluno
        /// com situa��o ativa
        /// </summary>
        /// <param name="alu_id">Id da tabela ACA_Aluno do bd</param>
        /// <returns>DataTable com as Observa��es de Historicos do Aluno</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaObservacaoHistoricoAtiva
        (
            long alu_id,
            int aho_tipo
        )
        {
            ACA_AlunoHistoricoObservacaoDAO dao = new ACA_AlunoHistoricoObservacaoDAO();
            return dao.SelecionaObservacaoAtivaAluno(alu_id, aho_tipo);
        }

        /// <summary>
        /// Retorna um datatable contendo todas as Observa��es do Historico do Aluno
        /// com situa��o ativa
        /// </summary>
        /// <param name="alu_id">Id da tabela ACA_Aluno do bd</param>
        /// <returns>DataTable com as Observa��es de Historicos do Aluno</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaObservacaoHistoricoAtiva
        (
            long alu_id
        )
        {
            return SelecionaObservacaoHistoricoAtiva(alu_id, 0);
        }

        /// <summary>
        /// Retorna um datatable contendo todas as Observa��es de Historicos do Aluno
        /// que n�o foram exclu�dos logicamente, filtrados por
        /// alu_id
        /// </summary>
        /// <param name="alu_id">Id da tabela ACA_Aluno do bd</param>
        /// <param name="bancoGestao">Transa��o.</param>
        /// <returns>DataTable com as Observa��es de Historicos do Aluno</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<ACA_AlunoHistoricoObservacao> SelecionaPorAluno
        (
            long alu_id
            , TalkDBTransaction bancoGestao
        )
        {
            ACA_AlunoHistoricoObservacaoDAO dao = new ACA_AlunoHistoricoObservacaoDAO();
            if (bancoGestao != null)
            {
                dao._Banco = bancoGestao;
            }
            return dao.SelectBy_alu_id(alu_id);
        }

        /// <summary>
        /// Salva uma observa��o do hist�rico do aluno.
        /// </summary>
        /// <param name="entity">Entidade ACA_AlunoHistoricoObserva��o</param>
        /// <param name="banco">Transa��o com banco</param>
        /// <returns>True = inclu�do/alterado | False = n�o inclu�do/alterado</returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Save
        (
             ACA_AlunoHistoricoObservacao entity
            , TalkDBTransaction banco
        )
        {
            if (entity.Validate())
            {
                ACA_AlunoHistoricoObservacaoDAO dao = new ACA_AlunoHistoricoObservacaoDAO { _Banco = banco };
                return dao.Salvar(entity);
            }

            throw new ACA_AlunoHistoricoObservacao_ValidationException(UtilBO.ErrosValidacao(entity));
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="entityAluno"></param>
        /// <param name="ltHistoricoObservacao"></param>
        /// <param name="salvar_sempre_maiusculo"></param>
        /// <param name="bancoCore"></param>
        /// <param name="bancoGestao"></param>
        public static void SalvarHistoricosObservacaoAluno
        (
            ACA_Aluno entityAluno
            , List<ACA_AlunoHistoricoObservacao> ltHistoricoObservacao
            , bool salvar_sempre_maiusculo
            , TalkDBTransaction bancoCore
            , TalkDBTransaction bancoGestao
        )
        {
            SalvarHistoricosObservacaoAluno(entityAluno.alu_id, ltHistoricoObservacao, salvar_sempre_maiusculo, bancoCore, bancoGestao);
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="alu_id"></param>
        /// <param name="ltHistoricoObservacao"></param>
        /// <param name="salvar_sempre_maiusculo"></param>
        /// <param name="bancoCore"></param>
        /// <param name="bancoGestao"></param>
        public static void SalvarHistoricosObservacaoAluno
        (
            Int64 alu_id
            , List<ACA_AlunoHistoricoObservacao> ltHistoricoObservacao
            , bool salvar_sempre_maiusculo
            , TalkDBTransaction bancoCore
            , TalkDBTransaction bancoGestao
        )
        {
            List<ACA_AlunoHistoricoObservacao> ltOpcoesCadastradas = SelecionaPorAluno(alu_id, bancoGestao);

            foreach (ACA_AlunoHistoricoObservacao entityAlunoHistoricoObservacao in ltHistoricoObservacao)
            {
                entityAlunoHistoricoObservacao.alu_id = alu_id;

                if (entityAlunoHistoricoObservacao.IsNew)
                    entityAlunoHistoricoObservacao.aho_situacao = 1;

                Save(entityAlunoHistoricoObservacao, bancoGestao);
            }

            foreach (ACA_AlunoHistoricoObservacao entityAlunoHistoricoObservacao in ltOpcoesCadastradas)
            {
                if (!ltHistoricoObservacao.Exists(p => p.alu_id == entityAlunoHistoricoObservacao.alu_id &&
                                                       p.aho_id == entityAlunoHistoricoObservacao.aho_id))
                {
                    ACA_AlunoHistoricoObservacaoDAO daoAlunoHistoricoObservacao = new ACA_AlunoHistoricoObservacaoDAO { _Banco = bancoGestao };
                    daoAlunoHistoricoObservacao.Delete(entityAlunoHistoricoObservacao);
                }
            }
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="alu_id"></param>
        /// <param name="ltHistoricoObservacao"></param>
        /// <param name="salvar_sempre_maiusculo"></param>
        /// <param name="bancoCore"></param>
        /// <param name="bancoGestao"></param>
        public static void AdicionarSalvarHistoricosObservacaoAluno
        (
            Int64 alu_id
            , List<ACA_AlunoHistoricoObservacao> ltHistoricoObservacao
            , bool salvar_sempre_maiusculo
            , TalkDBTransaction bancoCore
            , TalkDBTransaction bancoGestao
        )
        {
            foreach (ACA_AlunoHistoricoObservacao entityAlunoHistoricoObservacao in ltHistoricoObservacao)
            {
                entityAlunoHistoricoObservacao.alu_id = alu_id;

                if (entityAlunoHistoricoObservacao.IsNew)
                    entityAlunoHistoricoObservacao.aho_situacao = 1;

                Save(entityAlunoHistoricoObservacao, bancoGestao);
            }
        }
    }
}