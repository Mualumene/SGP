/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using MSTech.GestaoEscolar.DAL.Abstracts;
using MSTech.Data.Common;
using MSTech.GestaoEscolar.Entities;

namespace MSTech.GestaoEscolar.DAL
{
	/// <summary>
	/// Description: .
	/// </summary>
	public class ESC_PredioCaracteristicasDAO : AbstractESC_PredioCaracteristicasDAO
	{
		/// <summary>
		/// Par�metros para efetuar a inclus�o preservando a data de cria��o
		/// </summary>
		/// <param name="qs"></param>
		/// <param name="entity"></param>
		protected override void ParamInserir(QuerySelectStoredProcedure qs, ESC_PredioCaracteristicas entity)
		{
			base.ParamInserir(qs, entity);

			qs.Parameters["@prc_dataCriacao"].Value = DateTime.Now;
			qs.Parameters["@prc_dataAlteracao"].Value = DateTime.Now;
		}

		/// <summary>
		/// Par�metros para efetuar a altera��o preservando a data de cria��o
		/// </summary>
		protected override void ParamAlterar(QueryStoredProcedure qs, ESC_PredioCaracteristicas entity)
		{
			base.ParamAlterar(qs, entity);

			qs.Parameters.RemoveAt("@prc_dataCriacao");
			qs.Parameters["@prc_dataAlteracao"].Value = DateTime.Now;
		}

		/// <summary>
		/// Inseri os valores da classe em um registro ja existente
		/// </summary>
		/// <param name="entity">Entidade com os dados a serem modificados</param>
		protected override bool Alterar(ESC_PredioCaracteristicas entity)
		{
			__STP_UPDATE = "NEW_ESC_PredioCaracteristicas_UPDATE";
			return base.Alterar(entity);
		}
	}
}