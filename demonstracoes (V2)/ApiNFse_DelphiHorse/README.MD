*Demonstração de API criada em Delphi usando o framework Horse em conjunto com o componente NFSe V2 da TecnoSpeed.
*Desenvolvida com o Delphi 11, mas pode ser utilizada com Delphi XE7 ou superior, pois essas são as versões que o Horse é compatível.

*Instruções para configuração e uso:

*Ter as dependências do componente NFSe V2 instalada na máquina.
*Baixar e configurar o Boss (gerenciador de pacotes para Delphi)
*No link https://github.com/hashload/boss/releases baixe o boss-windows-386.zip ou boss-windows-amd64.zip
*Depois descompacte em sua pasta de preferencia e informe o caminho dessa pasta na variavel de ambiente path do windows, 
*ou então pegue o boss.exe e jogue na pasta do windows.

*Baixe o projeto na pasta C:\ApiNFse_DelphiHorse\ ou outra de sua preferência (atualizar a constante PATH_ARQUIVOS da unit services.nfse.pas)
*Abra o cmd na pasta do projeto baixada e execute o comando -> boss install
*Esse comando baixara todas os pacotes utilizados no projeto. 
*Depois abra o projeto DemoApiNFSe.dproj no Delphi e compile, se tudo estive OK é so executar

*Observações:
*A demo foi projetada para que a configuração de cada CNPJ fique na sua respectiva pasta.
*Por exemplo, quero utilizar para o CNPJ 99999999999999, então eu crio uma nova pasta em .\arquivos\99999999999999\ 
*e nessa pasta eu adiciono o NFSeConfig.ini configurando todas propriedades necessárias como cidade, certificado, diretorios. 
*Na pasta .\arquivos\00000000000000\NFSeConfig.ini tem um exemplo das propriedades
*É necessário configurar o CNPJ e Token da Software House no FspdNFSe.ConfigurarSoftwareHouse('', '') da unit services.nfse.pas;
