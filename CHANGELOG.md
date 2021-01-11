## [10.1.75.7080]

**Novidades**

* DC-1461 - Compatibilizando o padrão Prescon com o componente NFSe, nessa versão estará disponível a cidade de Vinhedo - SP.
  * Para mais informações, acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360058002854
* DC-1673 - Compatibilizando o padrão SIL20 com o componente NFSe, nessa versão estará disponível a cidade de Cariacica - ES.
  * Para mais informações, acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360058482394
* DC-1761 - Adicionado o QRCode na impressão do padrão GINFES.
* DC-1760 - Implementado regras para o campo valor iss devido na impressão de Vila Velha, padrão Abrasf21.
* DC-1756 - Adicionando os campos InscricaoEstadualTomador no XML de envio e CepPrestador na impressão do padrão MAISISS20.
* DC-1751 - Melhoria na mensagem de Erro no LoadEnvio do padrão Equiplano.
* DC-1740 - Adicionado o controle de duplicidade via arquivo ini para o padrão SIL.
* DC-1818 - Implementado tratamento para SerieRps especifico para cada cidade do padrão IssNetOnline.
* DC-1534 - Compatibilizando o padrão SIAP com o componente NFSe, nessa versão estará disponível a cidade de Santarém - PA.
  * Para mais informações, acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360060716293
* DC-1823 - homologação do município de Sabinópolis - MG, padrão Memory.
* DC-1823 - homologação do município de Guanhães - MG, padrão EL.
* DC-1823 - Re-homologação do município de Nova Odessa - SP, mudança de padrão de SIL para Smarapd.
* DC-1823 - Re-homologação do município de Montividiu - GO, mudança de padrão de Prodata para Fiorilli.
* DC-1823 - Homologação do município de Caraguatatuba - SP, padrão Prescon.
* DC-1929 - Homologação do município de Getúlio Vargas - RS, padrão GovBR20.
* DC-1929 - Homologação do município de Pitanga - PR, padrão MaisISS20.
* DC-1929 - Homologação do município de Mauá da Serra - PR, padrão MaisISS20.
* DC-1929 - Homologação do município de Manoel Ribas - PR, padrão MaisISS20.
* DC-1929 - Re-homologação do município de Iretama - PR, mudança de padrão MaisIss para MaisISS20.
* DC-1921 - Adicionado o código do IBGE do município da prestação do serviço na chave de cancelamento do padrão BETHA.
* DC-1217 - Compatibilizando o padrão NFEletronica com o componente NFSe, nessa versão estará disponível a cidade de Santana de Parnaíba - SP.
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360059469374
* DC-1191 - Compatibilizando o padrão ColumbiaUP com o componente NFSe, nessa versão estará disponível as cidades de Afogados da Ingazeira - PE, Tamandaré - PE  Carpina - PE.
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360061584293
* DC-1811 - Re-homologação do município de Jequié - BA, mudança de padrão SIAM para EL20.
* DC-1916 - Homologação do município de Costa Rica - MS, padrão GovBr20.
* DC-2003 - Homologação do município de Rio Claro - RJ, padrão Betha.
* DC-2003 - Homologação do município de Vassouras - RJ, padrão GovBR20.
* DC-2003 - Homologação do município de Goianápolis - GO, padrão IssWeb.
* DC-2003 - Homologação do município de Barros Cassal - RS, padrão GovBR20.


**Correções**

* DC-1749 - Correção na impressão do valor Líquido da NFS-e para Ipatinga-MG.
* DC-1867 - Compatibilizando a impressão de Juiz de Fora com a da prefeitura.
* DC-1915 - Ajustes na impressão do padrão SigIssWeb para ficar de acordo com a prefeitura.
* DC-1904 - Ajuste na comunicação do padrão SigIssWeb.
* DC-1882 - Correção na impressão do País tomador da NFS-e para Niterói/RJ.
* DC-1928 - Correção na impressão do padrão EddyData.
* DC-1870 - Correção da interpretação do retorno do envio síncrono via proxy do padrão Tiplan, quando contém tag ListaMensagemRetorno (com mensagens de avisos), mas foi bem-sucedido (agora interpreta como sucesso e não mais como falha).
* DC-1922 - Correção na chave de cancelamento padrão ISSNETONLINE.

## [10.1.75.7048]

**Correções**

