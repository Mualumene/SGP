/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using MSTech.Business.Common;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
    #region Enumerador

    /// <summary>
    /// Enumerador da situa��o do registro.
    /// </summary>
    public enum ORC_ConteudoItemSituacao : byte
    {
        Ativo = 1
        , Exclu�do = 3
    }

    #endregion

	/// <summary>
	/// ORC_ConteudoItem Business Object 
	/// </summary>
	public class ORC_ConteudoItemBO : BusinessBase<ORC_ConteudoItemDAO,ORC_ConteudoItem>
	{
        /// <summary>
        /// Retorna os itens de conte�do cadastrados para o conte�do.
        /// </summary>
        /// <param name="obj_id">ID do objetivo</param>
        /// <param name="ctd_id">ID do conte�do</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaPor_Conteudo
        (
            int obj_id
            , int ctd_id
        )
        {
            ORC_ConteudoItemDAO dao = new ORC_ConteudoItemDAO();
            DataTable dt = dao.SelectBy_Conteudo(obj_id, ctd_id);

            if (obj_id <= 0)
            {
                // Adiciona uma linha nova, para retornar uma linha para edi��o na tela.
                DataRow dr = dt.NewRow();
                dr["obj_id"] = -1;
                dr["ctd_id"] = -1;
                dr["cti_id"] = -1;
                dt.Rows.Add(dr);
            }

            return dt;
        }	

        /// <summary>
        /// Retorna os itens do conte�do do objetivo
        /// </summary>                
        /// <param name="obj_id">ID do objetivo</param>
        /// <param name="tud_id">ID da disciplina da turma</param>
        /// <param name="naoAlcancadasAnoAnterior">Indica se vai trazer os dados do ano atual ou do anterior</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaConteudoItemPorObjetivo
        (            
            int obj_id
            , long tud_id
            , bool naoAlcancadasAnoAnterior
        )
        {
            ORC_ConteudoItemDAO dao = new ORC_ConteudoItemDAO();
            return dao.SelectBy_obj_id(obj_id, tud_id, naoAlcancadasAnoAnterior);
        }

        /// <summary>
        /// Verifica se j� existe um conte�do cadastrado com o mesmo nome
        /// no mesmo objetivo e com cti_id diferente do passado.
        /// </summary>
        /// <param name="obj_id">Id do objetivo.</param>
        /// <param name="cti_id">Id do cont�udo item.</param>
        /// <param name="cti_descricao">Descri��o do conte�do.</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool VerificaConteudoItemPorNome_Objetivo
        (
            int obj_id
            , int cti_id
            , string cti_descricao
        )
        {
            ORC_ConteudoItemDAO dao = new ORC_ConteudoItemDAO();
            return dao.SelectBy_Nome(obj_id, cti_id, cti_descricao);
        }

        /// <summary>
        /// Retorna os itens do conte�dos dos objetivos da turma disciplina e curr�culo per�odo
        /// </summary>
        /// <param name="tud_id">ID da turma disciplina</param>
        /// <param name="cur_idAtual">ID do curso</param>
        /// <param name="crr_idAtual">ID do curriculo</param>
        /// <param name="crp_idAtual">ID do curr�culo per�odo atual</param>
        /// <param name="crp_idAnterior">ID do curr�culo per�odo anterior</param>
        /// <param name="tdt_posicao">Posi��o do docente respons�vel</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaPorTurmaDisciplinaCurriculoPeriodo
        (
            long tud_id
            , int cur_idAtual
            , int crr_idAtual
            , int crp_idAtual
            , int crp_idAnterior
            , byte tdt_posicao
        )
        {
            ORC_ConteudoItemDAO dao = new ORC_ConteudoItemDAO();
            return dao.SelecionaPorTurmaDisciplinaCurriculoPeriodo(tud_id, cur_idAtual, crr_idAtual, crp_idAtual, crp_idAnterior, tdt_posicao);
        }

        #region Salvar

        /// <summary>
        /// Salva os registros de itens para o conte�do.
        /// </summary>
        /// <param name="entConteudo">Entidade conte�do</param>
        /// <param name="list">Lista de itens para salvar</param>
        /// <param name="banco">Transa��o com banco - obrigat�rio</param>
        internal static void SalvarItensConteudo(ORC_Conteudo entConteudo, List<ORC_ConteudoItem> list, TalkDBTransaction banco)
        {
            foreach (ORC_ConteudoItem entity in list)
            {
                entity.obj_id = entConteudo.obj_id;
                entity.ctd_id = entConteudo.ctd_id;
                entity.IsNew = entity.cti_id <= 0;

                if (!string.IsNullOrEmpty(entity.cti_descricao))
                {
                    if (!entity.Validate())
                        throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));

                    // Verifica se j� existe um conte�do item com a mesma descri��o no mesmo objetivo.
                    if (VerificaConteudoItemPorNome_Objetivo(entity.obj_id, entity.cti_id, entity.cti_descricao))
                        throw new ValidationException("J� existe um conte�do cadastrado com a descri��o " + entity.cti_descricao + " no objetivo.");

                    Save(entity, banco);
                }
                else
                {
                    if (entity.cti_id > 0)
                    {
                        Delete(entity, banco);
                    }
                }
            }
        }
        
        #endregion
    }
}