using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Globalization;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.IO;
using System.Diagnostics;
using InputBoxNs;

namespace NFSeX_Exemplo
{
    public partial class frmMain : Form
    {
        //******************************************************************************************************
        //
        //          Importação de funções externas
        //
        //******************************************************************************************************        

        //Carga de Dlls
        [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, StringBuilder lpReturnedString, int nSize, string lpFileName);
        [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern bool WritePrivateProfileString(string lpAppName, string lpKeyName, string lpString, string lpFileName);

        //******************************************************************************************************
        //
        //          Declaração de variáveis
        //
        //******************************************************************************************************     

        //Declaração de variáveis do componente spdNFSeX        
        NFSeX.spdNFSeX NFSe;
        NFSeX.spdProxyNFSeX ProxyNFSe;
        NFSeConverterX.spdNFSeConverterX NFSeConverter;
        NFSeConverterX.IspdRetEnvioNFSe RetEnvio;
        NFSeConverterX.IspdRetConsultaLoteNFSe RetConsLote;
        NFSeConverterX.IspdRetEnvioSincronoNFSe RetEnvioSincrono;
        NFSeConverterX.IspdRetConsultaNFSe RetConsNFSe;
        NFSeConverterX.IspdRetCancelaNFSe RetCancelamento;
        NFSeDataSetX.IspdNFSeDataSetX NfseDataSet;



        //Caminho para o arquivo de configuração
        string ArqIni;

        public frmMain()
        {
            InitializeComponent();
            NFSe = new NFSeX.spdNFSeX();
            ProxyNFSe = new NFSeX.spdProxyNFSeX();
            NFSeConverter = new NFSeConverterX.spdNFSeConverterX();
            ProxyNFSe.ComponenteNFSe = NFSe;
            RetEnvio = new NFSeConverterX.spdRetEnvioNFSe();
            RetConsLote = new NFSeConverterX.spdRetConsultaLoteNFSe();
            RetEnvioSincrono = new NFSeConverterX.spdRetEnvioSincronoNFSe();
            RetConsNFSe = new NFSeConverterX.spdRetConsultaNFSe();
            RetCancelamento = new NFSeConverterX.spdRetCancelaNFSe();
            NfseDataSet = new NFSeDataSetX.spdNFSeDataSetX();
            //UTF8Encoding = new UTF8Encoding();                  
        }


        //******************************************************************************************************
        //
        //          Tratamento de retornos com o NFSeConverter.
        //
        //******************************************************************************************************  
        private void GetRetornoEnvio(string aXML)
        {
            string _Txt;
            _Txt = "";
            RetEnvio = NFSeConverter.ConverterRetEnvioNFSeTipo(aXML);

            _Txt = "Status: " + RetEnvio.Status;
            _Txt = _Txt + "\nMotivo: " + RetEnvio.Motivo;
            _Txt = _Txt + "\nProtocolo: " + RetEnvio.NumeroProtocolo;

            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }

        private void GetRetornoEnvioSincrono(string aXML)
        {
            string _Txt;
            int _cont;
            _Txt = "";

            RetEnvioSincrono = NFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML);
            _cont = RetEnvioSincrono.ListaDeNFes.Count();

            if (Convert.ToString(RetEnvioSincrono.Status) == "EMPROCESSAMENTO")
            {
                _Txt = "Status: EMPROCESSAMENTO";
            }
            else if (Convert.ToString(RetEnvioSincrono.Status) == "ERRO")
            {
                _Txt = "Status: ERRO ";
                _Txt = _Txt + "\nMotivo: " + RetEnvioSincrono.Motivo;
            }
            else
            {
                for (int i = 0; i < _cont; i++)
                {
                    _Txt = "Status: " + Convert.ToString(RetConsLote.Status);
                    _Txt = _Txt + "\nCNPJ: " + RetEnvioSincrono.ListaDeNFes.Item(i).Cnpj;
                    _Txt = _Txt + "\nInscricao Municipal: " + RetEnvioSincrono.ListaDeNFes.Item(i).InscMunicipal;
                    _Txt = _Txt + "\nSerie RPS: " + RetEnvioSincrono.ListaDeNFes.Item(i).SerieRps;
                    _Txt = _Txt + "\nNúmero do RPS: " + RetEnvioSincrono.ListaDeNFes.Item(i).NumeroRps;
                    _Txt = _Txt + "\nNúmero da NFS-e: " + RetEnvioSincrono.ListaDeNFes.Item(i).NumeroNFSe;
                    _Txt = _Txt + "\nData de Emissão: " + RetEnvioSincrono.ListaDeNFes.Item(i).DataEmissaoNFSe;
                    _Txt = _Txt + "\nCódigo de Verificação: " + RetEnvioSincrono.ListaDeNFes.Item(i).CodVerificacao;
                    _Txt = _Txt + "\nSituação: " + RetEnvioSincrono.ListaDeNFes.Item(i).Situacao;
                    _Txt = _Txt + "\nData de Cancelamento: " + RetEnvioSincrono.ListaDeNFes.Item(i).DataCancelamento;
                    _Txt = _Txt + "\nChave de Cancelamento: " + RetEnvioSincrono.ListaDeNFes.Item(i).ChaveCancelamento;
                    _Txt = _Txt + "\nTipo: " + RetEnvioSincrono.ListaDeNFes.Item(i).Tipo;
                    _Txt = _Txt + "\nMotivo: " + RetEnvioSincrono.Motivo;
                    _Txt = _Txt + "\nXML: " + RetEnvioSincrono.ListaDeNFes.Item(i).Xml;
                    _Txt = _Txt + "\n======================================================================";
                    _Txt = _Txt + "\n";
                }
            }
            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }
        