* DC-1664 - Correção na quebra de linha do padrão São Paulo.
* DC-1669 - Correção no tratamento da tag situação para a cidade de Primavera do Leste - MT, padrão ISSONLINE
* DC-1566 - Correção no campo TipoLogradouroTomador para o padrão SIAPPA.
* DC-1695 - Correção na impressão de Belem de acordo com a do portal.
* DC-1615 - Atualização no modelo de impressão de NFS-e do padrão EL20.
* DC-1737 - Correção no retorno da Consulta de NFSe por RPS do padrão FINTEL, cidade Itatiba - SP.
* DC-1714 - Compatibilizado a Impressão de Juiz de Fora/MG - Padrão FINTEL com a da prefeitura.

## [10.1.74.7039]

**Novidades**

* DC-1326 - Disponibilizada a Consulta de Notas Tomadas para o padrão Coplan.
* DC-1469 - Compatibilizando o padrão DSF20 com o componente NFSe, nessa versão estará disponível a cidade de Macapá - AP.
  * Para mais informações, acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360058339593
* DC-1581 - Adicionado os campos NumeroEncapsulamento e ValorTotalRecebido para São Paulo - SP.
* DC-1483 - Disponibilizada a Consulta de Notas Tomadas para o padrão Metropolis.

**Correções**
* DC-1591 - Correção no xml de envio com acentos para o padrão Saturno.
* DC-1661 - Correção no padrão de quebra de linha específico para Niterói - RJ, padrão WebISS20.

## [10.1.73.7006]

**Novidades**

* DC-1187 - Implementado múltiplos serviços e os campos ‘retido’ e ‘incidencia’ para o padrão SATURNO.
* DC-1277 - Implementada a opção ModoEnvioCenti no NFSeLocais.ini para as cidades do padrão Centi. Essa propriedade serve para configurar a forma como o componente vai se comunicar com a prefeitura. Exemplo:
  * ModoEnvioCenti=1 - O componente NFSe utilizará a dll WinHttp para realizar a comunicação com a API.
  * ModoEnvioCenti=2 - O componente NFSe utilizará o componente Indy para realizar a comunicação com a API.
  * Essa solução visa resolver os recorrentes problemas que a API do padrão possuí, pois, ela passa por constantes oscilações.
* DC-1179 - Compatibilizando o padrão Elmar com o componente NFSe, nessa versão estará disponível a cidade de Guarabira - PB
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360055375793
* DC-1293 - Compatibilizando o padrão Simpliss20 com o componente NFSe, nessa versão estará disponível a cidade de São Gonçalo - RJ
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360056411593
* DC-1349 - Homologação do município de São José da Bela Vista - SP, padrão EddyData.
* DC-1349 - Homologação do município de Bom Jesus do Norte - ES, padrão EL.
* DC-1349 - Homologação do município de São João do Ivaí - PR, padrão MaisISS20.
* DC-1349 - Homologação do município de Solânea - PB, padrão Elmar.
* DC-1349 - Homologação do município de Mamanguape - PB, padrão Elmar.
* DC-1349 - Homologação do município de Esperança - PB, padrão Elmar.
* DC-1349 - Homologação do município de Campina da Lagoa - PR, padrão MaisISS20.
* DC-1349 - Re-homologação do município de Peabiru - PR, mudança de padrão de MaisISS para MaisISS20.
* DC-1349 - Re-homologação do município de Porecatu - PR, mudança de padrão de SIMPLISS para GOVBR20.
* DC-1320 - Disponibilizado método ObterLinkImpressao para o padrão COTIA.
* DC-1347 - Alteração na impressão Belém-PA padrão (DSF) para aceitar xml retorno do envio e retorno da consulta de lote.
* DC-1290 - Incluídos os campos referentes as faturas do padrão SIL.
* DC-1456 - Adicionado SubListaServicos para a cidade de Ribeirão Preto - SP.

**Correções**

* DC-1155 - Resolver problema no seguinte cenário: Sistema feito em Delphi, com componente dropado em tela. O componente não estava instalado. Ao abrir tela com componente dropado, levantava exceção mesmo sem ter executado o componente.
* DC-1298 - Corrigir validação de licença da versão FULL_CNPJ.
* DC-1292 - Corrigir problema na geração da HashSenha padrão SIL.

## [10.1.72.6962]

**Novidades**

* DC-769 - Estendido o campo "OutrasInformacoes" do Padrão Único para o padrão INFISC, agora o mesmo comporta até 510 caracteres.

