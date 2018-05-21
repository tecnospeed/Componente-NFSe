unit NFSeConverterX_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 04/05/2018 16:08:26 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Desenvolvimento\Produtos\spdNFSe\NFSeConverter\ActiveX\NFSeConverterX.tlb (1)
// LIBID: {3CA54D68-45BD-4EFF-BAF5-86DEA01C0BA9}
// LCID: 0
// Helpfile: 
// HelpString: ConverterX Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses
    {$IF CompilerVersion >= 23 }
      WinApi.Windows, WinApi.ActiveX, System.Classes, VCL.Graphics, VCL.OleCtrls,
      System.Win.StdVCL, System.Variants;
    {$ELSE}
      Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL, Variants;
    {$IFEND}



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  NFSeConverterXMajorVersion = 1;
  NFSeConverterXMinorVersion = 0;

  LIBID_NFSeConverterX: TGUID = '{3CA54D68-45BD-4EFF-BAF5-86DEA01C0BA9}';

  IID_IspdNFSeConverterX: TGUID = '{F6D9D245-BDF1-4881-AD28-CBFA1F05CC68}';
  DIID_IspdNFSeConverterXEvents: TGUID = '{D8F48092-BD49-499E-A01B-FAB3A8748402}';
  CLASS_spdNFSeConverterX: TGUID = '{E9DEFBE3-E577-431E-8A0F-80CA0BE60E69}';
  IID_IspdRetCustom: TGUID = '{85C6CE35-7D6B-4DAD-A661-174B184222FE}';
  IID_IspdRetEnvioNFSe: TGUID = '{9CFA7A46-8CDC-4B4E-A9DE-877B102C5634}';
  IID_IspdRetConsultaNFSe: TGUID = '{15889AB7-077F-47F0-8A37-1500614A62BA}';
  IID_IspdRetConsultaLoteNFSe: TGUID = '{7EF78F9B-48B5-48C6-BB3A-65114028033E}';
  IID_IspdRetCancelaNFSe: TGUID = '{236EA45B-2C01-4C7B-89F5-B6A7972B0CAF}';
  IID_IspdListRetConsultaNFSe: TGUID = '{362724D0-C420-41AF-8AA8-CAB89251B85D}';
  CLASS_spdRetCustom: TGUID = '{3BC1278D-692B-4772-8AB8-E0765DC08BE8}';
  CLASS_spdRetEnvioNFSe: TGUID = '{3208D89D-4E05-4A83-9BC9-1596D0C36443}';
  CLASS_spdRetConsultaNFSe: TGUID = '{0FA7290C-8374-4603-A206-68A0296102E0}';
  CLASS_spdRetConsultaLoteNFSe: TGUID = '{FE45B5A7-5118-4289-A9C9-35D9816D2FE1}';
  CLASS_spdRetCancelaNFSe: TGUID = '{691E0768-D6CB-47EF-8B00-2CC31E2A0BA8}';
  CLASS_spdListRetConsultaNFSe: TGUID = '{AD5C2AFD-21D4-437C-A946-EF755F111D57}';
  IID_IspdRetEnvioSincronoNFSe: TGUID = '{CA58EF6C-28EE-44E6-B265-32B17FFEA42A}';
  CLASS_spdRetEnvioSincronoNFSe: TGUID = '{50DECAB0-C893-4448-8DC7-E5AE9290A97D}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum spdStatusProcess
type
  spdStatusProcess = TOleEnum;
