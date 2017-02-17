/*
	Classe gerada automaticamente pelo MSTech Code Creator
*/

namespace MSTech.GestaoEscolar.Entities
{
    using System;
    using System.ComponentModel;
    using MSTech.GestaoEscolar.Entities.Abstracts;
    using MSTech.Validation;

    /// <summary>
    ///
    /// </summary>
    [Serializable]
    public class MTR_Matricula : AbstractMTR_Matricula
    {
        /// <summary>
        /// Id do processo de fechamento/in�cio do ano letivo
        /// </summary>
        [MSNotNullOrEmpty("Processo fechamento/in�cio ano letivo � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override int pfi_id { get; set; }

        /// <summary>
        /// Id do aluno
        /// </summary>
        [MSNotNullOrEmpty("Aluno � obrigat�rio.")]
        [DataObjectField(true, false, false)]
        public override long alu_id { get; set; }

        /// <summary>
        /// Id da renova��o (pr�-matr�cula)
        /// </summary>        
        [DataObjectField(true, false, false)]
        public override int mtr_id { get; set; }

        /// <summary>
        /// N�mero de matr�cula do aluno
        /// </summary>
        [MSValidRange(50, "N�mero de matr�cula do aluno pode conter at� 50 caracteres.")]
        public override string mtr_numeroMatricula { get; set; }

        /// <summary>
        /// Tipo de processo (1-Renova��o,2-Importa��o do sistema Matr�cula Digital,3-Matr�cula de alunos oriundos de creches conveniadas,4-Matr�cula de alunos oriundos de creches conveniadas - pelo sistema Inscri��o Creche)
        /// </summary>        
        public override short mtr_tipoProcesso { get; set; }

        /// <summary>
        /// Situa��o do registro (1-Ativo, 3-Exclu�do, 4- Matriculado, 5-Inativo)
        /// </summary>
        [MSDefaultValue(1)]
        public override short mtr_situacao { get; set; }

        /// <summary>
        /// Data de cria��o do registro
        /// </summary>        
        public override DateTime mtr_dataCriacao { get; set; }

        /// <summary>
        /// Data da �ltima altera��o do registro
        /// </summary>        
        public override DateTime mtr_dataAlteracao { get; set; }

        // Vari�veis utilizadas na forma��o de turmas para o in�cio do ano letivo
        public virtual Int64 numeroLinha { get; set; }
        public virtual string cur_nome { get; set; }
        public virtual string crp_descricao { get; set; }
        public virtual string pes_nome { get; set; }
        public virtual DateTime pes_dataNascimento { get; set; }
        public DateTime mov_dataRealizacao { get; set; }

        // Vari�vel utilizada na renova��o para indicar se a renova��o ser� realizada pela progress�o do PEJA
        public bool alunoPEJA { get; set; }

        //Vari�vel auxiliar que informa a situa��o da turma
        public byte tur_situacao { get; set; }

        //Vari�vel auxiliar que informa o codigo da turma
        public string tur_codigo { get; set; }
    }
}