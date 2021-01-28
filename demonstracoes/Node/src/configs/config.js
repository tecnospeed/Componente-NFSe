const path = require('path')
const pastaInstalacaoPadrao = 'C:\\Program Files\\TecnoSpeed\\NFSe\\Arquivos'
const pathCertificado = 'C:\\Users\\alexandre.muzulao\\Documents\\certificado'
const pathApplication = path.join(__dirname, "..\\..\\")


const configuracaoPadrao = {
    CaminhoCertificado: path.join(pathCertificado, 'speed051161.pfx'),
    SenhaCertificado: 'speed051161',
    Ambiente: '1',
    Municipio: 'MaringaPR',
    CNPJ: '08187168000160',
    InscricaoMunicipal : '096650',
    TipoCertificado: '3',
    ArquivoLocais : path.join(pastaInstalacaoPadrao, 'nfseLocais.ini'),
    ArquivoServidoresHom : path.join(pastaInstalacaoPadrao, 'nfseServidoresHom.ini'),
    ArquivoServidoresProd : path.join(pastaInstalacaoPadrao, 'nfseServidoresProd.ini'),
    DiretorioEsquemas : path.join(pastaInstalacaoPadrao, 'Esquemas'),
    DiretorioEsquemas : path.join(pastaInstalacaoPadrao, 'Scripts'),
    DiretorioTemplates : path.join(pastaInstalacaoPadrao, 'Templates'),
    DiretorioLogErro : path.join(pathApplication, 'DiretorioLogErro'),
    DiretorioLog : path.join(pathApplication, 'DiretorioLog'),
    DiretorioXmlImpressao : path.join(pathApplication, 'XmlImpressao'),
    Ambiente : '2',
    Repositorio : 'CURRENT_USER_STORE',
    ValidarEsquema : '0',
    MappingFileName : 'Mapping.txt'
  }
  
  module.exports = configuracaoPadrao