const
  SUCESSO = $00000000;
  EMPROCESSAMENTO = $00000001;
  ERRO = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IspdNFSeConverterX = interface;
  IspdNFSeConverterXDisp = dispinterface;
  IspdNFSeConverterXEvents = dispinterface;
  IspdRetCustom = interface;
  IspdRetCustomDisp = dispinterface;
  IspdRetEnvioNFSe = interface;
  IspdRetEnvioNFSeDisp = dispinterface;
  IspdRetConsultaNFSe = interface;
  IspdRetConsultaNFSeDisp = dispinterface;
  IspdRetConsultaLoteNFSe = interface;
  IspdRetConsultaLoteNFSeDisp = dispinterface;
  IspdRetCancelaNFSe = interface;
  IspdRetCancelaNFSeDisp = dispinterface;
  IspdListRetConsultaNFSe = interface;
  IspdListRetConsultaNFSeDisp = dispinterface;
  IspdRetEnvioSincronoNFSe = interface;
  IspdRetEnvioSincronoNFSeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  spdNFSeConverterX = IspdNFSeConverterX;
  spdRetCustom = IspdRetCustom;
  spdRetEnvioNFSe = IspdRetEnvioNFSe;
  spdRetConsultaNFSe = IspdRetConsultaNFSe;
  spdRetConsultaLoteNFSe = IspdRetConsultaLoteNFSe;
  spdRetCancelaNFSe = IspdRetCancelaNFSe;
  spdListRetConsultaNFSe = IspdListRetConsultaNFSe;
  spdRetEnvioSincronoNFSe = IspdRetEnvioSincronoNFSe;


// *********************************************************************//
// Interface: IspdNFSeConverterX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6D9D245-BDF1-4881-AD28-CBFA1F05CC68}
// *********************************************************************//
  IspdNFSeConverterX = interface(IDispatch)
    ['{F6D9D245-BDF1-4881-AD28-CBFA1F05CC68}']
    function ConverterEnvioNFSe(const aTX2Envio: WideString; const aParams: WideString): WideString; safecall;
    function ConverterRetEnvioNFSe(const aXmlRetorno: WideString; const aListaDeCampos: WideString): WideString; safecall;
    function ConverterRetConsultarNFSe(const aXmlRetorno: WideString;
                                       const aListaDeCampos: WideString): WideString; safecall;
    function ConverterRetConsultarLoteNFSe(const aXmlRetorno: WideString;
                                           const aListaDeCampos: WideString): WideString; safecall;
    function ConverterRetCancelarNFSe(const aXmlRetorno: WideString;
                                      const aListaDeCampos: WideString): WideString; safecall;
    function ConverterRetConsultarNFSePorRPS(const aXmlRetorno: WideString;
                                             const aListaDeCampos: WideString): WideString; safecall;
    function Get_Cidade: WideString; safecall;
    procedure Set_Cidade(const Value: WideString); safecall;
    function Get_DiretorioEsquemas: WideString; safecall;
    procedure Set_DiretorioEsquemas(const Value: WideString); safecall;
    function Get_DiretorioScripts: WideString; safecall;
    procedure Set_DiretorioScripts(const Value: WideString); safecall;
    function Get_DelimitadorDaLinha: WideString; safecall;
    procedure Set_DelimitadorDaLinha(const Value: WideString); safecall;
    function Get_DelimitadorDoCampo: WideString; safecall;
    procedure Set_DelimitadorDoCampo(const Value: WideString); safecall;
    function ConverterRetEnvioNFSeTipo(const aTx2FileName: WideString): IspdRetEnvioNFSe; safecall;
    function ConverterRetConsultarNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe; safecall;
    function ConverterRetConsultarLoteNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaLoteNFSe; safecall;
    function ConverterRetCancelarNFSeTipo(const aXmlRetorno: WideString): IspdRetCancelaNFSe; safecall;
    function ConverterRetConsultarNFSePorRpsTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe; safecall;
    function ConverterScriptPersonalizado(const aXml: WideString; const aScriptLoad: WideString;
                                          const aScriptOutput: WideString): WideString; safecall;
    function ConverterRetEnvioSincronoNFSeTipo(const aXmlRetorno: WideString): IspdRetEnvioSincronoNFSe; safecall;
    function ConverterRetEnvioSincronoNFSe(const aXmlRetorno: WideString;
                                           const aListaDeCampos: WideString): WideString; safecall;
    property Cidade: WideString read Get_Cidade write Set_Cidade;
    property DiretorioEsquemas: WideString read Get_DiretorioEsquemas write Set_DiretorioEsquemas;
    property DiretorioScripts: WideString read Get_DiretorioScripts write Set_DiretorioScripts;
    property DelimitadorDaLinha: WideString read Get_DelimitadorDaLinha write Set_DelimitadorDaLinha;
    property DelimitadorDoCampo: WideString read Get_DelimitadorDoCampo write Set_DelimitadorDoCampo;
  end;

