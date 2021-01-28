import win32com.client

nfse = win32com.client.Dispatch("NFSeX.spdNFSeX")
nfseProxy = win32com.client.Dispatch("NFSeX.spdProxyNFSeX")

""" Configurar informando o CNPJ da software house"""
nfse.ConfigurarSoftwareHouse("48446555000198","")

""" Passando a referência da instância do NFSe para o ProxyNFSe que é uma interface mais enchuta do mesmo """
nfseProxy.ComponenteNFSe = nfse

"""Informar o path completo do arquivo nfseConfig.ini"""
nfse.LoadConfig(r"nfseconfig.ini")



print("Iniciando consulta de NFSe tomadas")

""" 
Parâmetros ConsultarNotasTomadas: 
            aNomeCidade: Nome do município do prestador; 
            aDocumentoTomador: CNPJ ou CPF do tomador; 
            aIMTomador: Inscrição Municipal do tomador; 
            aDocumentoPrestador: CNPJ ou CPF do Prestador; 
            aIMPrestador: Inscrição Municipal do Prestador; 
            aDataInicial: Data inicial das notas a serem consultadas; 
            aDataFinal: Data final das notas a serem consultadas; 
            aPagina: Número da paginação; 
            aParams: Parâmetros extras (não obrigatório);
"""

print(nfseProxy.ConsultarNotasTomadas('TOBIASBARRETOSE','48446555000198','', '74198762000180', '12345', '2020-01-14', '2020-01-14', '1',''))
print("Finalizando consulta de NFSe tomadas")