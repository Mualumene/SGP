
-- Relat�rios - Servidor
UPDATE 
	CFG_ServidorRelatorio 
SET 
	srr_usuario = ''
	,srr_senha = ''
	,srr_dominio = ''
	,srr_diretorioRelatorios = ''
	,srr_pastaRelatorios = ''

-- Deletar servi�os do Gestao Escolar
DELETE FROM QTZ_Blob_Triggers
DELETE FROM QTZ_Calendars
DELETE FROM QTZ_Cron_Triggers
DELETE FROM QTZ_Fired_Triggers
DELETE FROM QTZ_Locks
DELETE FROM QTZ_Paused_Trigger_Grps
DELETE FROM QTZ_Scheduler_State
DELETE FROM QTZ_Simple_Triggers
DELETE FROM QTZ_Simprop_Triggers
DELETE FROM QTZ_Triggers
DELETE FROM QTZ_Job_Details