// *********************************************************************//
// DispIntf:  IspdNFSeConverterXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F6D9D245-BDF1-4881-AD28-CBFA1F05CC68}
// *********************************************************************//
  IspdNFSeConverterXDisp = dispinterface
    ['{F6D9D245-BDF1-4881-AD28-CBFA1F05CC68}']
    function ConverterEnvioNFSe(const aTX2Envio: WideString; const aParams: WideString): WideString; dispid 201;
    function ConverterRetEnvioNFSe(const aXmlRetorno: WideString; const aListaDeCampos: WideString): WideString; dispid 202;
    function ConverterRetConsultarNFSe(const aXmlRetorno: WideString;
                                       const aListaDeCampos: WideString): WideString; dispid 203;
    function ConverterRetConsultarLoteNFSe(const aXmlRetorno: WideString;
                                           const aListaDeCampos: WideString): WideString; dispid 204;
    function ConverterRetCancelarNFSe(const aXmlRetorno: WideString;
                                      const aListaDeCampos: WideString): WideString; dispid 205;
    function ConverterRetConsultarNFSePorRPS(const aXmlRetorno: WideString;
                                             const aListaDeCampos: WideString): WideString; dispid 206;
    property Cidade: WideString dispid 207;
    property DiretorioEsquemas: WideString dispid 208;
    property DiretorioScripts: WideString dispid 209;
    property DelimitadorDaLinha: WideString dispid 210;
    property DelimitadorDoCampo: WideString dispid 211;
    function ConverterRetEnvioNFSeTipo(const aTx2FileName: WideString): IspdRetEnvioNFSe; dispid 212;
    function ConverterRetConsultarNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe; dispid 230;
    function ConverterRetConsultarLoteNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaLoteNFSe; dispid 231;
    function ConverterRetCancelarNFSeTipo(const aXmlRetorno: WideString): IspdRetCancelaNFSe; dispid 232;
    function ConverterRetConsultarNFSePorRpsTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe; dispid 233;
    function ConverterScriptPersonalizado(const aXml: WideString; const aScriptLoad: WideString;
                                          const aScriptOutput: WideString): WideString; dispid 213;
    function ConverterRetEnvioSincronoNFSeTipo(const aXmlRetorno: WideString): IspdRetEnvioSincronoNFSe; dispid 214;
    function ConverterRetEnvioSincronoNFSe(const aXmlRetorno: WideString;
                                           const aListaDeCampos: WideString): WideString; dispid 215;
  end;

// *********************************************************************//
// DispIntf:  IspdNFSeConverterXEvents
// Flags:     (0)
// GUID:      {D8F48092-BD49-499E-A01B-FAB3A8748402}
// *********************************************************************//
  IspdNFSeConverterXEvents = dispinterface
    ['{D8F48092-BD49-499E-A01B-FAB3A8748402}']
    procedure OnProgress(const aProgressMessage: WideString); dispid 235;
  end;

// *********************************************************************//
// Interface: IspdRetCustom
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85C6CE35-7D6B-4DAD-A661-174B184222FE}
// *********************************************************************//
  IspdRetCustom = interface(IDispatch)
    ['{85C6CE35-7D6B-4DAD-A661-174B184222FE}']
    function Get_Motivo: WideString; safecall;
    function Get_Status: spdStatusProcess; safecall;
    property Motivo: WideString read Get_Motivo;
    property Status: spdStatusProcess read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IspdRetCustomDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85C6CE35-7D6B-4DAD-A661-174B184222FE}
