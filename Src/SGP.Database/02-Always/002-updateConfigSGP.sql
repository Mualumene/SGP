-- Configura��o do API
UPDATE CFG_Configuracao
SET cfg_valor = '$UrlApi$'
WHERE
	cfg_chave = 'UrlGestaoAcademicaWebApi'

-- Configura��o do servi�o
UPDATE CFG_Configuracao
SET cfg_valor = '$HostService$'
WHERE
	cfg_chave = 'AppSchedulerHost'