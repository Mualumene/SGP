using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Data.Common;
using System.Data;
using System;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
    /// <summary>
    /// Situa��es do AlunoCurriculoAvaliacao
    /// </summary>
    public enum ACA_AlunoCurriculoAvaliacaoSituacao : byte
    {
        Ativo = 1
        ,
        Excluido = 3
        ,
        Inativo = 4
    }

	/// <summary>
	/// ACA_AlunoCurriculoAvaliacao Business Object 
	/// </summary>
	public class ACA_AlunoCurriculoAvaliacaoBO : BusinessBase<ACA_AlunoCurriculoAvaliacaoDAO, ACA_AlunoCurriculoAvaliacao>
	{
        /// <summary>
        /// Retorna o registro do aluno na AlunoCurriculoAvaliacao na ordem:
        /// - Se for encontrado um registro para o lan�amento 
        /// j� realizado (CLS_AlunoAvaliacaoTurma).
        /// - Se n�o for encontrado, retorna o registro ativo, em que
        /// n�o tenha lan�amento na CLS_AlunoAvaliacaoTurma.
        /// </summary>
        /// <param name="alu_id">ID do aluno</param>
        /// <param name="tur_id">ID da turma</param>
        /// <param name="mtu_id">ID da matr�cula do aluno na turma</param>
        /// <param name="aat_id">ID do lan�amento de nota do aluno na CLS_AlunoAvaliacaoTurma</param>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        /// <returns></returns>
        public static ACA_AlunoCurriculoAvaliacao GetEntityBy_LancamentoAluno
        (
            long alu_id
            , long tur_id
            , int mtu_id
            , int aat_id
            , TalkDBTransaction banco
        )
        {
            ACA_AlunoCurriculoAvaliacaoDAO dao = new ACA_AlunoCurriculoAvaliacaoDAO {_Banco = banco};
            DataTable dt = dao.LoadBy_LancamentoAluno(alu_id, tur_id, mtu_id, aat_id);

            ACA_AlunoCurriculoAvaliacao entity = new ACA_AlunoCurriculoAvaliacao();

            if (dt.Rows.Count > 0)
            {
                entity = dao.DataRowToEntity(dt.Rows[0], entity);
            }

            return entity;
        }

        /// <summary>
        /// Retorna o curr�culo avalia��o onde o aluno est� ativo.
        /// </summary>
        /// <param name="alu_id">ID do aluno</param>
        /// <param name="cur_id">ID do curso</param>
        /// <param name="crr_id">ID do curr�culo do curso</param>
        /// <param name="crp_id">ID do per�odo do curso</param>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        /// <returns></returns>
        public static ACA_AlunoCurriculoAvaliacao GetEntityBy_AtualAluno
        (
            long alu_id
            , int cur_id
            , int crr_id
            , int crp_id
            , TalkDBTransaction banco
        )
        {
            ACA_AlunoCurriculoAvaliacaoDAO dao = new ACA_AlunoCurriculoAvaliacaoDAO { _Banco = banco };
            DataTable dt = dao.LoadBy_AtualAluno(alu_id, cur_id, crr_id, crp_id);

            ACA_AlunoCurriculoAvaliacao entity = new ACA_AlunoCurriculoAvaliacao();

            if (dt.Rows.Count > 0)
            {
                entity = dao.DataRowToEntity(dt.Rows[0], entity);
            }

            return entity;
        }

        /// <summary>
        /// Salva a avalia��o para o aluno.
        /// </summary>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        /// <param name="entity">Entidade para salvar</param>
        public static new bool Save(ACA_AlunoCurriculoAvaliacao entity, TalkDBTransaction banco)
        {
            if (!entity.Validate())
                throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));

            ACA_AlunoCurriculoAvaliacaoDAO dao = new ACA_AlunoCurriculoAvaliacaoDAO
                                                     {
                                                         _Banco = banco
                                                     };
            return dao.Salvar(entity);
        }
        
        /// <summary>
        /// Salva a avalia��o do aluno ligando ela ao lan�amento de notas da efetiva��o. N�o avan�a o aluno.
        /// </summary>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        /// <param name="entity">Entidade do lan�amento de notas da efetiva��o</param>
        /// <param name="cap_dataInicio">Data de in�cio do per�odo do calend�rio.</param>
        /// <param name="cap_dataFim">Data de fim do per�odo do calend�rio.</param>
        public static void SalvarAvaliacaoAlunoSemAvanco(TalkDBTransaction banco, CLS_AlunoAvaliacaoTurma entity, DateTime cap_dataInicio, DateTime cap_dataFim)
        {
            ACA_AlunoCurriculoAvaliacao entAlunoAvaliacao =
                GetEntityBy_LancamentoAluno
                    (entity.alu_id, entity.tur_id, entity.mtu_id, entity.aat_id, banco);

            if (!entAlunoAvaliacao.IsNew)
            {
                // Se existe uma entidade na AlunoCurriculoAvaliacao, salva o registro,
                // ligando ele com a CLS_AlunoAvaliacaoTurma.

                // Configurar valores do lan�amento para a AlunoCurriculoAvaliacao.
                entAlunoAvaliacao.mtu_id = entity.mtu_id;
                entAlunoAvaliacao.aat_id = entity.aat_id;
                entAlunoAvaliacao.ala_dataInicio = cap_dataInicio;
                entAlunoAvaliacao.ala_dataFim = cap_dataFim;
                Save(entAlunoAvaliacao, banco);
            }    
        }
	}
}