// *********************************************************************//
  IspdRetCustomDisp = dispinterface
    ['{85C6CE35-7D6B-4DAD-A661-174B184222FE}']
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdRetEnvioNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CFA7A46-8CDC-4B4E-A9DE-877B102C5634}
// *********************************************************************//
  IspdRetEnvioNFSe = interface(IspdRetCustom)
    ['{9CFA7A46-8CDC-4B4E-A9DE-877B102C5634}']
    function Get_NumeroProtocolo: WideString; safecall;
    procedure LoadFromCSV(const aCSVContent: WideString; const aDelimitadorCampo: WideString); safecall;
    property NumeroProtocolo: WideString read Get_NumeroProtocolo;
  end;

// *********************************************************************//
// DispIntf:  IspdRetEnvioNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CFA7A46-8CDC-4B4E-A9DE-877B102C5634}
// *********************************************************************//
  IspdRetEnvioNFSeDisp = dispinterface
    ['{9CFA7A46-8CDC-4B4E-A9DE-877B102C5634}']
    property NumeroProtocolo: WideString readonly dispid 215;
    procedure LoadFromCSV(const aCSVContent: WideString; const aDelimitadorCampo: WideString); dispid 232;
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdRetConsultaNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {15889AB7-077F-47F0-8A37-1500614A62BA}
// *********************************************************************//
  IspdRetConsultaNFSe = interface(IspdRetCustom)
    ['{15889AB7-077F-47F0-8A37-1500614A62BA}']
    function Get_Cnpj: WideString; safecall;
    function Get_InscMunicipal: WideString; safecall;
    function Get_SerieRps: WideString; safecall;
    function Get_NumeroRps: WideString; safecall;
    function Get_NumeroNFSe: WideString; safecall;
    function Get_DataEmissaoNFSe: WideString; safecall;
    function Get_CodVerificacao: WideString; safecall;
    function Get_Situacao: WideString; safecall;
    function Get_DataCancelamento: WideString; safecall;
    function Get_ChaveCancelamento: WideString; safecall;
    function Get_Xml: WideString; safecall;
    function Get_Tipo: WideString; safecall;
    function Get_DataAutorizacao: WideString; safecall;
    property Cnpj: WideString read Get_Cnpj;
    property InscMunicipal: WideString read Get_InscMunicipal;
    property SerieRps: WideString read Get_SerieRps;
    property NumeroRps: WideString read Get_NumeroRps;
    property NumeroNFSe: WideString read Get_NumeroNFSe;
    property DataEmissaoNFSe: WideString read Get_DataEmissaoNFSe;
    property CodVerificacao: WideString read Get_CodVerificacao;
    property Situacao: WideString read Get_Situacao;
    property DataCancelamento: WideString read Get_DataCancelamento;
    property ChaveCancelamento: WideString read Get_ChaveCancelamento;
    property Xml: WideString read Get_Xml;
    property Tipo: WideString read Get_Tipo;
    property DataAutorizacao: WideString read Get_DataAutorizacao;
  end;

// *********************************************************************//
// DispIntf:  IspdRetConsultaNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {15889AB7-077F-47F0-8A37-1500614A62BA}
// *********************************************************************//
  IspdRetConsultaNFSeDisp = dispinterface
    ['{15889AB7-077F-47F0-8A37-1500614A62BA}']
    property Cnpj: WideString readonly dispid 216;
    property InscMunicipal: WideString readonly dispid 217;
    property SerieRps: WideString readonly dispid 218;
    property NumeroRps: WideString readonly dispid 219;
    property NumeroNFSe: WideString readonly dispid 220;
    property DataEmissaoNFSe: WideString readonly dispid 221;
    property CodVerificacao: WideString readonly dispid 222;
    property Situacao: WideString readonly dispid 223;
    property DataCancelamento: WideString readonly dispid 224;
    property ChaveCancelamento: WideString readonly dispid 225;
    property Xml: WideString readonly dispid 226;
    property Tipo: WideString readonly dispid 227;
    property DataAutorizacao: WideString readonly dispid 301;
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdRetConsultaLoteNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7EF78F9B-48B5-48C6-BB3A-65114028033E}
// *********************************************************************//
  IspdRetConsultaLoteNFSe = interface(IspdRetCustom)
    ['{7EF78F9B-48B5-48C6-BB3A-65114028033E}']
    function Get_ListaDeNFes: IspdListRetConsultaNFSe; safecall;
    property ListaDeNFes: IspdListRetConsultaNFSe read Get_ListaDeNFes;
  end;

