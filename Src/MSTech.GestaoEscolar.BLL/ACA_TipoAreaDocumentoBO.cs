/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using System;
    using System.ComponentModel;
    using System.Data;
    using MSTech.Business.Common;
    using MSTech.Data.Common;
    using MSTech.GestaoEscolar.DAL;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.Validation.Exceptions;

    /// <summary>
    /// Description: ACA_TipoAreaDocumento Business Object. 
    /// </summary>
    public class ACA_TipoAreaDocumentoBO : BusinessBase<ACA_TipoAreaDocumentoDAO, ACA_TipoAreaDocumento>
    {
        #region Consultas

        /// <summary>
        /// Retorna os tipos de area documento ativos
        /// </summary>
        /// <returns>Lista com os tipos</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionarAtivos()
        {
            ACA_TipoAreaDocumentoDAO dao = new ACA_TipoAreaDocumentoDAO();
            return dao.SelecionarAreaDocumento(out totalRecords);
        }

        /// <summary>
        /// Retorna se a area permite cadastro pela escola
        /// </summary>
        /// <returns>Boolean</returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool GetCadastroEscolaBy_tad_id(int tad_id)
        {
            ACA_TipoAreaDocumentoDAO dao = new ACA_TipoAreaDocumentoDAO();
            return dao.GetCadastroEscolaBy_tad_id(tad_id);
        }

        /// <summary>
        /// Retorna os tipos de �rea documento ativos por permiss�o de usu�rio.
        /// </summary>
        /// <param name="admin">Indica se � um usu�rio administrador.</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static DataTable SelecionarAtivosPermissao(bool admin)
        {
            return new ACA_TipoAreaDocumentoDAO().SelecionarAreaDocumentoPermissao(admin, out totalRecords);
        }

        #endregion Consultas

        #region Salvar

        /// <summary>
        /// Salva uma entidade ACA_TipoAreaDocumento.
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="banco"></param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public static new bool Save(ACA_TipoAreaDocumento entity, TalkDBTransaction banco)
        {
            if (entity.Validate())
            {
                return new ACA_TipoAreaDocumentoDAO { _Banco = banco }.Salvar(entity);
            }

            throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));
        }

        /// <summary>
        /// Altera a ordem do campo ordem na tabela
        /// </summary>
        /// <param name="entitySubir">Entidade do tipo de �rea</param>
        /// <param name="entityDescer">Entidade do tipo de �rea</param>        
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public static bool SaveOrdem
        (
            ACA_TipoAreaDocumento entityDescer
            , ACA_TipoAreaDocumento entitySubir
        )
        {
            TalkDBTransaction banco = new ACA_TipoAreaDocumentoDAO()._Banco.CopyThisInstance();
            banco.Open(IsolationLevel.ReadCommitted);

            try
            {
                return Save(entityDescer, banco) && Save(entitySubir, banco);
            }
            catch (Exception ex)
            {
                banco.Close(ex);
                throw;
            }
            finally
            {
                if (banco.ConnectionIsOpen)
                {
                    banco.Close();
                }
            }
        }

        /// <summary>
        /// Inclui ou altera o tipo de �rea documento 
        /// </summary>
        /// <param name="entity">Entidade ACA_TipoAreaDocumento</param>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public static bool SalvarArea
        (
            ACA_TipoAreaDocumento entity
        )
        {
            TalkDBTransaction banco = new ACA_TipoAreaDocumentoDAO()._Banco.CopyThisInstance();
            banco.Open(IsolationLevel.ReadCommitted);

            try
            {
                if (entity.IsNew)
                    entity.tad_ordem = Convert.ToByte(SelecionaMaiorOrdem(banco) + 1);

                if (VerificaTipoAreaDocumentoExistente(entity.tad_id, entity.tad_nome, banco))
                {
                    throw new DuplicateNameException("J� existe um tipo de �rea cadastrado com este nome.");
                }

                return Save(entity, banco);
            }
            catch (Exception ex)
            {
                banco.Close(ex);
                throw;
            }
            finally
            {
                if (banco.ConnectionIsOpen)
                {
                    banco.Close();
                }
            }
        }

        /// <summary>
        /// Verifica o maior n�mero de ordem cadastado de tipo de �rea.
        /// </summary>  
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static byte SelecionaMaiorOrdem(TalkDBTransaction banco = null)
        {
            ACA_TipoAreaDocumentoDAO dao = banco == null ? new ACA_TipoAreaDocumentoDAO() : new ACA_TipoAreaDocumentoDAO { _Banco = banco };
            return dao.Select_MaiorOrdem();
        }

        #endregion Salvar

        #region Valida��o

        /// <summary>
        /// Verifica integridade antes de excluir logicamente o registro
        /// </summary>
        /// <param name="campo1">Campo a ser validado</param>
        /// <param name="valorCampo1">Valor do campo</param>
        /// <param name="tabelasNaoVerificar">Tabela que n�o deve ser verificada</param>
        /// <returns>True - Possui vinculo | False - N�o</returns>
        public static bool VerificarIntegridade(string campo1, string valorCampo1, string tabelasNaoVerificar)
        {
            var dao = new ACA_TipoAreaDocumentoDAO();
            return dao.Select_VerificarIntegridade(campo1, valorCampo1, tabelasNaoVerificar);
        }

        /// <summary>
        /// Verifica se j� existe um tipo de �rea cadastrado com o mesmo nome
        /// </summary>
        /// <param name="tad_id">ID do tipo de �rea documento</param> 
        /// <param name="tad_nome">Nome do tipo de �rea documento</param> 
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool VerificaTipoAreaDocumentoExistente
        (
            int tad_id
            , string tad_nome
            , TalkDBTransaction banco = null
        )
        {
            ACA_TipoAreaDocumentoDAO dao = banco == null ? new ACA_TipoAreaDocumentoDAO() : new ACA_TipoAreaDocumentoDAO { _Banco = banco };
            return dao.SelecionaNomeExistente(tad_id, tad_nome);
        }

        #endregion Valida��o
    }
}