const ActiveX = require('winax')

class ComponenteNFSe{
  constructor(){
    this.iniciarComponente()
  }
  
  iniciarComponente (){
      global.NFSe = new ActiveX.Object('NFSeX.spdNFSeX')
      global.ProxyNFSe = new ActiveX.Object('NFSeX.spdProxyNFSeX')
      global.NFSeConverter = new ActiveX.Object('NFSeConverterX.spdNFSeConverterX')
      global.ProxyNFSe.ComponenteNFSe = global.NFSe
  }
}

module.exports = new ComponenteNFSe()