// *********************************************************************//
// DispIntf:  IspdRetConsultaLoteNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7EF78F9B-48B5-48C6-BB3A-65114028033E}
// *********************************************************************//
  IspdRetConsultaLoteNFSeDisp = dispinterface
    ['{7EF78F9B-48B5-48C6-BB3A-65114028033E}']
    property ListaDeNFes: IspdListRetConsultaNFSe readonly dispid 228;
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdRetCancelaNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {236EA45B-2C01-4C7B-89F5-B6A7972B0CAF}
// *********************************************************************//
  IspdRetCancelaNFSe = interface(IspdRetCustom)
    ['{236EA45B-2C01-4C7B-89F5-B6A7972B0CAF}']
    function Get_DataCancelamento: WideString; safecall;
    property DataCancelamento: WideString read Get_DataCancelamento;
  end;

// *********************************************************************//
// DispIntf:  IspdRetCancelaNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {236EA45B-2C01-4C7B-89F5-B6A7972B0CAF}
// *********************************************************************//
  IspdRetCancelaNFSeDisp = dispinterface
    ['{236EA45B-2C01-4C7B-89F5-B6A7972B0CAF}']
    property DataCancelamento: WideString readonly dispid 229;
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IspdListRetConsultaNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {362724D0-C420-41AF-8AA8-CAB89251B85D}
// *********************************************************************//
  IspdListRetConsultaNFSe = interface(IDispatch)
    ['{362724D0-C420-41AF-8AA8-CAB89251B85D}']
    function Item(aIndex: Integer): IspdRetConsultaNFSe; safecall;
    function Count: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IspdListRetConsultaNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {362724D0-C420-41AF-8AA8-CAB89251B85D}
// *********************************************************************//
  IspdListRetConsultaNFSeDisp = dispinterface
    ['{362724D0-C420-41AF-8AA8-CAB89251B85D}']
    function Item(aIndex: Integer): IspdRetConsultaNFSe; dispid 230;
    function Count: Integer; dispid 231;
  end;

// *********************************************************************//
// Interface: IspdRetEnvioSincronoNFSe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA58EF6C-28EE-44E6-B265-32B17FFEA42A}
// *********************************************************************//
  IspdRetEnvioSincronoNFSe = interface(IspdRetConsultaLoteNFSe)
    ['{CA58EF6C-28EE-44E6-B265-32B17FFEA42A}']
  end;