* DC-648 - Disponibilizado instalação manual do componente no pacote full sources.

* DC-1150 - Compatibilizado o padrão Abaco20 com o componente NFSe, nessa versão estará disponível a cidade de Rio Branco - AC.
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360052627314

* DC-1188 - Compatibilizado o padrão ISSMAP com o componente NFSe, nessa versão estará disponível a cidade de Lençóis Paulista - SP.
  * Para mais informações acesse: https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360053260714

**Correções**

* DC-1137 - Correção no cancelamento da cidade Rio Grande-RS que é do padrão SIGISS, onde o cancelamento tem layout diferente do próprio padrão.

* DC-1224 - Alterar funções que estavam sem retorno padrão.

## [10.1.71.6933]

 **Novidades**

* DC-681 - Compatibilizando o padrão DataPublic com o componente NFSe, nessa versão estará disponível a cidade de Queimadas - PB.
            Para maiores informações acesse: [Documentação.](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360051363694)

* DC-819 - Correção na exportação NFSe do padrão de São Paulo para não entrar em loop.

## [10.1.70.6915]

**Novidades**

* DC-539 - Alteração no layout de impressão no padrão NATAL, para que fique igual a impressão feita na prefeitura.
* DC-550 - Compatibilizado com Delphi Sydney 10.4.
* DC-642 - Re-homologação do município Itajá - GO, mudança de padrão de BETHA para CENTI.
* DC-642 - Homologação do município Porto Seguro - BA, padrão ISSINTEL.
* DC-642 - Homologação do município Acaraú - CE, padrão INTERSOL.
* DC-642 - Homologação do município Guaçuí - ES, padrão EL.
* DC-642 - Homologação do município Ibiraçu - ES, padrão EL.
* DC-642 - Homologação do município Marataízes - ES, padrão EL.
* DC-642 - Re-homologação do município Carangola - MG, mudança de padrão de EL20 para EL.
* DC-653 - Disponibilizada a Consulta de Notas Tomadas para o padrão Publica.
* DC-614 - Implementando quantidade máxima de serviços para o padrão DSF.

**Correções**

* DC-632 - Corrigido problema ao desinstalar o certificado quando é informado o caminho e a senha do certificado para utilizá-lo.

## [10.1.69.6851]

**Novidades**
* #DC-623 - Disponibilizada a impressão dos Campos Customizados referentes ao SubDataSet de Serviço.
* #DC-629 - Homologação do município Itatinga - CE, padrão INTERSOL.
* #DC-629 - Re-homologação do município Mirassol D'Oeste - MT, mudança de padrão de SATURNO para FIORILLI.
* #DC-629 - Re-homologação do município Ipojuca - PE, mudança de padrão de WEBISS20 para TINUS.

## [10.1.69.6841]

**Novidades**

* #DC-517 - Re-homologação do município Altônia - PR, mudança de padrão de GOVBR para GOVBR20.

* #DC-517 - Re-homologação do município Itajubá - MG, mudança de padrão de GOVDIGITAL para GINFES.
 
* #DC-529 - Re-homologação do município Volta Redonda - RJ, mudança de padrão de SIMPLISS para ISSNETONLINE.
 
* #DC-529 - Re-homologação do município Cascavel - PR, mudança de padrão de ISSNETONLINE para IPM.
 
* #DC-529 - Homologação do município Monte Sião - MG, padrão FIORILLI.
 
* #DC-529 - Re-homologação do município São Miguel do Iguaçu - PR, mudança de padrão de MAISISS para MAISISS20.
 
* #DC-529 - Re-homologação do município Piraí do Sul - PR, mudança de padrão de MAISISS para MAISISS20.
 
* #DC-529 - Homologação do município São Jorge D'Oeste - PR, padrão EQUIPLANO.
 
* #DC-489 - Alteração na consulta de notas tomadas de SP, para que os campos CNPJRemetente e CPFCNPJ aceitem valores diferentes;
 
* #DC-491 - Disponibilizada consulta de notas Tomadas para o padrão GOVBR20.
 
* #DC-527 - Correções nos padrões para imprimir mesmo sem encontrar o log de RPS.

## [10.0.68.6840]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6839]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6838]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6837]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6836]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6835]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.68.6834]

* Corre&ccedil;&otilde;es e melhorias diversos.




















