#INCLUDE "TOTVS.CH"
#INCLUDE "RWMAKE.CH"
#INCLUDE "TOPCONN.CH"

#Define ENTER Chr(13)+Chr(10)

/*/{Protheus.doc} SPSF3DIA
Fun��o SPSF3DIA, para exemplificar como selecionar o diret�rio de um arquivo no SF3.
@param N�o recebe par�metros
@return Patch do arquivo selecionado
@author Rafael Goncalves
@owner sempreju.com.br
@version Protheus 12
@since Mar|2021
/*/

User Function SPSF3DIA(cCampo)
Local cRet := ""

cRet := cGetFile(,"Selecione o diretorio",,"",.T.,GETF_NETWORKDRIVE+GETF_RETDIRECTORY+128)

//Atualiza o campo com o caminho selecionado
&(cCPO)	:= cRet

Return (!Empty(cRet))