// *********************************************************************//
// DispIntf:  IspdRetEnvioSincronoNFSeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA58EF6C-28EE-44E6-B265-32B17FFEA42A}
// *********************************************************************//
  IspdRetEnvioSincronoNFSeDisp = dispinterface
    ['{CA58EF6C-28EE-44E6-B265-32B17FFEA42A}']
    property ListaDeNFes: IspdListRetConsultaNFSe readonly dispid 228;
    property Motivo: WideString readonly dispid 213;
    property Status: spdStatusProcess readonly dispid 214;
  end;

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TspdNFSeConverterX
// Help String      : spdConverterX Control
// Default Interface: IspdNFSeConverterX
// Def. Intf. DISP? : No
// Event   Interface: IspdNFSeConverterXEvents
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TspdNFSeConverterXOnProgress = procedure(ASender: TObject; const aProgressMessage: WideString) of object;

  TspdNFSeConverterX = class(TOleControl)
  private
    FOnProgress: TspdNFSeConverterXOnProgress;
    FIntf: IspdNFSeConverterX;
    function  GetControlInterface: IspdNFSeConverterX;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function ConverterEnvioNFSe(const aTX2Envio: WideString; const aParams: WideString): WideString;
    function ConverterRetEnvioNFSe(const aXmlRetorno: WideString; const aListaDeCampos: WideString): WideString;
    function ConverterRetConsultarNFSe(const aXmlRetorno: WideString; 
                                       const aListaDeCampos: WideString): WideString;
    function ConverterRetConsultarLoteNFSe(const aXmlRetorno: WideString; 
                                           const aListaDeCampos: WideString): WideString;
    function ConverterRetCancelarNFSe(const aXmlRetorno: WideString; 
                                      const aListaDeCampos: WideString): WideString;
    function ConverterRetConsultarNFSePorRPS(const aXmlRetorno: WideString; 
                                             const aListaDeCampos: WideString): WideString;
    function ConverterRetEnvioNFSeTipo(const aTx2FileName: WideString): IspdRetEnvioNFSe;
    function ConverterRetConsultarNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe;
    function ConverterRetConsultarLoteNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaLoteNFSe;
    function ConverterRetCancelarNFSeTipo(const aXmlRetorno: WideString): IspdRetCancelaNFSe;
    function ConverterRetConsultarNFSePorRpsTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe;
    function ConverterScriptPersonalizado(const aXml: WideString; const aScriptLoad: WideString; 
                                          const aScriptOutput: WideString): WideString;
    function ConverterRetEnvioSincronoNFSeTipo(const aXmlRetorno: WideString): IspdRetEnvioSincronoNFSe;
    function ConverterRetEnvioSincronoNFSe(const aXmlRetorno: WideString; 
                                           const aListaDeCampos: WideString): WideString;
    property  ControlInterface: IspdNFSeConverterX read GetControlInterface;
    property  DefaultInterface: IspdNFSeConverterX read GetControlInterface;
  published
    property Anchors;
    property Cidade: WideString index 207 read GetWideStringProp write SetWideStringProp stored False;
    property DiretorioEsquemas: WideString index 208 read GetWideStringProp write SetWideStringProp stored False;
    property DiretorioScripts: WideString index 209 read GetWideStringProp write SetWideStringProp stored False;
    property DelimitadorDaLinha: WideString index 210 read GetWideStringProp write SetWideStringProp stored False;
    property DelimitadorDoCampo: WideString index 211 read GetWideStringProp write SetWideStringProp stored False;
    property OnProgress: TspdNFSeConverterXOnProgress read FOnProgress write FOnProgress;
  end;

// *********************************************************************//
// The Class CospdRetCustom provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetCustom exposed by              
// the CoClass spdRetCustom. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetCustom = class
    class function Create: IspdRetCustom;
    class function CreateRemote(const MachineName: string): IspdRetCustom;
  end;

// *********************************************************************//
// The Class CospdRetEnvioNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetEnvioNFSe exposed by              
// the CoClass spdRetEnvioNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetEnvioNFSe = class
    class function Create: IspdRetEnvioNFSe;
    class function CreateRemote(const MachineName: string): IspdRetEnvioNFSe;
  end;

// *********************************************************************//
// The Class CospdRetConsultaNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetConsultaNFSe exposed by              
// the CoClass spdRetConsultaNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetConsultaNFSe = class
    class function Create: IspdRetConsultaNFSe;
    class function CreateRemote(const MachineName: string): IspdRetConsultaNFSe;
  end;

// *********************************************************************//
// The Class CospdRetConsultaLoteNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetConsultaLoteNFSe exposed by              
// the CoClass spdRetConsultaLoteNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetConsultaLoteNFSe = class
    class function Create: IspdRetConsultaLoteNFSe;
    class function CreateRemote(const MachineName: string): IspdRetConsultaLoteNFSe;
  end;

// *********************************************************************//
// The Class CospdRetCancelaNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetCancelaNFSe exposed by              
// the CoClass spdRetCancelaNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetCancelaNFSe = class
    class function Create: IspdRetCancelaNFSe;
    class function CreateRemote(const MachineName: string): IspdRetCancelaNFSe;
  end;

// *********************************************************************//
// The Class CospdListRetConsultaNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdListRetConsultaNFSe exposed by              
// the CoClass spdListRetConsultaNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdListRetConsultaNFSe = class
    class function Create: IspdListRetConsultaNFSe;
    class function CreateRemote(const MachineName: string): IspdListRetConsultaNFSe;
  end;

