/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.BLL
{
    using MSTech.Business.Common;
    using MSTech.GestaoEscolar.Entities;
    using MSTech.GestaoEscolar.DAL;
    using System.Collections.Generic;
    using System;
    using Data.Common;
    using System.Data;
    using System.Linq;

    /// <summary>
    /// Description: CLS_TurmaAulaTerritorio Business Object. 
    /// </summary>
    public class CLS_TurmaAulaTerritorioBO : BusinessBase<CLS_TurmaAulaTerritorioDAO, CLS_TurmaAulaTerritorio>
	{
        /// <summary>
        /// Retorna a liga��o entre os territ�rios e experi�ncias nas aulas criadas no per�odo informado.
        /// </summary>
        /// <returns></returns>
		public static List<TurmaAulaTerritorioDados> SelecionaAulasTerritorioPorExperiencia
            (long tud_idExperiencia, DateTime dataInicial, DateTime dataFinal, TalkDBTransaction banco)
        {
            DataTable dt = new CLS_TurmaAulaTerritorioDAO() { _Banco = banco }.SelecionaAulasTerritorioPorExperiencia(tud_idExperiencia, dataInicial, dataFinal);

            return (from DataRow dr in dt.Rows
                    select (TurmaAulaTerritorioDados)
                        GestaoEscolarUtilBO.DataRowToEntity(dr, new TurmaAulaTerritorioDados())).ToList();
        }
	}
}