/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System.Data;
    using System.Linq;
    using Validation.Exceptions;/// <summary>
                                /// Description: CLS_TurmaAtividadeExtraClasse Business Object. 
                                /// </summary>
    public class CLS_TurmaAtividadeExtraClasseBO : BusinessBase<CLS_TurmaAtividadeExtraClasseDAO, CLS_TurmaAtividadeExtraClasse>
	{
        #region M�todos de verifica��o

        /// <summary>
        /// Verifica se j� existe a atividade por disciplina, nome, tipo e bimestre.
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static bool VerificaExistePorDisciplinaNomeTipoBimestre(CLS_TurmaAtividadeExtraClasse entity)
        {
            return new CLS_TurmaAtividadeExtraClasseDAO().VerificaExistePorDisciplinaNomeTipoBimestre(entity.tud_id, entity.tae_id, entity.tae_nome, entity.tav_id, entity.tpc_id);
        }

        /// <summary>
        /// Verifica se a carga horaria da atividade extraclasse vai estourar o permitido pelo curso no ano letivo
        /// </summary>
        /// <param name="tud_id"></param>
        /// <param name="tae_id"></param>
        /// <param name="tae_cargaHoraria"></param>
        /// <param name="cur_cargaHorariaExtraClasse"></param>
        /// <param name="cargaAtividadeExtraTotal"></param>
        /// <returns></returns>
        public static bool VerificaCargaHorariaCursoCalendario(CLS_TurmaAtividadeExtraClasse entity, out int cur_cargaHorariaExtraClasse, out int cargaAtividadeExtraTotal)
        {
            return new CLS_TurmaAtividadeExtraClasseDAO().VerificaCargaHorariaCursoCalendario(entity.tud_id, entity.tae_id, entity.tae_cargaHoraria, out cur_cargaHorariaExtraClasse, out cargaAtividadeExtraTotal);
        }

        #endregion M�todos de verifica��o

        #region M�todos de consulta

        /// <summary>
        /// Retorna as todas as Atividades extraclasse(por disciplina) com as notas do aluno
        /// </summary>
        /// <param name="tud_id"></param>
        /// <param name="tpc_id"></param>
        /// <param name="dtTurmas"></param>
        /// <returns></returns>
        public static DataTable SelecionaPorPeriodoDisciplina_Alunos(long tud_id, int tpc_id, bool usuario_superior, byte tdt_posicao, string tur_ids = null)
        {
            using (DataTable dtTurmas = TUR_Turma.TipoTabela_Turma())
            {
                if (!string.IsNullOrEmpty(tur_ids))
                {
                    tur_ids.Split(';').ToList().ForEach
                        (
                            p =>
                            {
                                DataRow dr = dtTurmas.NewRow();
                                dr["tur_id"] = p.ToString();
                                dtTurmas.Rows.Add(dr);
                            }
                        );
                }

                return new CLS_TurmaAtividadeExtraClasseDAO().SelecionaPorPeriodoDisciplina_Alunos(tud_id, tpc_id, usuario_superior, tdt_posicao, dtTurmas);
            }
        }

        #endregion M�todos de consulta

        #region M�todos de altera��o/inclus�o

        /// <summary>
        /// Realiza as valida��es necess�rias e salva a atividade extraclasse.
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static bool Salvar(CLS_TurmaAtividadeExtraClasse entity)
        {
            if (entity.Validate())
            {
                if (VerificaExistePorDisciplinaNomeTipoBimestre(entity))
                {
                    throw new ValidationException("J� existe uma atividade extraclasse com o mesmo nome e tipo para a disciplina no bimestre.");
                }

                int cur_cargaHorariaExtraClasse = 0, cargaAtividadeExtraTotal = 0;

                if (VerificaCargaHorariaCursoCalendario(entity, out cur_cargaHorariaExtraClasse, out cargaAtividadeExtraTotal))
                {
                    throw new ValidationException(string.Format("A soma de carga hor�ria de atividades extraclasse ({0}) est� acima da m�xima permitida pelo curso ({1}).", cargaAtividadeExtraTotal, cur_cargaHorariaExtraClasse));
                }

                return new CLS_TurmaAtividadeExtraClasseDAO().Salvar(entity);
            }

            throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));
        }

        #endregion M�todos de altera��o/inclus�o

        #region M�todos de exclus�o

        /// <summary>
        /// Exclui a atividade extraclasse
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public static bool Deletar(CLS_TurmaAtividadeExtraClasse entity)
        {
            return new CLS_TurmaAtividadeExtraClasseDAO().Deletar(entity.tud_id, entity.tae_id);
        }

        #endregion
    }
}