// *********************************************************************//
// The Class CospdRetEnvioSincronoNFSe provides a Create and CreateRemote method to          
// create instances of the default interface IspdRetEnvioSincronoNFSe exposed by              
// the CoClass spdRetEnvioSincronoNFSe. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CospdRetEnvioSincronoNFSe = class
    class function Create: IspdRetEnvioSincronoNFSe;
    class function CreateRemote(const MachineName: string): IspdRetEnvioSincronoNFSe;
  end;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'TecnoSpeed NFSe';

{$R *.dcr}

implementation

uses
    {$IF CompilerVersion >= 23 }
      System.Win.ComObj;
    {$ELSE}
      ComObj;
    {$IFEND}

procedure TspdNFSeConverterX.InitControlData;
const
  CEventDispIDs: array [0..0] of DWORD = (
    $000000EB);
  CLicenseKey: array[0..38] of Word = ( $007B, $0041, $0036, $0036, $0042, $0031, $0030, $0045, $0039, $002D, $0030
    , $0045, $0035, $0043, $002D, $0034, $0034, $0042, $0039, $002D, $0041
    , $0035, $0045, $0030, $002D, $0038, $0039, $0045, $0042, $0046, $0036
    , $0031, $0043, $0034, $0032, $0033, $0044, $007D, $0000);
  CControlData: TControlData2 = (
    ClassID: '{E9DEFBE3-E577-431E-8A0F-80CA0BE60E69}';
    EventIID: '{D8F48092-BD49-499E-A01B-FAB3A8748402}';
    EventCount: 1;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnProgress) - Cardinal(Self);
end;

procedure TspdNFSeConverterX.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IspdNFSeConverterX;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TspdNFSeConverterX.GetControlInterface: IspdNFSeConverterX;
begin
  CreateControl;
  Result := FIntf;
end;

function TspdNFSeConverterX.ConverterEnvioNFSe(const aTX2Envio: WideString; 
                                               const aParams: WideString): WideString;
begin
  Result := DefaultInterface.ConverterEnvioNFSe(aTX2Envio, aParams);
end;

