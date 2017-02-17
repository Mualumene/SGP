/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System.Linq;
using System.Data;
using System.ComponentModel;
using System.Collections.Generic;
using MSTech.Data.Common;
using MSTech.Business.Common;
using MSTech.CoreSSO.BLL;
using MSTech.GestaoEscolar.DAL;
using MSTech.GestaoEscolar.Entities;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
	
	/// <summary>
	/// TUR_TurmaCurriculoAvaliacao Business Object 
	/// </summary>
	public class TUR_TurmaCurriculoAvaliacaoBO : BusinessBase<TUR_TurmaCurriculoAvaliacaoDAO,TUR_TurmaCurriculoAvaliacao>
	{
        /// <summary>
        /// Verifica se existe o mesmo curr�culo per�odo e n�mero de avalia��o
        /// para a turma passada por par�metro.
        /// </summary>
        /// <param name="cur_idAvaliacao">Id do curso</param>
        /// <param name="crr_idAvaliacao">Id do curriculo</param>
        /// <param name="crp_idAvaliacao">Id do per�odo</param>
        /// <param name="tca_numeroAvaliacao">n�mero da avalia��o</param>
        /// <param name="tur_idDestino">Id da turma a ser verificada</param>        
        public static TUR_TurmaCurriculoAvaliacao SelecionaAvaliacaoExistenteParaTurma
        (
            long tur_idDestino
            , int cur_idAvaliacao
            , int crr_idAvaliacao
            , int crp_idAvaliacao
            , int tca_numeroAvaliacao
        )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            TUR_TurmaCurriculoAvaliacao entityTurmaCurriculoAvaliacaoDestino = (dao.SelectBy_VerificaAvaliacaoExistenteParaTurma(tur_idDestino, cur_idAvaliacao, crr_idAvaliacao, crp_idAvaliacao, tca_numeroAvaliacao)).Rows.Cast<DataRow>().Select(p => dao.DataRowToEntity(p, new TUR_TurmaCurriculoAvaliacao())).FirstOrDefault();

            return entityTurmaCurriculoAvaliacaoDestino;
        }

        /// <summary>
        /// Verifica se existe o mesmo curr�culo per�odo e n�mero de avalia��o
        /// para a turma passada por par�metro.
        /// </summary>
        /// <param name="tur_idDestino">Id da turma a ser verificada</param>
        /// <param name="cur_idAvaliacao">Id do curso</param>
        /// <param name="crr_idAvaliacao">Id do curriculo</param>
        /// <param name="crp_idAvaliacao">Id do per�odo</param>
        /// <param name="tca_numeroAvaliacao">n�mero da avalia��o</param>
        public static bool VerificaAvaliacaoExistenteParaTurma
            (
                long tur_idDestino
                , int cur_idAvaliacao
                , int crr_idAvaliacao
                , int crp_idAvaliacao
                , int tca_numeroAvaliacao
            )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            return (dao.SelectBy_VerificaAvaliacaoExistenteParaTurma(tur_idDestino, cur_idAvaliacao, crr_idAvaliacao, crp_idAvaliacao, tca_numeroAvaliacao).Rows.Count > 0);
        }

        /// <summary>
        /// Retorna a �ltima avalia��o da turma curr�culo.
        /// </summary>
        /// <param name="tur_id">Id da turma</param>
        /// <param name="cur_id">Id do curso</param>
        /// <param name="crr_id">Id do curriculo</param>
        /// <param name="crp_id">Id do curr�culo per�odo</param>
        /// <param name="bancoGestao">Transa��o com banco Gest�o - obrigat�rio</param>
        /// <returns></returns>
        public static TUR_TurmaCurriculoAvaliacao SelecionaUltimaAvaliacaoPorTurmaCurriculo
        (
            long tur_id
            , int cur_id
            , int crr_id
            , int crp_id
            , TalkDBTransaction bancoGestao
        )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO { _Banco = bancoGestao };
            return dao.SelectBy_UltimaAvaliacaoTurmaCurriculo(tur_id, cur_id, crr_id, crp_id);
        }

        /// <summary>
        /// Retorna a primeira avalia��o da turma curr�culo.
        /// </summary>
        /// <param name="tur_id">Id da turma</param>
        /// <param name="cur_id">Id do curso</param>
        /// <param name="crr_id">Id do curriculo</param>
        /// <param name="crp_id">Id do curr�culo per�odo</param>        
        /// <returns></returns>
        public static TUR_TurmaCurriculoAvaliacao SelecionaPrimeiraAvaliacaoPorTurmaCurriculo
        (
            long tur_id
            , int cur_id
            , int crr_id
            , int crp_id            
        )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            return dao.SelectBy_PrimeiraAvaliacaoTurmaCurriculo(tur_id, cur_id, crr_id, crp_id);
        }

	    /// <summary>
	    /// Retorna a turma avalia��o em que o aluno est� ativo.
	    /// </summary>	    
	    /// <param name="alu_id"></param>
	    /// <param name="cur_id"></param>
	    /// <param name="crr_id"></param>
	    /// <param name="crp_id"></param>
	    /// <returns></returns>
	    public static TUR_TurmaCurriculoAvaliacao SelecionaAvaliacaoAtualAluno(long alu_id, int cur_id, int crr_id, int crp_id)
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            return dao.SelectBy_AvaliacaoAtualAluno(alu_id, cur_id, crr_id, crp_id);
        }

        /// <summary>
        /// Retorna as avalia��es da turma 
        /// </summary>
        /// <param name="tur_id">Id da turma</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<TUR_TurmaCurriculoAvaliacao> SelecionaAvaliacaoPorTurma
        (
            long tur_id
        )
        {
            List<TUR_TurmaCurriculoAvaliacao> lista = new List<TUR_TurmaCurriculoAvaliacao>();

            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            DataTable dt = dao.SelectBy_Turma(tur_id);

            foreach (DataRow dr in dt.Rows)
            {
                TUR_TurmaCurriculoAvaliacao entity = new TUR_TurmaCurriculoAvaliacao();
                entity = dao.DataRowToEntity(dr, entity);

                lista.Add(entity);
            }

            return lista;
        }

        /// <summary>
        /// Retorna as avalia��es da turma.
        /// </summary>
        /// <param name="tur_id">Id da turma.</param>
        /// <param name="banco">Transa��o com banco.</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static List<TUR_TurmaCurriculoAvaliacao> SelecionaAvaliacaoPorTurma
        (
            long tur_id
            , TalkDBTransaction banco
        )
        {
            List<TUR_TurmaCurriculoAvaliacao> lista = new List<TUR_TurmaCurriculoAvaliacao>();

            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO 
                { 
                    _Banco = banco 
                };

            DataTable dt = dao.SelectBy_Turma(tur_id);

            foreach (DataRow dr in dt.Rows)
            {
                TUR_TurmaCurriculoAvaliacao entity = new TUR_TurmaCurriculoAvaliacao();
                entity = dao.DataRowToEntity(dr, entity);

                lista.Add(entity);
            }

            return lista;
        }

        /// <summary>
        /// Retorna o tca_id da avalia��o
        /// </summary>
        /// <param name="tur_id">Id da turma</param>
        /// <param name="cur_id">Id do curso</param>
        /// <param name="crr_id">Id do curr�culo</param>
        /// <param name="crp_id">Id do per�odo do curr�culo</param>
        /// <param name="tca_numeroAvaliacao">N�mero da avalia��o</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static int SelecionaAvaliacaoPorNumeroAvaliacao
        (
            long tur_id
            , int cur_id
            , int crr_id
            , int crp_id
            , int tca_numeroAvaliacao
        )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO();
            return dao.SelectBy_NumeroAvaliacao(tur_id, cur_id, crr_id, crp_id, tca_numeroAvaliacao);
        }

        /// <summary>
        /// Retorna os tca_ids das turmas informadas.
        /// </summary>
        /// <param name="tur_id">IDs das turmas</param>
        /// <param name="banco">Transa��o com banco</param>
        /// <returns></returns>
        public static List<TUR_TurmaCurriculoAvaliacao> SelecionaAvaliacaoPorTurmas
        (
            string tur_id
            , TalkDBTransaction banco
        )
        {
            TUR_TurmaCurriculoAvaliacaoDAO dao = new TUR_TurmaCurriculoAvaliacaoDAO { _Banco = banco };
            DataTable dt = dao.SelectBy_Turmas(tur_id);

            return (from DataRow dr in dt.Rows
                    select dao.DataRowToEntity(dr, new TUR_TurmaCurriculoAvaliacao())).ToList();
        }

        /// <summary>
        /// Salva avalia��es da turma.
        /// </summary>
        /// <param name="entTurma">Turma</param>
        /// <param name="listaAvaliacao">Lista com avalia��es</param>
        /// <param name="banco">Controle de transa��o</param>
        /// <returns>True: sucesso || False: falha</returns>
	    public static bool SalvarAvaliacaoTurma
        (
            TUR_Turma entTurma
            , List<TUR_TurmaCurriculoAvaliacao> listaAvaliacao
            , TalkDBTransaction banco
        )
		{
            if (listaAvaliacao.Count == 0)            
                throw new ValidationException("� necess�rio informar ao menos uma avalia��o para a turma.");

            // Verifica se foram selecionadas avalia��es consecutivas
		    int aux = 0;
            foreach (TUR_TurmaCurriculoAvaliacao entity in listaAvaliacao)
            {
                if (aux != 0)
                {
                    if (aux + 1 != entity.tca_numeroAvaliacao)
                        throw new ValidationException("Devem ser selecionados uma ou mais avalia��es consecutivas.");
                }

                aux = entity.tca_numeroAvaliacao;
            }

            List<TUR_TurmaCurriculoAvaliacao> listaCadastrados = SelecionaAvaliacaoPorTurma(entTurma.tur_id, banco);

		    foreach (TUR_TurmaCurriculoAvaliacao entity in listaAvaliacao)
            {
                entity.tur_id = entTurma.tur_id;

                TUR_TurmaCurriculoAvaliacao entAux = new TUR_TurmaCurriculoAvaliacao
                {
                    tur_id = entity.tur_id
                    ,
                    cur_id = entity.cur_id
                    ,
                    crr_id = entity.crr_id
                    ,
                    crp_id = entity.crp_id
                    ,
                    tca_id = entity.tca_id
                };
                GetEntity(entAux, banco);

                entity.IsNew = entAux.IsNew;               

                if (!entity.Validate())                
                    throw new ValidationException(UtilBO.ErrosValidacao(entity));                

                // Salvar a avalia��o.
                Save(entity, banco);
            }
            // Impede altera��o da(s) avalia��o(�es) cadastradas
            if (listaCadastrados.Any(cadastrada => !listaAvaliacao.Exists
                                                        (p =>
                                                         ((p.tur_id == cadastrada.tur_id) &&
                                                          (p.cur_id == cadastrada.cur_id) &&
                                                          (p.crr_id == cadastrada.crr_id) &&
                                                          (p.crp_id == cadastrada.crp_id) &&
                                                          (p.tca_id == cadastrada.tca_id)))))
            {
                throw new ValidationException("N�o � permitido alterar a avalia��o para essa turma.");
            }
            return true;
		}	
	}
}