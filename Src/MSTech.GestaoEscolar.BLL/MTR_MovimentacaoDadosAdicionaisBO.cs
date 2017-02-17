/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.ComponentModel;
using System.Data;
using MSTech.Business.Common;
using MSTech.CoreSSO.DAL;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using MSTech.Validation.Exceptions;

namespace MSTech.GestaoEscolar.BLL
{
	/// <summary>
	/// MTR_MovimentacaoDadosAdicionais Business Object 
	/// </summary>
	public class MTR_MovimentacaoDadosAdicionaisBO : BusinessBase<MTR_MovimentacaoDadosAdicionaisDAO,MTR_MovimentacaoDadosAdicionais>
	{
	    /// <summary>
	    /// Retorna os dados adicionais da movimenta��o de uma movimenta��o de um aluno
	    /// </summary>
	    /// <param name="alu_id">ID do aluno</param>
	    /// <param name="mov_id">ID da movimenta��o</param>
	    /// <param name="banco">Conex�o aberta com o banco de dados</param>
	    /// <returns></returns>
	    public static MTR_MovimentacaoDadosAdicionais GetEntityBy_MovimentacaoAluno
        (
            long alu_id
            , int mov_id
            , TalkDBTransaction banco
        )
        {
            MTR_MovimentacaoDadosAdicionaisDAO dao = new MTR_MovimentacaoDadosAdicionaisDAO { _Banco = banco };
            DataTable dt = dao.SelectBy_MovimentacaoAluno(alu_id, mov_id);

            MTR_MovimentacaoDadosAdicionais entity = new MTR_MovimentacaoDadosAdicionais();

            if (dt.Rows.Count > 0)
            {
                entity = dao.DataRowToEntity(dt.Rows[0], entity);
            }

            return entity;
        }

        /// <summary>
        /// Salva ou altera uma movimenta��o
        /// </summary>
        /// <param name="entity">Entidade MTR_MovimentacaoDadosAdicionais</param>
        /// <param name="bancoCore">Conex�o aberta com o banco de dados do CoreSSO</param>
        /// <param name="bancoGestao">Conex�o aberta co o banco de dados do GestaoEscolar</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public static bool Save
        (
            MTR_MovimentacaoDadosAdicionais entity
            , TalkDBTransaction bancoCore
            , TalkDBTransaction bancoGestao
        )
        {
            MTR_MovimentacaoDadosAdicionaisDAO daoMda = new MTR_MovimentacaoDadosAdicionaisDAO();
            END_CidadeDAO daoCid = new END_CidadeDAO();

            // Verifica se foi passado uma conex�o aberta com o banco de dados
            if (bancoGestao == null)
            {
                daoMda._Banco.Open(IsolationLevel.ReadCommitted);
                daoCid._Banco.Open(IsolationLevel.ReadCommitted);
            }
            else
            {
                daoMda._Banco = bancoGestao;
                daoCid._Banco = bancoCore;
            }

            try
            {
                // Valida a entidade de dados adicionais da movimenta��o
                if (entity.Validate())
                {
                    // Salva os dados adicionais da movimenta��o
                    daoMda.Salvar(entity);

                    if (entity.IsNew)
                    {
                        // Incrementa a integridade da cidade se necess�rio
                        if (entity.cid_id != Guid.Empty)
                        {
                            daoCid.Update_IncrementaIntegridade(entity.cid_id);
                        }

                        // Incrementa a integridade da unidade federativa se necess�rio
                        if (entity.unf_id != Guid.Empty)
                        {
                            END_UnidadeFederativaDAO daoUnf = new END_UnidadeFederativaDAO {_Banco = daoCid._Banco};
                            daoUnf.Update_IncrementaIntegridade(entity.unf_id);
                        }
                    }
                    else
                    {
                        if (entity.cid_idAnterior != entity.cid_id)
                        {
                            //Decrementa um na integridade da cidade anterior (se existia)
                            if (entity.cid_idAnterior != Guid.Empty)
                                daoCid.Update_DecrementaIntegridade(entity.cid_idAnterior);

                            //Incrementa um na integridade da cidade atual (se existir)
                            if (entity.cid_id != Guid.Empty)
                                daoCid.Update_IncrementaIntegridade(entity.cid_id);
                        }

                        if (entity.unf_idAnterior != entity.unf_id)
                        {
                            //Decrementa um na integridade da unidade federativa anterior (se existia)
                            if (entity.unf_idAnterior != Guid.Empty)
                            {
                                END_UnidadeFederativaDAO daoUnf = new END_UnidadeFederativaDAO { _Banco = daoCid._Banco };
                                daoUnf.Update_DecrementaIntegridade(entity.unf_idAnterior);
                            }                                

                            //Incrementa um na integridade da unidade federativa atual (se existir)
                            if (entity.unf_id != Guid.Empty)
                            {
                                END_UnidadeFederativaDAO daoUnf = new END_UnidadeFederativaDAO { _Banco = daoCid._Banco };
                                daoUnf.Update_IncrementaIntegridade(entity.unf_id);
                            }
                        }
                    }

                    return true;
                }
                else
                {
                    throw new ValidationException(GestaoEscolarUtilBO.ErrosValidacao(entity));
                }
            }
            catch (Exception err)
            {
                if (bancoGestao == null)
                {
                    daoMda._Banco.Close(err);
                    daoCid._Banco.Close(err);
                }

                throw;
            }
            finally
            {
                if (bancoGestao == null)
                {
                    daoMda._Banco.Close();
                    daoCid._Banco.Close();
                }
            }
        }				
	}
}