/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using MSTech.Business.Common;
using MSTech.GestaoEscolar.Entities;
using MSTech.GestaoEscolar.DAL;
using System.Data;
using MSTech.Validation.Exceptions;
using System.Collections.Generic;
using System;
using System.ComponentModel;
using MSTech.Data.Common;
using System.Web;
using System.Linq;
using System.Threading;

namespace MSTech.GestaoEscolar.BLL
{
    #region Enumeradores

    /// <summary>
    /// Enum com as situa��es do par�metro.
    /// </summary>
    public enum eSituacao
    {
        Ativo = 1
        ,
        Interno = 4
    }

    /// <summary>
    /// Enum com as chaves dos par�metros.
    /// </summary>
    public enum eChaveIntegracao
    {
        HABILITA_INTEG_COLAB_DOCENTES
        ,
        MSG_AVISO_DOCENTES
        ,
        MSG_ATUALIZACAO_DADOS
        ,
        DATA_HORA_ATUALIZACAO_DADOS_MAGISTER
    }

    #endregion

    public class ACA_ParametroIntegracaoBO : BusinessBase<ACA_ParametroIntegracaoDAO, ACA_ParametroIntegracao>
    {
        #region Propriedades

        private static IDictionary<string, string[]> parametros;

        /// <summary>
        /// Retorna os par�metros de integra��o do sistema.
        /// </summary>
        private static IDictionary<string, string[]> Parametros
        {
            get
            {
                if ((parametros == null) || (parametros.Count == 0))
                {
                    // O objeto n�o pode estar nulo quando lock.
                    parametros = new Dictionary<string, string[]>();
                    lock (parametros)
                    {
                        SelecionaParametrosAtivos(out parametros);
                    }
                }
                return parametros;
            }
        }

        #endregion

        #region M�todos

        /// <summary>
        /// Seleciona o valor de um par�metro filtrado por pri_chave.
        /// </summary>
        /// <param name="pri_chave">Enum que representa a chave a ser pesquisada.</param>        
        /// <returns>O valor do par�metro (pri_valor).</returns>
        public static string ParametroValor
        (
            eChaveIntegracao pri_chave
        )
        {
            string valor = string.Empty;
            if (Parametros.ContainsKey(Enum.GetName(typeof(eChaveIntegracao), pri_chave)))
                valor = Parametros[Enum.GetName(typeof(eChaveIntegracao), pri_chave)].FirstOrDefault();

            return valor;
        }

        /// <summary>
        /// Verifica se existe um par�metro de integra��o que possua a mesma chave.
        /// </summary>
        /// <param name="entity">Entidade ACA_ParametroIntegracao</param>
        /// <returns></returns>
        public static bool VerificarChaveExistente(ACA_ParametroIntegracao entity)
        {
            ACA_ParametroIntegracaoDAO dao = new ACA_ParametroIntegracaoDAO();
            return dao.SelecionaPorChave(entity);
        }

        /// <summary>
        /// Salva (inclus�o ou altera��o) um par�metro de integra��o.
        /// </summary>
        /// <param name="entity">Entidade ACA_ParametroIntegracao</param>
        /// <returns></returns>
        public static bool Salvar(ACA_ParametroIntegracao entity)
        {
            ACA_ParametroIntegracaoDAO dao = new ACA_ParametroIntegracaoDAO();

            // Verifica chave do par�metro de integra��o
            if (VerificarChaveExistente(entity))
                throw new DuplicateNameException("J� existe um par�metro de integra��o cadastrado com esta chave.");

            if (entity.Validate())
                return dao.Salvar(entity);
            else
                throw new ValidationException(MSTech.CoreSSO.BLL.UtilBO.ErrosValidacao(entity));
        }

        /// <summary>
        /// Retorna os par�metros de integra��o ativos.
        /// </summary>
        /// <returns>Lista de entidades ACA_ParametroIntegracao.</returns>
        public static List<ACA_ParametroIntegracao> Consultar()
        {
            ACA_ParametroIntegracaoDAO dao = new ACA_ParametroIntegracaoDAO();
            return dao.SelecionaTodosAtivos();
        }

        /// <summary>
        /// Retorna os par�metros de integra��o ativos.
        /// </summary>
        private static void SelecionaParametrosAtivos(out IDictionary<string, string[]> dictionary)
        {
            List<ACA_ParametroIntegracao> lt = Consultar();

            dictionary = (from ACA_ParametroIntegracao pri in lt
                          group pri by pri.pri_chave into t
                          select new
                          {
                              chave = t.Key
                              ,
                              valor = t.Select(p => p.pri_valor).ToArray<string>()
                          }).ToDictionary(p => p.chave, p => p.valor);
        }

        /// <summary>
        /// Recarrega os par�metros de integra��o do sistema.
        /// </summary>
        public static void RecarregaParametrosAtivos()
        {
            parametros = new Dictionary<string, string[]>();
            lock (parametros)
            {
                SelecionaParametrosAtivos(out parametros);
            }
        }

        #endregion
    }
}