        private void GetRetornoConsLote(string aXML)
        {
            string _Txt;
            int _cont;
            _Txt = "";

            RetConsLote = NFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML);
            _cont = RetConsLote.ListaDeNFes.Count();

            if (Convert.ToString(RetConsLote.Status) == "EMPROCESSAMENTO")
            {
                _Txt = "Status: EMPROCESSAMENTO";
            }
            else if (Convert.ToString(RetConsLote.Status) == "ERRO")
            {
                _Txt = "Status: ERRO ";
                _Txt = _Txt + "\nMotivo: " + RetConsLote.Motivo;
            }
            else
            {
                for (int i = 0; i < _cont; i++)
                {
                    _Txt = _Txt + "Status: " + Convert.ToString(RetConsLote.Status);
                    _Txt = _Txt + "\nCNPJ: " + RetConsLote.ListaDeNFes.Item(i).Cnpj;
                    _Txt = _Txt + "\nInscricao Municipal: " + RetConsLote.ListaDeNFes.Item(i).InscMunicipal;
                    _Txt = _Txt + "\nSerie RPS: " + RetConsLote.ListaDeNFes.Item(i).SerieRps;
                    _Txt = _Txt + "\nNúmero do RPS: " + RetConsLote.ListaDeNFes.Item(i).NumeroRps;
                    _Txt = _Txt + "\nNúmero da NFS-e: " + RetConsLote.ListaDeNFes.Item(i).NumeroNFSe;
                    _Txt = _Txt + "\nData de Emissão: " + RetConsLote.ListaDeNFes.Item(i).DataEmissaoNFSe;
                    _Txt = _Txt + "\nCódigo de Verificação: " + RetConsLote.ListaDeNFes.Item(i).CodVerificacao;
                    _Txt = _Txt + "\nSituação: " + RetConsLote.ListaDeNFes.Item(i).Situacao;
                    _Txt = _Txt + "\nData de Cancelamento: " + RetConsLote.ListaDeNFes.Item(i).DataCancelamento;
                    _Txt = _Txt + "\nChave de Cancelamento: " + RetConsLote.ListaDeNFes.Item(i).ChaveCancelamento;
                    _Txt = _Txt + "\nTipo: " + RetConsLote.ListaDeNFes.Item(i).Tipo;
                    _Txt = _Txt + "\nMotivo: " + RetConsLote.Motivo;
                    _Txt = _Txt + "\nXML: " + RetConsLote.ListaDeNFes.Item(i).Xml;
                    _Txt = _Txt + "\n======================================================================";
                    _Txt = _Txt + "\n";
                }
            }
            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }




        private void GetRetornoConsNFse(string aXML)
        {
            string _Txt;
            string _respStatus;
            _Txt = "";
            RetConsNFSe = NFSeConverter.ConverterRetConsultarNFSeTipo(aXML);
            _respStatus = Convert.ToString(RetConsNFSe.Status);
            if (_respStatus == "SUCESSO")
            {
                _Txt = "Status: " + RetConsNFSe.Status;
                _Txt = _Txt + "\nCNPJ: " + RetConsNFSe.Cnpj;
                _Txt = _Txt + "\nInscrição Municipal: " + RetConsNFSe.InscMunicipal;
                _Txt = _Txt + "\nSérie do RPS: " + RetConsNFSe.SerieRps;
                _Txt = _Txt + "\nNúmero do RPS: " + RetConsNFSe.NumeroRps;
                _Txt = _Txt + "\nNúmero da NFS-e: " + RetConsNFSe.NumeroNFSe;
                _Txt = _Txt + "\nData de Emissão: " + RetConsNFSe.DataEmissaoNFSe;
                _Txt = _Txt + "\nCódigo de Verificação: " + RetConsNFSe.CodVerificacao;
                _Txt = _Txt + "\nSituação: " + RetConsNFSe.Situacao;
                _Txt = _Txt + "\nData de Cancelamento: " + RetConsNFSe.DataCancelamento;
                _Txt = _Txt + "\nChave de Cancelamento: " + RetConsNFSe.ChaveCancelamento;
                _Txt = _Txt + "\nTipo: " + RetConsNFSe.Tipo;
                _Txt = _Txt + "\nMotivo: " + RetConsNFSe.Motivo;
                _Txt = _Txt + "\nXML: " + RetConsNFSe.Xml;
            }

            else if (_respStatus == "ERRO")
            {
                _Txt = "Status: " + RetConsNFSe.Status;
                _Txt = _Txt + "\nMotivo: " + RetConsNFSe.Motivo;
            }

            else if (_respStatus == "EMPROCESSAMEMTO")
            {
                _Txt = "Status: EMPROCESSAMENTO";

            }
            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }


        private void GetRetornoConsNFseporRPS(string aXML)
        {
            string _Txt;
            string _respStatus;
            _Txt = "";
            RetConsNFSe = NFSeConverter.ConverterRetConsultarNFSePorRpsTipo(aXML);
            _respStatus = Convert.ToString(RetConsNFSe.Status);

            if (_respStatus == "SUCESSO")
            {
                _Txt = "Status: " + RetConsNFSe.Status;
                _Txt = _Txt + "\nCNPJ: " + RetConsNFSe.Cnpj;
                _Txt = _Txt + "\nInscrição Municipal: " + RetConsNFSe.InscMunicipal;
                _Txt = _Txt + "\nSérie do RPS: " + RetConsNFSe.SerieRps;
                _Txt = _Txt + "\nNúmero do RPS: " + RetConsNFSe.NumeroRps;
                _Txt = _Txt + "\nNúmero da NFS-e: " + RetConsNFSe.NumeroNFSe;
                _Txt = _Txt + "\nData de Emissão: " + RetConsNFSe.DataEmissaoNFSe;
                _Txt = _Txt + "\nCódigo de Verificação: " + RetConsNFSe.CodVerificacao;
                _Txt = _Txt + "\nSituação: " + RetConsNFSe.Situacao;
                _Txt = _Txt + "\nData de Cancelamento: " + RetConsNFSe.DataCancelamento;
                _Txt = _Txt + "\nChave de Cancelamento: " + RetConsNFSe.ChaveCancelamento;
                _Txt = _Txt + "\nTipo: " + RetConsNFSe.Tipo;
                _Txt = _Txt + "\nMotivo: " + RetConsNFSe.Motivo;
                _Txt = _Txt + "\nXML: " + RetConsNFSe.Xml;
            }
            else if (_respStatus == "ERRO")
            {
                _Txt = "Status: " + RetConsNFSe.Status;
                _Txt = _Txt + "\nMotivo: " + RetConsNFSe.Motivo;
            }

            else if (_respStatus == "EMPROCESSAMEMTO")
            {
                _Txt = "Status: EMPROCESSAMENTO";
            }
            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }

        private void GetRetornoCancelamento(string aXML)
        {
            string _Txt;
            string _respStatus;
            _Txt = "";
            RetCancelamento = NFSeConverter.ConverterRetCancelarNFSeTipo(aXML);
            _respStatus = (Convert.ToString(RetCancelamento.Status));

            if (_respStatus == "SUCESSO")
            {
                _Txt = "Status: " + RetCancelamento.Status;
                _Txt = _Txt + "\nData do Cancelamento: " + RetCancelamento.DataCancelamento;
            }

            else if (_respStatus == "ERRO")
            {
                _Txt = "Status: " + RetCancelamento.Status;
                _Txt = _Txt + "\nMotivo: " + RetCancelamento.Motivo;
            }

            else if (_respStatus == "EMPROCESSAMEMTO")
            {
                _Txt = "Status: EMPROCESSAMENTO";

            }
            rtbTipado.Text = CaractereEspecial(Convert.ToString(_Txt));
        }
        //-----------------------------------------------------------------------------------------
        //Formata Caracteres especiais
        //-----------------------------------------------------------------------------------------
        private string CaractereEspecial(string _resp)
        {
            UTF8Encoding encorder = new UTF8Encoding();
            byte[] utfbytes = Encoding.UTF8.GetBytes(_resp);
            _resp = encorder.GetString(utfbytes);
            return _resp;
        }
        //-----------------------------------------------------------------------------------------