function TspdNFSeConverterX.ConverterRetEnvioNFSe(const aXmlRetorno: WideString; 
                                                  const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetEnvioNFSe(aXmlRetorno, aListaDeCampos);
end;

function TspdNFSeConverterX.ConverterRetConsultarNFSe(const aXmlRetorno: WideString; 
                                                      const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetConsultarNFSe(aXmlRetorno, aListaDeCampos);
end;

function TspdNFSeConverterX.ConverterRetConsultarLoteNFSe(const aXmlRetorno: WideString; 
                                                          const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetConsultarLoteNFSe(aXmlRetorno, aListaDeCampos);
end;

function TspdNFSeConverterX.ConverterRetCancelarNFSe(const aXmlRetorno: WideString; 
                                                     const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetCancelarNFSe(aXmlRetorno, aListaDeCampos);
end;

function TspdNFSeConverterX.ConverterRetConsultarNFSePorRPS(const aXmlRetorno: WideString; 
                                                            const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetConsultarNFSePorRPS(aXmlRetorno, aListaDeCampos);
end;

function TspdNFSeConverterX.ConverterRetEnvioNFSeTipo(const aTx2FileName: WideString): IspdRetEnvioNFSe;
begin
  Result := DefaultInterface.ConverterRetEnvioNFSeTipo(aTx2FileName);
end;

function TspdNFSeConverterX.ConverterRetConsultarNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe;
begin
  Result := DefaultInterface.ConverterRetConsultarNFSeTipo(aXmlRetorno);
end;

function TspdNFSeConverterX.ConverterRetConsultarLoteNFSeTipo(const aXmlRetorno: WideString): IspdRetConsultaLoteNFSe;
begin
  Result := DefaultInterface.ConverterRetConsultarLoteNFSeTipo(aXmlRetorno);
end;

function TspdNFSeConverterX.ConverterRetCancelarNFSeTipo(const aXmlRetorno: WideString): IspdRetCancelaNFSe;
begin
  Result := DefaultInterface.ConverterRetCancelarNFSeTipo(aXmlRetorno);
end;

function TspdNFSeConverterX.ConverterRetConsultarNFSePorRpsTipo(const aXmlRetorno: WideString): IspdRetConsultaNFSe;
begin
  Result := DefaultInterface.ConverterRetConsultarNFSePorRpsTipo(aXmlRetorno);
end;

function TspdNFSeConverterX.ConverterScriptPersonalizado(const aXml: WideString; 
                                                         const aScriptLoad: WideString; 
                                                         const aScriptOutput: WideString): WideString;
begin
  Result := DefaultInterface.ConverterScriptPersonalizado(aXml, aScriptLoad, aScriptOutput);
end;

function TspdNFSeConverterX.ConverterRetEnvioSincronoNFSeTipo(const aXmlRetorno: WideString): IspdRetEnvioSincronoNFSe;
begin
  Result := DefaultInterface.ConverterRetEnvioSincronoNFSeTipo(aXmlRetorno);
end;

function TspdNFSeConverterX.ConverterRetEnvioSincronoNFSe(const aXmlRetorno: WideString; 
                                                          const aListaDeCampos: WideString): WideString;
begin
  Result := DefaultInterface.ConverterRetEnvioSincronoNFSe(aXmlRetorno, aListaDeCampos);
end;

class function CospdRetCustom.Create: IspdRetCustom;
begin
  Result := CreateComObject(CLASS_spdRetCustom) as IspdRetCustom;
end;

class function CospdRetCustom.CreateRemote(const MachineName: string): IspdRetCustom;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetCustom) as IspdRetCustom;
end;

class function CospdRetEnvioNFSe.Create: IspdRetEnvioNFSe;
begin
  Result := CreateComObject(CLASS_spdRetEnvioNFSe) as IspdRetEnvioNFSe;
end;

class function CospdRetEnvioNFSe.CreateRemote(const MachineName: string): IspdRetEnvioNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetEnvioNFSe) as IspdRetEnvioNFSe;
end;

class function CospdRetConsultaNFSe.Create: IspdRetConsultaNFSe;
begin
  Result := CreateComObject(CLASS_spdRetConsultaNFSe) as IspdRetConsultaNFSe;
end;

class function CospdRetConsultaNFSe.CreateRemote(const MachineName: string): IspdRetConsultaNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetConsultaNFSe) as IspdRetConsultaNFSe;
end;

class function CospdRetConsultaLoteNFSe.Create: IspdRetConsultaLoteNFSe;
begin
  Result := CreateComObject(CLASS_spdRetConsultaLoteNFSe) as IspdRetConsultaLoteNFSe;
end;

class function CospdRetConsultaLoteNFSe.CreateRemote(const MachineName: string): IspdRetConsultaLoteNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetConsultaLoteNFSe) as IspdRetConsultaLoteNFSe;
end;

class function CospdRetCancelaNFSe.Create: IspdRetCancelaNFSe;
begin
  Result := CreateComObject(CLASS_spdRetCancelaNFSe) as IspdRetCancelaNFSe;
end;

class function CospdRetCancelaNFSe.CreateRemote(const MachineName: string): IspdRetCancelaNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetCancelaNFSe) as IspdRetCancelaNFSe;
end;

class function CospdListRetConsultaNFSe.Create: IspdListRetConsultaNFSe;
begin
  Result := CreateComObject(CLASS_spdListRetConsultaNFSe) as IspdListRetConsultaNFSe;
end;

class function CospdListRetConsultaNFSe.CreateRemote(const MachineName: string): IspdListRetConsultaNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdListRetConsultaNFSe) as IspdListRetConsultaNFSe;
end;

class function CospdRetEnvioSincronoNFSe.Create: IspdRetEnvioSincronoNFSe;
begin
  Result := CreateComObject(CLASS_spdRetEnvioSincronoNFSe) as IspdRetEnvioSincronoNFSe;
end;

class function CospdRetEnvioSincronoNFSe.CreateRemote(const MachineName: string): IspdRetEnvioSincronoNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdRetEnvioSincronoNFSe) as IspdRetEnvioSincronoNFSe;
end;

end.
