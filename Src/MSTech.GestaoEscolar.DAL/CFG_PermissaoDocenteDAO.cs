/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.DAL
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using MSTech.Data.Common;
    using MSTech.GestaoEscolar.DAL.Abstracts;
    using MSTech.GestaoEscolar.Entities;
    using System.Linq;
	
	/// <summary>
	/// Description: .
	/// </summary>
	public class CFG_PermissaoDocenteDAO : Abstract_CFG_PermissaoDocenteDAO
    {
        #region M�todos

        /// <summary>
        /// O m�todo retorna as permiss�es para o docente no m�dulo passado por par�metro.
        /// </summary>
        /// <param name="tdt_posicao">Posi��o do docente.</param>
        /// <param name="pdc_modulo">M�dulo do sistema.</param>
        /// <returns></returns>
        public DataTable SelecionaPermissaoModulo(byte tdt_posicao, byte pdc_modulo)
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CFG_PermissaoDocente_SelecionaPermissaoModulo", _Banco);

            try
            {
                #region Par�metros

                Param = qs.NewParameter();
                Param.DbType = DbType.Byte;
                Param.ParameterName = "@tdt_posicao";
                Param.Size = 1;
                Param.Value = tdt_posicao;
                qs.Parameters.Add(Param);

                Param = qs.NewParameter();
                Param.DbType = DbType.Byte;
                Param.ParameterName = "@pdc_modulo";
                Param.Size = 1;
                Param.Value = pdc_modulo;
                qs.Parameters.Add(Param);

                #endregion

                qs.Execute();

                return qs.Return;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        /// <summary>
        /// Retorna as permiss�es de cada tipo de docente de cada m�dulo.
        /// </summary>
        /// <returns>Lista de permiss�es por m�dulo</returns>
        public List<CFG_PermissaoDocente> SelecionarPermissaoModulo()
        {
            QuerySelectStoredProcedure qs = new QuerySelectStoredProcedure("NEW_CFG_PermissaoDocente_SelecionarPermissoesModulo", _Banco);
            List<CFG_PermissaoDocente> lstPerm = new List<CFG_PermissaoDocente>();

            try
            {
                qs.Execute();

                if (qs.Return.Rows.Count > 0)
                {
                    lstPerm.AddRange(from DataRow row in qs.Return.Rows select DataRowToEntity(row, new CFG_PermissaoDocente()));
                }

                return lstPerm;
            }
            finally
            {
                qs.Parameters.Clear();
            }
        }

        #endregion

        #region M�todos sobrescritos

        protected override void ParamInserir(QuerySelectStoredProcedure qs, CFG_PermissaoDocente entity)
        {
            entity.pdc_dataCriacao = entity.pdc_dataAlteracao = DateTime.Now;
            base.ParamInserir(qs, entity);
        }

        protected override void ParamAlterar(QueryStoredProcedure qs, CFG_PermissaoDocente entity)
        {
            entity.pdc_dataAlteracao = DateTime.Now;
            base.ParamAlterar(qs, entity);
            qs.Parameters.RemoveAt("@pdc_dataCriacao");
        }

        protected override bool Alterar(CFG_PermissaoDocente entity)
        {
            __STP_UPDATE = "NEW_CFG_PermissaoDocente_UPDATE";
            return base.Alterar(entity);
        }

        protected override void ParamDeletar(QueryStoredProcedure qs, CFG_PermissaoDocente entity)
        {
            base.ParamDeletar(qs, entity);

            Param = qs.NewParameter();
            Param.DbType = DbType.Byte;
            Param.ParameterName = "@pdc_situacao";
            Param.Size = 1;
            Param.Value = 3;
            qs.Parameters.Add(Param);

            Param = qs.NewParameter();
            Param.DbType = DbType.DateTime;
            Param.ParameterName = "@pdc_dataAlteracao";
            Param.Size = 16;
            Param.Value = DateTime.Now;
            qs.Parameters.Add(Param);
        }

        public override bool Delete(CFG_PermissaoDocente entity)
        {
            __STP_DELETE = "NEW_CFG_PermissaoDocente_UpdateSituacao";
            return base.Delete(entity);
        }

        #endregion
    }
}