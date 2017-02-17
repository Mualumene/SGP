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
    /// ACA_CursoReunioes Business Object 
    /// </summary>
    public class ACA_CursoReunioesBO : BusinessBase<ACA_CursoReunioesDAO, ACA_CursoReunioes>
    {
        #region M�todos de consulta


        /// <summary>
        /// Seleciona por curso, calend�rio e per�odo do calend�irio.
        /// </summary>
        /// <param name="cur_id">ID do curso.</param>
        /// <param name="crr_id">ID do curr�culo.</param>
        /// <param name="cal_id">ID do calend�rio.</param>
        /// <param name="cap_id">ID do per�odo do calend�rio.</param>
        /// <returns></returns>
        public static ACA_CursoReunioes SelecionaPorCursoCalendarioPeriodo(int cur_id, int crr_id, int cal_id, int cap_id)
        {
            return new ACA_CursoReunioesDAO().SelecionaPorCursoCalendarioPeriodo(cur_id, crr_id, cal_id, cap_id);
        }

        #endregion

        #region M�todos de inclus�o / Altera��o

        /// <summary>
        /// Sobrescri��o do m�todo salvar.
        /// </summary>
        /// <param name="entityCursoReunioes">Entidade de CursoReunioes.</param>
        /// <param name="ent_id">Id da entidade do usu�rio logado.</param>
        /// <returns>Verdadeiro se salvou com sucesso.</returns>
        public static bool Salvar(ACA_CursoReunioes entityCursoReunioes, Guid ent_id)
        {
            TalkDBTransaction _bancoGestao = new ACA_EventoDAO()._Banco.CopyThisInstance();
            _bancoGestao.Open(IsolationLevel.ReadCommitted);

            try
            {
                // Verifica a validade dos atributos obrigat�rios da tabela ACA_CursoReunioes
                if (entityCursoReunioes.Validate())
                {
                    bool cadastroReunioesPorPeriodo = ACA_ParametroAcademicoBO.ParametroValorBooleanoPorEntidade(eChaveAcademico.CADASTRAR_REUNIOES_POR_PERIODO_CALENDARIO, ent_id);

                    // Verifica se existem registros de frequ�ncia ligados ao calend�rio.
                    if (CLS_FrequenciaReuniaoResponsaveisBO.VerificaFrequenciaPorCalendario(entityCursoReunioes.cal_id, entityCursoReunioes.cap_id, entityCursoReunioes.cur_id, entityCursoReunioes.crr_id, cadastroReunioesPorPeriodo))
                    {
                        throw new ValidationException("N�o � poss�vel alterar a quantidade de reuni�es por per�odo do calend�rio pois possui outros registros ligados a ele.");
                    }

                    return Save(entityCursoReunioes, _bancoGestao);
                }

                throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entityCursoReunioes));
            }
            catch (Exception ex)
            {
                _bancoGestao.Close(ex);

                throw;
            }
            finally
            {
                _bancoGestao.Close();
            }
        }

        #endregion
    }
}