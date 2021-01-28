const configuracaoPadrao = require('../configs/config');
let resposta = ""

const configuraComponente = (
    certificado = configuracaoPadrao.CaminhoCertificado,
    password = configuracaoPadrao.SenhaCertificado,
    ambiente = configuracaoPadrao.Ambiente,
    municipio = configuracaoPadrao.Municipio) => {
        
    NFSe.TipoCertificado = configuracaoPadrao.TipoCertificado
    NFSe.CaminhoCertificado = certificado
    NFSe.SenhaCertificado = password
        
    NFSe.Ambiente = ambiente
    NFSe.Cidade = municipio
    NFSe.CNPJ = configuracaoPadrao.CNPJ    

    NFSe.ArquivoServidoresHom = configuracaoPadrao.ArquivoServidoresHom
    NFSe.ArquivoServidoresProd = configuracaoPadrao.ArquivoServidoresProd
    NFSe.DiretorioEsquemas = configuracaoPadrao.DiretorioEsquemas
    NFSe.DiretorioTemplates = configuracaoPadrao.DiretorioTemplates
    NFSe.DiretorioLog = configuracaoPadrao.DiretorioLog
    NFSe.DiretorioLogErro = configuracaoPadrao.DiretorioLogErro
    NFSe.ValidarEsquemaAntesEnvio = configuracaoPadrao.ValidarEsquemaAntesEnvio

    ProxyNFSe.ComponenteNFSe.Cidade = configuracaoPadrao.Municipio
    ProxyNFSe.ComponenteNFSe.InscricaoMunicipal = configuracaoPadrao.InscricaoMunicipal
    ProxyNFSe.ComponenteNFSe.ArquivoLocais = configuracaoPadrao.ArquivoLocais
    ProxyNFSe.ComponenteNFSe.MappingFileName = configuracaoPadrao.MappingFileName
    ProxyNFSe.ComponenteNFSe.DiretorioLogErro = configuracaoPadrao.DiretorioLogErro

    NFSeConverter.Cidade = configuracaoPadrao.Municipio
    NFSeConverter.DiretorioEsquemas = configuracaoPadrao.DiretorioEsquemas
    NFSeConverter.DiretorioScripts = configuracaoPadrao.DiretorioScripts
    
    console.log(NFSeConverter)
    console.log(NFSeConverter.Cidade)
}

const converterNotasTomadas = (XMLConsulta) => {
    const retConsulta = ''
    const consulta1 = ''
    const qtdNotas = 0
    try {
        // consulta1 = NFSeConverter.ConverterRetConsultarLoteNFSeTomadas(XMLConsulta, "")
        retConsulta = NFSeConverter.ConverterRetConsultarLoteNFSeTomadasTipo(XMLConsulta)

        qtdNotas = retConsulta.ListaDeNFes.count()
        
        console.log(qtdNotas)

        return qtdNotas
        
    } catch (error) {
        console.log(error)
        return error
    }
}

module.exports = {
    consultaNotasTomadas(municipio, docTomador, imTomador, docPrestador, imPrestador, dtInicial, dtFinal, pagina, Extras){
        configuraComponente()
        resposta = ProxyNFSe.ConsultarNotasTomadas(
            municipio,
            docTomador,
            imTomador,
            docPrestador,
            imPrestador,
            dtInicial,
            dtFinal,
            pagina,
            Extras)

        respostaTipada = converterNotasTomadas(resposta)
        
        return respostaTipada
    }
}
