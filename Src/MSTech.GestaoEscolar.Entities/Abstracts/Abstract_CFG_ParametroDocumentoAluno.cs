/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using MSTech.Data.Common.Abstracts;
using MSTech.Validation;

namespace MSTech.GestaoEscolar.Entities.Abstracts
{
    /// <summary>
    /// Tabela respons�vel por guardar os parametros para exibi��o de um relat�rio da entidade do sistema de gest�o acad�mica.
    /// </summary>
    [Serializable()]
    public abstract class Abstract_CFG_ParametroDocumentoAluno : Abstract_Entity
    {

        /// <summary>
        /// id da entidade da tabela CFG_RelatorioDocumentoAluno.
        /// </summary>
        [MSNotNullOrEmpty()]
        [DataObjectField(true, false, false)]
        public virtual Guid ent_id { get; set; }

        /// <summary>
        /// id do relat�rio da tabela CFG_RelatorioDocumentoAluno.
        /// </summary>
        [MSNotNullOrEmpty()]
        [DataObjectField(true, false, false)]
        public virtual int rlt_id { get; set; }

        /// <summary>
        /// id do par�mentro.
        /// </summary>
        [MSNotNullOrEmpty()]
        [DataObjectField(true, false, false)]
        public virtual int pda_id { get; set; }

        /// <summary>
        /// nome-chave do par�metro.
        /// </summary>
        [MSValidRange(100)]
        [MSNotNullOrEmpty()]
        public virtual string pda_chave { get; set; }

        /// <summary>
        /// valor do par�metro.
        /// </summary>
        [MSValidRange(1000)]
        [MSNotNullOrEmpty()]
        public virtual string pda_valor { get; set; }

        /// <summary>
        /// descri��o do par�metro.
        /// </summary>
        [MSValidRange(200)]
        public virtual string pda_descricao { get; set; }

        /// <summary>
        /// situa��o do parametr�: 1-Ativo; 3-Exclu�do;
        /// </summary>
        [MSNotNullOrEmpty()]
        public virtual byte pda_situacao { get; set; }

        /// <summary>
        /// data da cria��o do registro.
        /// </summary>
        [MSNotNullOrEmpty()]
        public virtual DateTime pda_dataCriacao { get; set; }

        /// <summary>
        /// data da altera��o do registro.
        /// </summary>
        [MSNotNullOrEmpty()]
        public virtual DateTime pda_dataAlteracao { get; set; }

    }
}