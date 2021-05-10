using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using System.Collections;

using NFSeX;
using NFSeDataSetX;
using System.Security.Cryptography.X509Certificates;
using System.IO;

namespace NFSeV2
{
    public partial class frmPrincipal : Form
    {
        private spdNFSeX vNFSe = new spdNFSeX();
        private spdNFSeDataSetX vNFSeDataSet = new spdNFSeDataSetX();
        private XmlDocument xDoc = new XmlDocument();
        public OpenFileDialog AbrirArquivo = new OpenFileDialog();

        public class IniFile
        {
            private readonly string filePath;
            private int capacity = 512;

            [DllImport("kernel32", CharSet = CharSet.Unicode)]
            private static extern int GetPrivateProfileString(string section, string key, string defaultValue, StringBuilder value, int size, string filePath);

            [DllImport("kernel32.dll", CharSet = CharSet.Unicode)]
            static extern int GetPrivateProfileString(string section, string key, string defaultValue, [In, Out] char[] value, int size, string filePath);

            [DllImport("kernel32.dll", CharSet = CharSet.Auto)]
            private static extern int GetPrivateProfileSection(string section, IntPtr keyValue, int size, string filePath);

            [DllImport("kernel32", CharSet = CharSet.Unicode, SetLastError = true)]
            [return: MarshalAs(UnmanagedType.Bool)]
            private static extern bool WritePrivateProfileString(string section, string key, string value, string filePath);

            public IniFile(string Path)
            {
                filePath = Path;
            }

            public string ReadValue(string section, string key, string defaultValue = "")
            {
                var value = new StringBuilder(capacity);
                GetPrivateProfileString(section, key, defaultValue, value, value.Capacity, filePath);
                return value.ToString();
            }

            public string[] ReadSections()
            {
                // first line will not recognize if ini file is saved in UTF-8 with BOM   
                while (true)
                {
                    char[] chars = new char[capacity];
                    int size = GetPrivateProfileString(null, null, "", chars, capacity, filePath);

                    if (size == 0)
                    {
                        return null;
                    }

                    if (size < capacity - 2)
                    {
                        string result = new String(chars, 0, size);
                        string[] sections = result.Split(new char[] { '\0' }, StringSplitOptions.RemoveEmptyEntries);
                        return sections;
                    }

                    capacity = capacity * 2;
                }
            }

            public string[] ReadKeys(string section)
            {
                // first line will not recognize if ini file is saved in UTF-8 with BOM   
                while (true)
                {
                    char[] chars = new char[capacity];
                    int size = GetPrivateProfileString(section, null, "", chars, capacity, filePath);

                    if (size == 0)
                    {
                        return null;
                    }

                    if (size < capacity - 2)
                    {
                        string result = new String(chars, 0, size);
                        string[] keys = result.Split(new char[] { '\0' }, StringSplitOptions.RemoveEmptyEntries);
                        return keys;
                    }

                    capacity = capacity * 2;
                }
            }

            public string[] ReadKeyValuePairs(string section)
            {
                while (true)
                {
                    IntPtr returnedString = Marshal.AllocCoTaskMem(capacity * sizeof(char));
                    int size = GetPrivateProfileSection(section, returnedString, capacity, filePath);

                    if (size == 0)
                    {
                        Marshal.FreeCoTaskMem(returnedString);
                        return null;
                    }

                    if (size < capacity - 2)
                    {
                        string result = Marshal.PtrToStringAuto(returnedString, size - 1);
                        Marshal.FreeCoTaskMem(returnedString);
                        string[] keyValuePairs = result.Split('\0');
                        return keyValuePairs;
                    }

                    Marshal.FreeCoTaskMem(returnedString);
                    capacity = capacity * 2;
                }
            }

            public bool WriteValue(string section, string key, string value)
            {
                bool result = WritePrivateProfileString(section, key, value, filePath);
                return result;
            }

            public bool DeleteSection(string section)
            {
                bool result = WritePrivateProfileString(section, null, null, filePath);
                return result;
            }