        /*------ IMPLEMENTAÇÃO REFERENTE A COMANDOS ------- */

        private void btnComandoLoadConfig_Click(object sender, EventArgs e)
        {
            try
            {
                NFSe.LoadConfig(Application.StartupPath + "\\nfseConfig.ini");

                string _comandos = NFSe.ListarComandos();

                lbComandos.Items.Clear();
                tbComandoCidade.Text = NFSe.Cidade;
                lbComandos.Items.AddRange(_comandos.Split(','));
                btnComandoExecutar.Enabled = true;
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void lbComandos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string _nomeComando = lbComandos.Items[lbComandos.SelectedIndex].ToString();
            string _parametros = NFSe.ObterListaParametrosComando(_nomeComando);
            string[] _arrParametros = _parametros.Split(',');

            dsParametros.Tables[0].Clear();
            foreach (string _parametro in _arrParametros)
            {
                DataRow _row = dsParametros.Tables[0].NewRow();
                _row["NomeParametro"] = _parametro;
                dsParametros.Tables[0].Rows.Add(_row);
            }
        }

        private void btnComandoExecutar_Click(object sender, EventArgs e)
        {
            try
            {
                string _nomeComando;
                string _nomeParametro;
                string _valorParametro;
                string _resposta;

                _nomeComando = lbComandos.Items[lbComandos.SelectedIndex].ToString();
                for (int i = 0; i <= dsParametros.Tables[0].Rows.Count - 1; i++)
                {
                    _nomeParametro = dsParametros.Tables[0].Rows[i]["NomeParametro"].ToString();
                    _valorParametro = dsParametros.Tables[0].Rows[i]["ValorParametro"].ToString();
                    NFSe.GravarParametroComando(_nomeComando, _nomeParametro, _valorParametro);
                }

                _resposta = NFSe.ExecutarComando(_nomeComando);
                MostrarXML(_resposta);
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnComandoCopiarRespostaParametro_Click(object sender, EventArgs e)
        {
            dgParametros.Rows[0].Cells[1].Value = rtbXML.Text;
        }



        /* ------- IMPLEMENTAÇÃO REFERENTE AO COMPONENTE ProxyNFSe ----------*/

        //Grava valor no arquivo .ini
        public static bool WriteIniValue(string section, string key, string value, string filename)
        {
            return WritePrivateProfileString(section, key, value, filename);
        }

        private void CheckConfig()
        {
            Boolean _config;

            _config = ((ProxyNFSe.ComponenteNFSe.Cidade != null) && (ProxyNFSe.ComponenteNFSe.CNPJ != null));

            if (_config == false)
            {
                throw new System.InvalidOperationException("Favor configurar o componente antes de prosseguir");
            }
        }

        private void btnEditarConfiguracoes_Click(object sender, EventArgs e)
        {
            try
            {
                string Rs;
                if (cbCertificados.Text != "")
                {                   
                    Rs = cbCertificados.Text;
                    WriteIniValue("NFSE", "NomeCertificado", Rs, ArqIni);
                }
                Process.Start(@ArqIni);
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            try
            {
                ProxyNFSe.ComponenteNFSe.LoadConfig("");
                ProxyNFSe.ComponenteNFSe.LoadLocaisConfig();

                NFSeConverter.Cidade = NFSe.Cidade;
                NFSeConverter.DiretorioEsquemas = NFSe.DiretorioEsquemas;
                NFSeConverter.DiretorioScripts = NFSe.DiretorioEsquemas + "\\..\\Scripts\\";

                tbInscricaoMunicipal.Text = ProxyNFSe.ComponenteNFSe.InscricaoMunicipal;
                tbLocal.Text = ProxyNFSe.ComponenteNFSe.Cidade;
                tbCNPJ.Text = ProxyNFSe.ComponenteNFSe.CNPJ;

                if (ProxyNFSe.ComponenteNFSe.NomeCertificado != null)
                    cbCertificados.Text = ProxyNFSe.ComponenteNFSe.NomeCertificado.Trim();

                tbBrasaoCidade.Text = ProxyNFSe.ComponenteNFSe.DiretorioTemplates + "\\Impressao\\" +
                    ProxyNFSe.ComponenteNFSe.Cidade + "\\Brasao.jpg";
                tbLogotipo.Text = ProxyNFSe.ComponenteNFSe.DiretorioTemplates + "\\Impressao\\LogoEmit.jpg";

                labelAmbProd.Visible = (ProxyNFSe.ComponenteNFSe.Ambiente == NFSeX.Ambiente.akProducao);
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private bool PedirParametrosExtras(ref string aParametrosExtras)
        {
            bool Result = true;

            if (ckbModoAvancado.Checked)
            {
                InputBoxResult Extras = InputBox.Show("Informe os parâmetros extras separados por ponto-e-vírgula, caso sejam necessários. " + (char)13 +
                    "Em caso contrário, apenas clique em OK.", "Informe os parâmetros extras:", "", null);
                if (Extras.OK)
                    aParametrosExtras = Extras.Text;
                else
                    Result = false;
            }
            return Result;
        }

        private void btnGerarXMLViaTX2_Click(object sender, EventArgs e)
        {
            try
            {
                CheckConfig();
                gerarXML();
                rbPrintRPS.Checked = true;
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnAssinarXML_Click(object sender, EventArgs e)
        {
            try
            {
                string _resposta;
                CheckConfig();
                string _Extras = "";
                if (PedirParametrosExtras(ref _Extras))
                {
                    _resposta = ProxyNFSe.Assinar(rtbXML.Text, _Extras);
                    MostrarXML(_resposta);
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            if ((ProxyNFSe.ComponenteNFSe.Ambiente == NFSeX.Ambiente.akProducao) && (MessageBox.Show("O componente está configurado para enviar em ambiente de produção, deseja continuar?",
            "Atenção!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No))
            {
                return;
            }

            CheckConfig();
            
            if (rbEnvioAssincrono.Checked == true)
            {
                EnvioAssincrono();
            }
            else {
                EnvioSincrono();
            }
            
        }

        private void EnvioSincrono()
        {
            try
            {                
                string _Extras = "";

                if (PedirParametrosExtras(ref _Extras))
                {
                    rtbXML.Text = ProxyNFSe.EnviarSincrono(rtbXML.Text, _Extras);

                    System.IO.StreamReader _sr = new
                    System.IO.StreamReader(ProxyNFSe.ComponenteNFSe.UltimoLogRecibo);
                    
                    string _XML = _sr.ReadToEnd();

                    rtbCSV.Text = NFSeConverter.ConverterRetEnvioSincronoNFSe(_XML, "");
                    GetRetornoEnvioSincrono(_XML);

                    rbPrintNFSe.Checked = true;

                    if (rtbXML.Text.IndexOf("-1") != -1)
                    {
                        int _tamanho = (rtbXML.Text.Length) - 3;
                        
                        rtbXMLFormatado.Text = "Envio Síncrono de RPS sem sucesso. " +
                            "A resposta do servidor está gravada no arquivo de log localizado em: " +
                            rtbXML.Text.Substring(3, _tamanho);
                    }
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void EnvioAssincrono()
        {
            try
            {
                string _protocolo;
                string _Extras = "";

                if (PedirParametrosExtras(ref _Extras))
                {
                    _protocolo = ProxyNFSe.Enviar(rtbXML.Text, _Extras);

                    System.IO.StreamReader _sr = new
                    System.IO.StreamReader(ProxyNFSe.ComponenteNFSe.UltimoLogRecibo);
                    string _XML = _sr.ReadToEnd();

                    rtbCSV.Text = NFSeConverter.ConverterRetEnvioNFSe(_XML, "");
                    GetRetornoEnvio(_XML);

                    rtbXML.Text = _protocolo;

                    if (_protocolo.IndexOf("-1") == -1)
                    {
                        rtbXMLFormatado.Text = "Protocolo: " + _protocolo;
                        tbProtocolo.Text = _protocolo;
                    }
                    else
                    {
                        int _tamanho = (_protocolo.Length) - 3;

                        rtbXMLFormatado.Text = "Envio de RPS sem sucesso. " +
                            "A resposta do servidor está gravada no arquivo de log localizado em: " +
                            _protocolo.Substring(3, _tamanho);
                    }
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }
        
        private void btnConsultarLote_Click(object sender, EventArgs e)
        {
            try
            {
                string _resposta;
                CheckConfig();
                string _Extras = "";
                if (PedirParametrosExtras(ref _Extras))
                {
                    _resposta = ProxyNFSe.ConsultarLote(tbProtocolo.Text, _Extras);
                    MostrarXML(_resposta);

                    rtbCSV.Text = NFSeConverter.ConverterRetConsultarLoteNFSe(_resposta, "");
                    GetRetornoConsLote(_resposta);

                    rbPrintNFSe.Checked = true;
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnConsultarNFSe_Click(object sender, EventArgs e)
        {
            try
            {

                rbPrintNFSe.Checked = true;
                string _resposta;
                CheckConfig();
                InputBoxResult Destino = InputBox.Show("Digite o Número da NFSe:", "Consultar NFSe", "", null);
                string _Extras = "";
                if ((Destino.OK) && (Destino.Text != "") && PedirParametrosExtras(ref _Extras))
                {
                    _resposta = ProxyNFSe.ConsultarNota(Destino.Text, _Extras);
                    MostrarXML(_resposta);
                    rbPrintNFSe.Checked = true;
                    rtbCSV.Text = NFSeConverter.ConverterRetConsultarNFSe(_resposta, "");

                    GetRetornoConsNFse(_resposta);
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnCancelarNFSe_Click(object sender, EventArgs e)
        {
            frmCancelamento FCancelar = new frmCancelamento();
            try
            {
                rbPrintNFSe.Checked = true;
                string _resposta;
                DialogResult _result;

                CheckConfig();
                _result = FCancelar.ShowDialog();
                string _Extras = "";
                if ((_result == DialogResult.OK) && PedirParametrosExtras(ref _Extras))
                {
                    _resposta = ProxyNFSe.CancelarNota(FCancelar.tbChaveCancelamento.Text, _Extras);
                    MostrarXML(_resposta);

                    rtbCSV.Text = NFSeConverter.ConverterRetCancelarNFSe(_resposta, "");
                    GetRetornoCancelamento(_resposta);
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        public static List<string> verificaConteudoTX2(string aCaminhoTX2)
        {
            string _valor = "";
            List<string> _campoVazio = new List<string>();
            int _pos = 0;

            if (aCaminhoTX2.Trim() != "")
            {
                System.IO.StreamReader sr = new
                System.IO.StreamReader(aCaminhoTX2);
                string _conteudo = sr.ReadToEnd();
                string[] _quebra = _conteudo.Split('\r');

                foreach (string _campo in _quebra)
                {
                    _pos = _campo.IndexOf("=");
                    if (_pos > 0)
                    {
                        _valor = _campo.Substring(_pos, (_campo.Length - _pos));
                        _valor = _valor.Trim();

                        if (_valor == "=")
                        {
                            /* Adicionar somente o nome do campo, sem o sinal de '=', e concatenado com a quebra de linha */
                            _campoVazio.Add("\n" + _campo.Substring(1, _campo.Length - 2));

                        }
                    }
                }
                sr.Close();
                sr.Dispose();
            }
            return _campoVazio;
        }

        private void gerarXML()
        {
            string _resposta;
            string _AvisoCamposVazios;
            bool _Gerar = true;

            ofdArquivoTX2.InitialDirectory = Application.StartupPath + "\\..\\..\\..\\..\\..\\Utils\\ExemplosTX2\\Padrão Município";
            ofdArquivoTX2.FileName = ProxyNFSe.ComponenteNFSe.Cidade + ".tx2";
            List<string> _campoVazio = new List<string>();

            if (ofdArquivoTX2.ShowDialog() == DialogResult.OK)
            {
                _campoVazio = verificaConteudoTX2(ofdArquivoTX2.FileName);

                if (_campoVazio.Count > 0)
                {
                    _AvisoCamposVazios =
                        "Os campos abaixo estão com seu conteúdo em branco no arquivo TX2:" +
                        (char)13 + (char)13 + string.Join("", _campoVazio.ToArray()) +
                        (char)13 + (char)13 + "Isso pode causar um erro de esquema no XML de envio." +
                        (char)13 + "Deseja gerar o XML mesmo assim?";
                    _Gerar = MessageBox.Show(_AvisoCamposVazios, "Aviso", MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.Yes;
                }

                if (_Gerar)
                {
                    _resposta = NFSeConverter.ConverterEnvioNFSe(ofdArquivoTX2.FileName, "");

                    rtbXMLFormatado.ForeColor = System.Drawing.Color.Blue;
                    rtbXML.Text = _resposta;
                    rtbXMLFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(_resposta);
                }
            }
        }

        /*-------- IMPLEMENTAÇÃO COMUM PARA TODOS --------- */

        private void frmMain_Load(object sender, EventArgs e)
        {
            if (ProxyNFSe.ComponenteNFSe == null)
                throw new Exception("Favor ligar o componente ProxyNFSe ao componente NFSe.");

            Text = "Tecnospeed NFSe - Versão: " + NFSe.Versao;

            ArqIni = Application.StartupPath + "\\nfseConfig.ini";

            tcDados.TabPages.Remove(tpComandos);

            tbBrasaoCidade.Text = ProxyNFSe.ComponenteNFSe.DiretorioTemplates + "Impressao\\Brasão Tecnospeed.jpg";
            tbLogotipo.Text = ProxyNFSe.ComponenteNFSe.DiretorioTemplates + "Impressao\\LogoEmit.jpg";
            tbTituloImpressao.Text = "PREFEITURA MUNICIPAL DE EXEMPLO";
        }

        private void CheckImpressao()
        {
            if (rbPrintRPS.Checked)
            {
                NFSe.ImpressaoModo = NFSeX.ModoImpressao.printRPS;
            }
            else if (rbPrintNFSe.Checked)
            {
                NFSe.ImpressaoModo = NFSeX.ModoImpressao.printNFSe;
            }
        }

        private void MostrarXML(string aXML)
        {
            string _resposta;
            rtbXMLFormatado.ForeColor = System.Drawing.Color.Blue;
            rtbXML.Text = aXML;
            _resposta = ProxyNFSe.ComponenteNFSe.ExtractEscapedContent(aXML);
            rtbXMLFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(_resposta);
        }

        //função para configurar o Brasão, Logotipo e Título para cada cidade
        private void ConfiguraCidade(string aXML)
        {
            NFSe.Impressao_CriarDatasets(aXML);
            NFSe.Impressao_Configurar("BrasaoMunicipio", tbBrasaoCidade.Text);
            NFSe.Impressao_Configurar("LogotipoEmitente", tbLogotipo.Text);
            NFSe.Impressao_Configurar("Titulo", tbTituloImpressao.Text);
            NFSe.Impressao_Configurar("SecretariaResponsavel", tbSecretaria.Text);
            NFSe.Impressao_Configurar("SubtituloNFSe", tbSubtituloNFSe.Text);
            NFSe.Impressao_Configurar("SubtituloRPS", tbSubtituloRPS.Text);

            NFSe.Impressao_Configurar("ArquivoMunicipios", NFSe.DiretorioTemplates + "\\Impressao\\municipios.txt");

            // Impressão modo printRPS: Completar os dados do Prestador
            if (NFSe.ImpressaoModo == NFSeX.ModoImpressao.printRPS)
            {
                NFSe.Impressao_First();

                while (!NFSe.Impressao_Eof())
                {
                    NFSe.Impressao_Editar();
                    NFSe.Impressao_SetCampo("NomeFantasiaPrestador", "NOME FANTASIA PRESTADOR");
                    NFSe.Impressao_SetCampo("RazaoSocialPrestador", "RAZAO SOCIAL PRESTADOR");
                    NFSe.Impressao_SetCampo("EnderecoPrestador", "ENDERECO TESTE PRESTADOR");
                    NFSe.Impressao_SetCampo("UfPrestador", "PR");

                    /* NFSe.Impressao_SetCampo("CodigoMunicipioPrestador", "4106902");
                    NFSe.Impressao_SetCampo("NumeroEnderecoPrestador", "123");
                    NFSe.Impressao_SetCampo("ComplementoEnderecoPrestador", "COMPLEMENTO TESTE");
                    NFSe.Impressao_SetCampo("BairroPrestador", "CENTRO");
                    NFSe.Impressao_SetCampo("CepPrestador", "87020025");
                    NFSe.Impressao_SetCampo("TelefonePrestador", "(44) 3028-3749"); */

                    NFSe.Impressao_SetCampo("EmailPrestador", "comercial@tecnospeed.com.br");
                    NFSe.Impressao_Salvar();
                    NFSe.Impressao_Next();
                }
            }
        }

        private void btnEditarDocumento_Click(object sender, EventArgs e)
        {
            try
            {
                CheckConfig();

                string aXML = "";

                aXML = rtbXML.Text;
                CheckImpressao();
                ConfiguraCidade(aXML);
                NFSe.Impressao_EditarDocumentoCustom("", "");
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                CheckConfig();

                string aXML = "";

                aXML = rtbXML.Text;
                CheckImpressao();
                ConfiguraCidade(aXML);
                NFSe.Impressao_ImprimirDocumentoCustom("", "", "");
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnVisualizar_Click(object sender, EventArgs e)
        {
            try
            {
                CheckConfig();

                string aXML = "";

                aXML = rtbXML.Text;
                CheckImpressao();
                ConfiguraCidade(aXML);
                NFSe.Impressao_VisualizarDocumentoCustom("", "");
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void btnExportarParaPDF_Click(object sender, EventArgs e)
        {
            try
            {
                CheckConfig();

                string aXML = "";

                aXML = rtbXML.Text;
                CheckImpressao();
                ConfiguraCidade(aXML);
                sfdArquivoPDF.InitialDirectory = Application.StartupPath;
                sfdArquivoPDF.DefaultExt = "pdf";
                sfdArquivoPDF.FileName = NFSe.Cidade + ".pdf";
                if (sfdArquivoPDF.ShowDialog() == DialogResult.OK)
                {
                    NFSe.Impressao_ExportarDocumentoParaPDFCustom("", "", sfdArquivoPDF.FileName);
                    ConfigurarOpcoesEmail();
                    EnviarEmail(sfdArquivoPDF.FileName);
                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void ConfigurarOpcoesEmail()
        {
            NFSe.EmailServidorSmtp = "smtp.gmail.com";
            NFSe.EmailUsuario = "testenfse@gmail.com";
            NFSe.EmailSenha = "tecnospeed";
            NFSe.EmailRemetente = "";
            NFSe.EmailAutenticacao = true;
            NFSe.EmailAssunto = "Teste de envio de email";
            NFSe.EmailMensagem = "Esta é uma mensagem teste";
            NFSe.EmailPorta = 587;
        }

        private void EnviarEmail(string aNomeArquivo)
        {
            if (ckbEmailPDF.Checked == true)
            {
                InputBoxResult Destino = InputBox.Show("Envio de Email", "Informe o email destinatário", "email@servidor.com", null);

                if ((Destino.OK) && (Destino.Text != ""))
                {
                    string EmailDestinatario = Destino.Text;
                    if (NFSe.EnviarEmail(EmailDestinatario, aNomeArquivo))
                    {
                        MessageBox.Show("Email enviado com sucesso.");
                    }
                }
            }
        }

        private void btnBrasaoCidade_Click(object sender, EventArgs e)
        {
            ofdImagens.InitialDirectory = Path.GetDirectoryName(tbBrasaoCidade.Text);
            ofdImagens.FileName = Path.GetFileName(tbBrasaoCidade.Text);
            if (ofdImagens.ShowDialog() == DialogResult.OK)
                tbBrasaoCidade.Text = ofdImagens.FileName;

        }

        private void btnLogotipo_Click(object sender, EventArgs e)
        {
            ofdImagens.InitialDirectory = Path.GetDirectoryName(tbLogotipo.Text);
            ofdImagens.FileName = Path.GetFileName(tbLogotipo.Text);
            if (ofdImagens.ShowDialog() == DialogResult.OK)
                tbLogotipo.Text = ofdImagens.FileName;
        }

        private void ckbModoAvancado_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbModoAvancado.Checked)
            {
                tcDados.TabPages.Add(tpComandos);
            }
            else
            {
                tcDados.TabPages.Remove(tpComandos);
            }
        }

        private void TratarExcecao(Exception ex)
        {
            MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnConsultarNFSeporRPS_Click(object sender, EventArgs e)
        {

            FrmConsNFSERPS FConsultarNFSERPS = new FrmConsNFSERPS();
            try
            {
                rbPrintNFSe.Checked = true;
                string _resposta;
                DialogResult dr = new DialogResult();
                CheckConfig();
                dr = FConsultarNFSERPS.ShowDialog();
                string _Extras = "";
                if ((dr == DialogResult.OK) && (PedirParametrosExtras(ref _Extras)))
                {
                    _resposta = ProxyNFSe.ConsultarNFSePorRps(FConsultarNFSERPS.edNumRPS.Text,
                        FConsultarNFSERPS.edSerieRPS.Text, FConsultarNFSERPS.edTipoRPS.Text, _Extras);

                    MostrarXML(_resposta);

                    rtbCSV.Text = NFSeConverter.ConverterRetConsultarNFSePorRPS(_resposta, "");
                    GetRetornoConsNFseporRPS(_resposta);

                }
            }
            catch (Exception ex)
            {
                TratarExcecao(ex);
            }
        }

        private void cbCertificados_DropDown(object sender, EventArgs e)
        {
            string Certificados;
            string[] vetor = null;

            Certificados = NFSe.ListarCertificados();

            if (Certificados != null)
            {
                vetor = Certificados.Split('|');

                cbCertificados.Items.Clear();

                foreach (string _cert in vetor)
                {
                    cbCertificados.Items.Add(_cert);
                }
            }
        }   
    }
}