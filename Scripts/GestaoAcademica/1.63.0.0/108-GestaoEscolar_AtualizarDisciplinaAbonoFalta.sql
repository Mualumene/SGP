USE [GestaoPedagogica]
GO

--Iniciar transa��o
BEGIN TRANSACTION
SET XACT_ABORT ON

	UPDATE TUR_TurmaDisciplina 
	SET tud_permitirLancarAbonoFalta = 1
	WHERE tud_nome IN ('Educa��o F�sica', 'Ensino Religioso', 'L�ngua espanhola')    

--Fechar transa��o
SET XACT_ABORT OFF
COMMIT TRANSACTION