            public bool DeleteKey(string section, string key)
            {
                bool result = WritePrivateProfileString(section, key, null, filePath);
                return result;
            }
        }
        public string buscarArquivo(string Titulo, string tipoArquivo)
        {
            AbrirArquivo.Title = Titulo;
            AbrirArquivo.Filter = tipoArquivo;
            AbrirArquivo.FileName = "";
            AbrirArquivo.InitialDirectory = Application.StartupPath;

            DialogResult dr1 = AbrirArquivo.ShowDialog();
            if (dr1 == System.Windows.Forms.DialogResult.OK)
                return AbrirArquivo.FileName;
            else
                return "";
        }

        private void PreencherComboCertificado()
        {
            try
            {
                string[] vetor;
                string _certificado = "";

                _certificado = vNFSe.ListarCertificados();

                if (_certificado != "" & _certificado != null)
                {
                    vetor = _certificado.Split('|');
                    cbNomeCertificado.Items.Clear();

                    for (int i = 0; i <= vetor.Length - 1; i++)
                    {
                        if (vetor[i] != "")
                            cbNomeCertificado.Items.Add(vetor[i]);
                    }
                }

                if (cbNomeCertificado.Items.Count > 0)
                    cbNomeCertificado.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        private void RetornoV2Tipado()
        {
            int vTotal;
            mmTipado.Clear();
            mmTipado.Multiline = true;

            vTotal = vNFSe.RetornoWS.Count();

            for (int i = 0; i < vTotal; i++)
            {
                IncluirLinha(mmTipado, "Status: " + vNFSe.RetornoWS.Items(i).Status);

                if (vNFSe.RetornoWS.Items(i).Status == "EMPROCESSAMENTO") 
                {
                    IncluirLinha(mmTipado, "Protocolo: " + vNFSe.RetornoWS.Items(i).Protocolo);
                    if (vNFSe.RetornoWS.Items(i).Protocolo != "")
                    {
                        edtNumProtocolo.Text = vNFSe.RetornoWS.Items(i).Protocolo;
                    }
                }
                else
                if (vNFSe.RetornoWS.Items(i).Status == "ERRO")
                {
                    IncluirLinha(mmTipado, "Motivo: " + vNFSe.RetornoWS.Items(i).Motivo);
                }
                else
                {
                    IncluirLinha(mmTipado, "Protocolo: " + vNFSe.RetornoWS.Items(i).Protocolo);
                    IncluirLinha(mmTipado, "CNPJ: " + vNFSe.RetornoWS.Items(i).CNPJ);
                    IncluirLinha(mmTipado, "Inscricao Municipal: " + vNFSe.RetornoWS.Items(i).InscricaoMunicipal);
                    IncluirLinha(mmTipado, "Serie do RPS: " + vNFSe.RetornoWS.Items(i).SerieRps);
                    IncluirLinha(mmTipado, "Número do RPS: " + vNFSe.RetornoWS.Items(i).NumeroRps);
                    IncluirLinha(mmTipado, "Número da NFS-e: " + vNFSe.RetornoWS.Items(i).NumeroNFSe);
                    IncluirLinha(mmTipado, "Data de Emissão: " + vNFSe.RetornoWS.Items(i).DataEmissaoNFSe);
                    IncluirLinha(mmTipado, "Código de Verificação: " + vNFSe.RetornoWS.Items(i).CodVerificacao);
                    IncluirLinha(mmTipado, "Situação: " + vNFSe.RetornoWS.Items(i).Situacao);
                    IncluirLinha(mmTipado, "Data De Cancelamento: " + vNFSe.RetornoWS.Items(i).DataCancelamento);
                    IncluirLinha(mmTipado, "Chave de Cancelamento: " + vNFSe.RetornoWS.Items(i).ChaveCancelamento);
                    IncluirLinha(mmTipado, "Tipo: " + vNFSe.RetornoWS.Items(i).Tipo);
                    IncluirLinha(mmTipado, "Motivo: " + vNFSe.RetornoWS.Items(i).Motivo);
                    IncluirLinha(mmTipado, "XML: " + vNFSe.RetornoWS.Items(i).XmlImpressao);
                    IncluirLinha(mmTipado, "Data de Autorização: " + vNFSe.RetornoWS.Items(i).DataAutorizacao);
                    IncluirLinha(mmTipado, "");
                    IncluirLinha(mmTipado, "================================================");
                    IncluirLinha(mmTipado, "");

                    //Tratamentos somente para Demo
                    if (vNFSe.RetornoWS.Items(i).Protocolo != "" )
                    {
                        edtNumProtocolo.Text = vNFSe.RetornoWS.Items(i).Protocolo;
                    }
                    edtNumeroRPS.Text = vNFSe.RetornoWS.Items(i).NumeroRps;
                    edtSerieRPS.Text = vNFSe.RetornoWS.Items(i).SerieRps;
                    edtTipoRPS.Text = vNFSe.RetornoWS.Items(i).Tipo;
                    edtNumeroNFSe.Text = vNFSe.RetornoWS.Items(i).NumeroNFSe;
                    edtChaveCancelamento.Text = vNFSe.RetornoWS.Items(i).ChaveCancelamento;
                    mmXML.Text = vNFSe.RetornoWS.Items(i).XmlImpressao;
                }
            }
        }

        private void RetornoTomadasV2Tipado()
        {
            int vTotal;
            mmTipado.Clear();
            vTotal = vNFSe.RetornoWSNotasTomadas.Count();

            for (int i = 0; i < vTotal; i++)
            {
                IncluirLinha(mmTipado, "Status: " + vNFSe.RetornoWSNotasTomadas.Items(i).Status);
                IncluirLinha(mmTipado, "CNPJ: " + vNFSe.RetornoWSNotasTomadas.Items(i).CNPJ);
                IncluirLinha(mmTipado, "Inscricao Municipal: " + vNFSe.RetornoWSNotasTomadas.Items(i).InscricaoMunicipal);
                IncluirLinha(mmTipado, "Serie do RPS: " + vNFSe.RetornoWSNotasTomadas.Items(i).SerieRps);
                IncluirLinha(mmTipado, "Número do RPS: " + vNFSe.RetornoWSNotasTomadas.Items(i).NumeroRps);
                IncluirLinha(mmTipado, "Número da NFS-e: " + vNFSe.RetornoWSNotasTomadas.Items(i).NumeroNFSe);
                IncluirLinha(mmTipado, "Data de Emissão: " + vNFSe.RetornoWSNotasTomadas.Items(i).DataEmissaoNFSe);
                IncluirLinha(mmTipado, "Código de Verificação: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodVerificacao);
                IncluirLinha(mmTipado, "Situação: " + vNFSe.RetornoWSNotasTomadas.Items(i).Situacao);
                IncluirLinha(mmTipado, "Data De Cancelamento: " + vNFSe.RetornoWSNotasTomadas.Items(i).DataCancelamento);
                IncluirLinha(mmTipado, "Chave de Cancelamento: " + vNFSe.RetornoWSNotasTomadas.Items(i).ChaveCancelamento);
                IncluirLinha(mmTipado, "Tipo: " + vNFSe.RetornoWSNotasTomadas.Items(i).Tipo);
                IncluirLinha(mmTipado, "Motivo: " + vNFSe.RetornoWSNotasTomadas.Items(i).Motivo);

                IncluirLinha(mmTipado, "Valor Serviços: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorServicos);
                IncluirLinha(mmTipado, "Valor Deduções: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorDeducoes);
                IncluirLinha(mmTipado, "Valor Pis: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorPis);
                IncluirLinha(mmTipado, "Valor Cofins: " + vNFSe.RetornoWSNotasTomadas.Items(i).DataAutorizacao);
                IncluirLinha(mmTipado, "Valor Inss: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorInss);
                IncluirLinha(mmTipado, "Valor Ir: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorIr);
                IncluirLinha(mmTipado, "Valor Csll: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorCsll);
                IncluirLinha(mmTipado, "Aliquota Iss: " + vNFSe.RetornoWSNotasTomadas.Items(i).AliquotaIss);
                IncluirLinha(mmTipado, "Valor Iss: " + vNFSe.RetornoWSNotasTomadas.Items(i).ValorIss);
                IncluirLinha(mmTipado, "Iss Retido: " + vNFSe.RetornoWSNotasTomadas.Items(i).IssRetido);
                IncluirLinha(mmTipado, "Data de Autorização: " + vNFSe.RetornoWSNotasTomadas.Items(i).DataAutorizacao);

                IncluirLinha(mmTipado, "Razão Social Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).RazaoSocialPrestador);
                IncluirLinha(mmTipado, "Endereço Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).EnderecoPrestador);
                IncluirLinha(mmTipado, "Número Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).NumeroPrestador);
                IncluirLinha(mmTipado, "Complemento Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).ComplementoPrestador);
                IncluirLinha(mmTipado, "Bairro Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).BairroPrestador);
                IncluirLinha(mmTipado, "Código Cidade Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadePrestador);
                IncluirLinha(mmTipado, "CEP Prestador: " + vNFSe.RetornoWSNotasTomadas.Items(i).CepPrestador);
                IncluirLinha(mmTipado, "CpfCnpj Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).CpfCnpjTomador);
                IncluirLinha(mmTipado, "Insc. Municipal Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).InscMunicipalTomador);
                IncluirLinha(mmTipado, "Razão Social Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).RazaoSocialTomador);
                IncluirLinha(mmTipado, "Endereço Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).EnderecoTomador);
                IncluirLinha(mmTipado, "Número Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).NumeroTomador);
                IncluirLinha(mmTipado, "Complemento Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).ComplementoTomador);
                IncluirLinha(mmTipado, "Bairro Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).BairroTomador);
                IncluirLinha(mmTipado, "Codigo Cidade Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadeTomador);
                IncluirLinha(mmTipado, "CEP Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).CepTomador);
                IncluirLinha(mmTipado, "Email Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).EmailTomador);
                IncluirLinha(mmTipado, "Telefone Tomador: " + vNFSe.RetornoWSNotasTomadas.Items(i).TelefoneTomador);
                IncluirLinha(mmTipado, "Item Lista Servico: " + vNFSe.RetornoWSNotasTomadas.Items(i).ItemListaServico);
                IncluirLinha(mmTipado, "Código CNAE: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodigoCNAE);
                IncluirLinha(mmTipado, "Cod. Tributação Municipio: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodTributacaoMunicipio);
                IncluirLinha(mmTipado, "Codigo Cidade Prestação: " + vNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadePrestacao);
                IncluirLinha(mmTipado, "Discriminação Servico: " + vNFSe.RetornoWSNotasTomadas.Items(i).DiscriminacaoServico);
                IncluirLinha(mmTipado, "XML: " + vNFSe.RetornoWSNotasTomadas.Items(i).XmlImpressao);
                IncluirLinha(mmTipado, "");
                IncluirLinha(mmTipado, "================================================");
                IncluirLinha(mmTipado, "");
            }
        }

        public void RetornoTomadasV2Json()
        {
            mmJson.Clear();
            IncluirLinha(mmJson, vNFSe.RetornoJsonTomadas());
        }

        public void RetornoV2Json()
        {
            mmJson.Clear();
            IncluirLinha(mmJson, vNFSe.RetornoJson());
        }

        public void EnviarEmail()
        {
            string vAnexos = "";

            vAnexos = buscarArquivo("Selecionar XML para envio.", "TX2 (*.tx2)|*.tx2");

            vNFSe.EnviarEmail(vAnexos);
        }

        public void CheckConfig()
        {
            string vCidade = "";
            string vCNPJ = "";
            Boolean vConfig = false;
            
            vCidade = vNFSe.Cidade;
            vCNPJ = vNFSe.CNPJ;

            vConfig = (vCidade != "") & (vCNPJ != "");

            if (vConfig != true)
            {
                throw new System.ArgumentException("'Favor configurar o componente antes de prosseguir!'", "Configurações");
            }    

        }


        public frmPrincipal()
        {
            MessageBox.Show("Antes de Começar, veja o tutorial sobre como usar esta demonstração!", "Seja Bem vindo à TecnoSpeed");
            System.Diagnostics.Process.Start("https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360050351213-Como-utilizar-a-Demonstra%C3%A7%C3%A3o-de-Uso-do-componente-NFSe-V2");
            this.WindowState = FormWindowState.Minimized;
            InitializeComponent();
            vNFSe.Ambiente = NFSeX.Ambiente.akHomologacao;
            pcDados.TabIndex = 0;
            edtLogoEmitente.Text = System.IO.Directory.GetCurrentDirectory() + "\\LogoEmit.jpg";
            edtCNPJSoftwareHouse.Text = "08187168000160";
            edtTokenSoftwareHouse.Text = "";
            PreencherComboCertificado();
            lblAmbiente.Visible = (vNFSe.Ambiente != NFSeX.Ambiente.akHomologacao);
        }
        
        private void tsCidadesHomologadas_Click(object sender, EventArgs e)
        {

        }

        private void AtualizaArquivos_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Atualizando arquivos para a cidade: " + vNFSe.Cidade + " Por favor Aguarde!", "Atenção");
            vNFSe.AtualizarArquivos();
            MessageBox.Show("Atualização concluída para a cidade: " + vNFSe.Cidade, "Atenção", MessageBoxButtons.OK);
        }

        private void IncluirLinha(RichTextBox MemoAux, string pTexto)
        {
            MemoAux.Text = MemoAux.Text + (pTexto) + Environment.NewLine;
        }
        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            vNFSe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text, edtTokenSoftwareHouse.Text);
            vNFSe.LoadConfig(Directory.GetCurrentDirectory() + "\\NFSeConfig.ini");

            edtCidade.Text = vNFSe.Cidade;
            edtNomeCidade.Text = vNFSe.Cidade;
            edtCNPJ.Text = vNFSe.CNPJ;
            edtDocumentoTomador.Text = vNFSe.CNPJ;
            edtInscMunicipal.Text = vNFSe.InscricaoMunicipal;
            edtIMTomador.Text = vNFSe.InscricaoMunicipal;
            cbNomeCertificado.Text = vNFSe.NomeCertificado;
            lblAmbiente.Visible = (vNFSe.Ambiente != NFSeX.Ambiente.akHomologacao);

        }

        private void ConfigIni_Click(object sender, EventArgs e)
        {
            string vNomeCertificado = cbNomeCertificado.Text;
            IniFile vIni = new IniFile(Directory.GetCurrentDirectory() + "\\NFSeConfig.ini");

            vIni.WriteValue("NFSE", "NomeCertificado", vNomeCertificado);

            System.Diagnostics.Process.Start(Directory.GetCurrentDirectory() + "\\NFSeConfig.ini");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string vXMLAux = "";

            CheckConfig();
            
            if (vNFSe.Ambiente != NFSeX.Ambiente.akHomologacao)
              {
                if (System.Windows.Forms.DialogResult.No == MessageBox.Show("O componente está configurado para enviar em ambiente de produção, deseja continuar?", "Atenção!", MessageBoxButtons.YesNo))
                {
                    this.Close();
                }
              }

            vXMLAux = buscarArquivo("Selecionar XML para envio.", "TX2 (*.tx2)|*.tx2");

            if (vXMLAux != "")
            {
                vNFSe.Enviar(vXMLAux);

                RetornoV2Tipado();
                RetornoV2Json();
            }
            else
            {
                MessageBox.Show("Favor selecionar um arquivo TX2","Atenção",MessageBoxButtons.OK);
            }
        }

        private void btnConsultarNota_Click(object sender, EventArgs e)
        {
            CheckConfig();
            vNFSe.Consultar(edtNumeroNFSe.Text, edtNumeroRPS.Text, edtSerieRPS.Text, edtTipoRPS.Text, edtNumProtocolo.Text);
            RetornoV2Tipado();
            RetornoV2Json();
        }

        private void btnCancelarNota_Click(object sender, EventArgs e)
        {
            vNFSe.CancelarNota(edtChaveCancelamento.Text);
            RetornoV2Tipado();
            RetornoV2Json();
        }

        private void btnLogoEmitente_Click(object sender, EventArgs e)
        {
            string vImgLogo = "";

            vImgLogo = buscarArquivo("Selecionar Logotipo Emitente.", "JPEG (*.jpg)|*.jpg");

            edtLogoEmitente.Text = vImgLogo;
        }

        private void btImprimir_Click(object sender, EventArgs e)
        {
            string vTX2Aux = "";
            CheckConfig();
            if (tbCamposCustomizados.Text == "")
            {
                vTX2Aux = buscarArquivo("Selecionar campos customizados.", "TX2 (*.tx2)|*.tx2");
            } else
            {
                vTX2Aux = tbCamposCustomizados.Text;
            }
            vNFSe.Imprimir(mmXML.Text, mmXMLEnvio.Text, vTX2Aux, "");           
        }

        private void btEditar_Click(object sender, EventArgs e)
        {
            string vTX2Aux = "";
            CheckConfig();

            if (tbCamposCustomizados.Text == "")
            {
                vTX2Aux = buscarArquivo("Selecionar campos customizados.", "TX2 (*.tx2)|*.tx2");
            }
            else
            {
                vTX2Aux = tbCamposCustomizados.Text;
            }
            vNFSe.EditarImpressao(mmXML.Text, mmXMLEnvio.Text, vTX2Aux);
        }

        private void btExportar_Click(object sender, EventArgs e)
        {
            string vArquivoAux = "";
            string vTX2Aux = "";
            SaveFileDialog SalvarArquivo = new SaveFileDialog();

            CheckConfig();


            if (tbCamposCustomizados.Text == "")
            {
                vTX2Aux = buscarArquivo("Selecionar campos customizados.", "TX2 (*.tx2)|*.tx2");
            }
            else
            {
                vTX2Aux = tbCamposCustomizados.Text;
            }

            SalvarArquivo.Title = "Salvar PDF";
            SalvarArquivo.Filter = "PDF (*.pdf)|*.pdf";
            SalvarArquivo.FileName = vNFSe.Cidade + ".pdf";
            SalvarArquivo.InitialDirectory = Application.StartupPath;

            if (SalvarArquivo.ShowDialog() == DialogResult.OK)
            {
                vArquivoAux = SalvarArquivo.FileName;
                vNFSe.ExportarImpressaoParaPDF(mmXML.Text, mmXMLEnvio.Text, vTX2Aux, vArquivoAux);
               
            }


            if (ckbEnviarEmailPDF.Checked) 
              EnviarEmail();
        }

        private void btVisualizar_Click(object sender, EventArgs e)
        {
            string vTX2Aux = "";
            CheckConfig();

            if (tbCamposCustomizados.Text == "")
            {
                vTX2Aux = buscarArquivo("Selecionar campos customizados.", "TX2 (*.tx2)|*.tx2");
            }
            else
            {
                vTX2Aux = tbCamposCustomizados.Text;
            }

            vNFSe.VisualizarImpressao(mmXML.Text, mmXMLEnvio.Text, vTX2Aux);
        }

        private void button8_Click(object sender, EventArgs e)
        {

            vNFSe.ConsultarNotasTomadas(edtNomeCidade.Text, edtDocumentoTomador.Text, edtIMTomador.Text, edtDocumentoPrestador.Text, edtIMPrestador.Text, edtDataInicial.Text, edtDataFinal.Text, edtPagina.Text);
            RetornoTomadasV2Tipado();
            RetornoTomadasV2Json();
        }

        private void btnListasCidades_Click(object sender, EventArgs e)
        {
          mmXMLEnvio.Text = vNFSe.ConsultarCidadesHomologadas();
        }

        private void btnGetInitialDate_Click(object sender, EventArgs e)
        {
            edtDataInicial.Text = DateTime.Now.ToString("yyyy-MM" + "-01");
        }

        private void btnGetFinalDate_Click(object sender, EventArgs e)
        {
            edtDataFinal.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360045667933-Configurar-os-Campos-Customizados-da-Impress%C3%A3o");
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360046274694-M%C3%A9todo-Consultar-Notas-Tomadas-Recebidas");            
        }
    }
}
