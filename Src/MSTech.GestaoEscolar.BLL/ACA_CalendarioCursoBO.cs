/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Web;
using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
	
	/// <summary>
	/// ACA_CalendarioCurso Business Object 
	/// </summary>
	public class ACA_CalendarioCursoBO : BusinessBase<ACA_CalendarioCursoDAO,ACA_CalendarioCurso>
	{
        /// <summary>
        /// Retorna os cursos que est�o associados com o calend�rio informado        
        /// </summary>
        /// <returns></returns>
        /// <param name="cal_id">ID do calend�rio escolar</param>
        /// <param name="ent_id">Entidade do usu�rio logado</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaCursosAssociados
        (
           int cal_id
            , Guid ent_id
        )
        {
            ACA_CalendarioCursoDAO dao = new ACA_CalendarioCursoDAO();
            return dao.SelectBy_CursosAssociados(cal_id, ent_id);
        }

        /// <summary>
        /// Retorna os cursos que n�o est�o associados com o calend�rio informado        
        /// </summary>
        /// <returns></returns>
        /// <param name="cal_id">ID do calend�rio escolar</param>
        /// <param name="ent_id">Entidade do usu�rio logado</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionaCursosNaoAssociados
        (
           int cal_id
            , Guid ent_id
        )
        {
            ACA_CalendarioCursoDAO dao = new ACA_CalendarioCursoDAO();
            return dao.SelectBy_CursosNaoAssociados(cal_id, ent_id);
        }

        /// <summary>
        /// Verifica se calend�rio e o curso est� sendo utilizado na turma
        /// </summary>
        /// <param name="cal_id">ID do calend�rio</param>        
        /// <param name="cur_id">ID do curso</param>     
        /// <param name="ent_id">ID da entidade do usu�rio logado</param>             
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool VerificaTurmaExistente
        (
            int cal_id            
            , int cur_id
            , Guid ent_id
        )
        {
            ACA_CalendarioCursoDAO dao = new ACA_CalendarioCursoDAO();
            return dao.SelectBy_VerificaTurma(cal_id, cur_id, ent_id);
        }

        /// <summary>
        /// Inclui ou altera os cursos associados com o calend�rio escolar
        /// </summary>        
        /// <param name="entity">Entidade ACA_CalendarioCurso</param>
        /// <param name="banco">Conex�o aberta com o banco de dados</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public new static bool Save
        (            
            ACA_CalendarioCurso entity
            , Data.Common.TalkDBTransaction banco
        )
        {
            if (entity.Validate())
            {
                ACA_CalendarioCursoDAO dao = new ACA_CalendarioCursoDAO {_Banco = banco};
                dao.Salvar(entity);

                return true;
            }

            throw new ValidationException(entity.PropertiesErrorList[0].Message);
        }

	    /// <summary>
        /// Deleta os cursos que est�o associados com o calend�rio informado        
        /// </summary>
        /// <param name="cal_id">ID do calend�rio</param>  
        /// <param name="ltCalendarioCurso">Lista de entidade ACA_CalendarioCurso</param>  
        /// <param name="ent_id">ID da entidade do usu�rio logado</param>  
        /// <param name="banco">Conex�o aberta com o banco de dados</param>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool DeletarPorCalendario
        (     
            int cal_id
            , Guid ent_id
            , List<ACA_CalendarioCurso> ltCalendarioCurso
            , Data.Common.TalkDBTransaction banco
        )
        {
	        DataTable dt = SelecionaCursosAssociados(cal_id, ent_id);
            for (int i = 0; i < dt.Rows.Count; i++ )
            {                
                int cur_id = Convert.ToInt32(dt.Rows[i]["cur_id"].ToString());

                // Exclui cache de calend�rio guardado para o curso.
                if (HttpContext.Current != null)
                {
                    string chave = string.Format("CalendarioAnual_{0}",cur_id);
                    HttpContext.Current.Cache.Remove(chave);
                }

                if (!ltCalendarioCurso.Exists(p => p.cur_id == cur_id))
                {
                    if (VerificaTurmaExistente(cal_id, cur_id, ent_id))
                    {
                        ACA_Curso entityCurso = new ACA_Curso { cur_id = cur_id };
                        ACA_CursoBO.GetEntity(entityCurso, banco);

                        throw new ValidationException("N�o � poss�vel excluir o(a) " + GestaoEscolarUtilBO.nomePadraoCurso(ent_id) + " " + entityCurso.cur_nome + " pois possui outros registros ligados a ele(a).");
                    }
                }
            }

            ACA_CalendarioCursoDAO dao = new ACA_CalendarioCursoDAO {_Banco = banco};
	        dao.DeleteBy_Calendario(cal_id);

	        return true;
        }
	}
}