namespace NFSeX_Exemplo
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.tcDados = new System.Windows.Forms.TabControl();
            this.tpProxyNFSe = new System.Windows.Forms.TabPage();
            this.gbOperacoes = new System.Windows.Forms.GroupBox();
            this.button9 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.btnConverterNotasTomadas = new System.Windows.Forms.Button();
            this.btnConsultarNotasTomadas = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btnConsultarNFSeporRPS = new System.Windows.Forms.Button();
            this.btnGerarXMLViaTX2 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.cbCertificados = new System.Windows.Forms.ComboBox();
            this.btnCancelarNFSe = new System.Windows.Forms.Button();
            this.btnConsultarNFSe = new System.Windows.Forms.Button();
            this.btnConsultarLote = new System.Windows.Forms.Button();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.btnAssinarXML = new System.Windows.Forms.Button();
            this.btnLoadConfig = new System.Windows.Forms.Button();
            this.btnEditarConfiguracoes = new System.Windows.Forms.Button();
            this.gbConfiguracoes = new System.Windows.Forms.GroupBox();
            this.ckbModoAvancado = new System.Windows.Forms.CheckBox();
            this.rbEnvioAssincrono = new System.Windows.Forms.RadioButton();
            this.label4 = new System.Windows.Forms.Label();
            this.rbEnvioSincrono = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tbProtocolo = new System.Windows.Forms.TextBox();
            this.tbInscricaoMunicipal = new System.Windows.Forms.TextBox();
            this.tbCNPJ = new System.Windows.Forms.TextBox();
            this.tbLocal = new System.Windows.Forms.TextBox();
            this.tpConfigurarImpressao = new System.Windows.Forms.TabPage();
            this.gbConfigurarImpressao = new System.Windows.Forms.GroupBox();
            this.label12 = new System.Windows.Forms.Label();
            this.tbSubtituloRPS = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.tbSubtituloNFSe = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.tbSecretaria = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.btnLogotipo = new System.Windows.Forms.Button();
            this.btnBrasaoCidade = new System.Windows.Forms.Button();
            this.tbTituloImpressao = new System.Windows.Forms.TextBox();
            this.tbLogotipo = new System.Windows.Forms.TextBox();
            this.tbBrasaoCidade = new System.Windows.Forms.TextBox();
            this.tpComandos = new System.Windows.Forms.TabPage();
            this.btnComandoCopiarRespostaParametro = new System.Windows.Forms.Button();
            this.btnComandoExecutar = new System.Windows.Forms.Button();
            this.btnComandoLoadConfig = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.lbComandos = new System.Windows.Forms.ListBox();
            this.tbComandoCidade = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.dgParametros = new System.Windows.Forms.DataGridView();
            this.nomeParametroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.valorParametroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dsParametros = new System.Data.DataSet();
            this.dtParametros = new System.Data.DataTable();
            this.dataColumn1 = new System.Data.DataColumn();
            this.dataColumn2 = new System.Data.DataColumn();
            this.tcCSV = new System.Windows.Forms.TabControl();
            this.tbXMLFormatado = new System.Windows.Forms.TabPage();
            this.rtbXMLFormatado = new System.Windows.Forms.RichTextBox();
            this.tpXML = new System.Windows.Forms.TabPage();
            this.rtbXML = new System.Windows.Forms.RichTextBox();
            this.tbCSV = new System.Windows.Forms.TabPage();
            this.rtbCSV = new System.Windows.Forms.RichTextBox();
            this.tbTipado = new System.Windows.Forms.TabPage();
            this.rtbTipado = new System.Windows.Forms.RichTextBox();
            this.ofdArquivoTX2 = new System.Windows.Forms.OpenFileDialog();
            this.sfdArquivoPDF = new System.Windows.Forms.SaveFileDialog();
            this.ofdImagens = new System.Windows.Forms.OpenFileDialog();
            this.gbOperacoesImpressao = new System.Windows.Forms.GroupBox();
            this.ckbEmailPDF = new System.Windows.Forms.CheckBox();
            this.btnVisualizar = new System.Windows.Forms.Button();
            this.btnExportarParaPDF = new System.Windows.Forms.Button();
            this.btnImprimir = new System.Windows.Forms.Button();
            this.btnEditarDocumento = new System.Windows.Forms.Button();
            this.gbImpressao = new System.Windows.Forms.GroupBox();
            this.rbPrintNFSe = new System.Windows.Forms.RadioButton();
            this.rbPrintRPS = new System.Windows.Forms.RadioButton();
            this.labelAmbProd = new System.Windows.Forms.Label();
            this.tcDados.SuspendLayout();
            this.tpProxyNFSe.SuspendLayout();
            this.gbOperacoes.SuspendLayout();
            this.gbConfiguracoes.SuspendLayout();
            this.tpConfigurarImpressao.SuspendLayout();
            this.gbConfigurarImpressao.SuspendLayout();
            this.tpComandos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgParametros)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsParametros)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtParametros)).BeginInit();
            this.tcCSV.SuspendLayout();
            this.tbXMLFormatado.SuspendLayout();
            this.tpXML.SuspendLayout();
            this.tbCSV.SuspendLayout();
            this.tbTipado.SuspendLayout();
            this.gbOperacoesImpressao.SuspendLayout();
            this.gbImpressao.SuspendLayout();
            this.SuspendLayout();
            // 
            // tcDados
            // 
            this.tcDados.Controls.Add(this.tpProxyNFSe);
            this.tcDados.Controls.Add(this.tpConfigurarImpressao);
            this.tcDados.Controls.Add(this.tpComandos);
            this.tcDados.Location = new System.Drawing.Point(1, 2);
            this.tcDados.Name = "tcDados";
            this.tcDados.SelectedIndex = 0;
            this.tcDados.Size = new System.Drawing.Size(683, 324);
            this.tcDados.TabIndex = 1;
            // 
            // tpProxyNFSe
            // 
            this.tpProxyNFSe.Controls.Add(this.gbOperacoes);
            this.tpProxyNFSe.Controls.Add(this.gbConfiguracoes);
            this.tpProxyNFSe.Location = new System.Drawing.Point(4, 22);
            this.tpProxyNFSe.Name = "tpProxyNFSe";
            this.tpProxyNFSe.Padding = new System.Windows.Forms.Padding(3);
            this.tpProxyNFSe.Size = new System.Drawing.Size(675, 298);
            this.tpProxyNFSe.TabIndex = 0;
            this.tpProxyNFSe.Text = "Envio de Notas pelo Componente ProxyNFSe";
            this.tpProxyNFSe.UseVisualStyleBackColor = true;
            // 
            // gbOperacoes
            // 
            this.gbOperacoes.Controls.Add(this.button9);
            this.gbOperacoes.Controls.Add(this.button8);
            this.gbOperacoes.Controls.Add(this.button7);
            this.gbOperacoes.Controls.Add(this.button6);
            this.gbOperacoes.Controls.Add(this.button5);
            this.gbOperacoes.Controls.Add(this.button4);
            this.gbOperacoes.Controls.Add(this.btnConverterNotasTomadas);
            this.gbOperacoes.Controls.Add(this.btnConsultarNotasTomadas);
            this.gbOperacoes.Controls.Add(this.button1);
            this.gbOperacoes.Controls.Add(this.btnConsultarNFSeporRPS);
            this.gbOperacoes.Controls.Add(this.btnGerarXMLViaTX2);
            this.gbOperacoes.Controls.Add(this.label7);
            this.gbOperacoes.Controls.Add(this.cbCertificados);
            this.gbOperacoes.Controls.Add(this.btnCancelarNFSe);
            this.gbOperacoes.Controls.Add(this.btnConsultarNFSe);
            this.gbOperacoes.Controls.Add(this.btnConsultarLote);
            this.gbOperacoes.Controls.Add(this.btnEnviar);
            this.gbOperacoes.Controls.Add(this.btnAssinarXML);
            this.gbOperacoes.Controls.Add(this.btnLoadConfig);
            this.gbOperacoes.Controls.Add(this.btnEditarConfiguracoes);
            this.gbOperacoes.Location = new System.Drawing.Point(197, 3);
            this.gbOperacoes.Name = "gbOperacoes";
            this.gbOperacoes.Size = new System.Drawing.Size(472, 289);
            this.gbOperacoes.TabIndex = 1;
            this.gbOperacoes.TabStop = false;
            this.gbOperacoes.Text = "Operações";
            // 
            // button9
            // 
            this.button9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button9.Location = new System.Drawing.Point(322, 245);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(144, 29);
            this.button9.TabIndex = 21;
            this.button9.Text = "Converter Cancelada";
            this.button9.UseVisualStyleBackColor = true;
            // 
            // button8
            // 
            this.button8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button8.Location = new System.Drawing.Point(322, 207);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(144, 33);
            this.button8.TabIndex = 20;
            this.button8.Text = "Converter NFSe RPS";
            this.button8.UseVisualStyleBackColor = true;
            // 
            // button7
            // 
            this.button7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button7.Location = new System.Drawing.Point(322, 172);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(144, 30);
            this.button7.TabIndex = 19;
            this.button7.Text = "Converter NFSe";
            this.button7.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button6.Location = new System.Drawing.Point(322, 134);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(144, 29);
            this.button6.TabIndex = 18;
            this.button6.Text = "Converter Cons. Lote";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button5.Location = new System.Drawing.Point(322, 98);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(144, 30);
            this.button5.TabIndex = 17;
            this.button5.Text = "Converter Sinc";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button4.Location = new System.Drawing.Point(322, 63);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(144, 28);
            this.button4.TabIndex = 16;
            this.button4.Text = "Converter Envia";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // btnConverterNotasTomadas
            // 
            this.btnConverterNotasTomadas.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.btnConverterNotasTomadas.Location = new System.Drawing.Point(152, 246);
            this.btnConverterNotasTomadas.Name = "btnConverterNotasTomadas";
            this.btnConverterNotasTomadas.Size = new System.Drawing.Size(164, 29);
            this.btnConverterNotasTomadas.TabIndex = 15;
            this.btnConverterNotasTomadas.Text = "Converter Notas Tomadas";
            this.btnConverterNotasTomadas.UseVisualStyleBackColor = true;
            this.btnConverterNotasTomadas.Click += new System.EventHandler(this.btnConverterNotasTomadas_Click);
            // 
            // btnConsultarNotasTomadas
            // 
            this.btnConsultarNotasTomadas.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.btnConsultarNotasTomadas.Location = new System.Drawing.Point(152, 208);
            this.btnConsultarNotasTomadas.Name = "btnConsultarNotasTomadas";
            this.btnConsultarNotasTomadas.Size = new System.Drawing.Size(164, 32);
            this.btnConsultarNotasTomadas.TabIndex = 14;
            this.btnConsultarNotasTomadas.Text = "Consultar Notas Tomadas";
            this.btnConsultarNotasTomadas.UseVisualStyleBackColor = true;
            this.btnConsultarNotasTomadas.Click += new System.EventHandler(this.btnConsultarNotasTomadas_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.button1.Location = new System.Drawing.Point(9, 247);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(139, 29);
            this.button1.TabIndex = 13;
            this.button1.Text = "&6. Consultar Sit Lote";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // btnConsultarNFSeporRPS
            // 
            this.btnConsultarNFSeporRPS.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConsultarNFSeporRPS.Location = new System.Drawing.Point(152, 98);
            this.btnConsultarNFSeporRPS.Name = "btnConsultarNFSeporRPS";
            this.btnConsultarNFSeporRPS.Size = new System.Drawing.Size(164, 30);
            this.btnConsultarNFSeporRPS.TabIndex = 10;
            this.btnConsultarNFSeporRPS.Text = "&8. Consultar NFSe p/ RPS";
            this.btnConsultarNFSeporRPS.UseVisualStyleBackColor = true;
            this.btnConsultarNFSeporRPS.Click += new System.EventHandler(this.btnConsultarNFSeporRPS_Click);
            // 
            // btnGerarXMLViaTX2
            // 
            this.btnGerarXMLViaTX2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGerarXMLViaTX2.Location = new System.Drawing.Point(9, 134);
            this.btnGerarXMLViaTX2.Name = "btnGerarXMLViaTX2";
            this.btnGerarXMLViaTX2.Size = new System.Drawing.Size(139, 30);
            this.btnGerarXMLViaTX2.TabIndex = 3;
            this.btnGerarXMLViaTX2.Text = "&3. Gerar XML Via TX2";
            this.btnGerarXMLViaTX2.UseVisualStyleBackColor = true;
            this.btnGerarXMLViaTX2.Click += new System.EventHandler(this.btnGerarXMLViaTX2_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 19);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 9;
            this.label7.Text = "Certificado";
            // 
            // cbCertificados
            // 
            this.cbCertificados.FormattingEnabled = true;
            this.cbCertificados.Location = new System.Drawing.Point(9, 35);
            this.cbCertificados.Name = "cbCertificados";
            this.cbCertificados.Size = new System.Drawing.Size(457, 21);
            this.cbCertificados.TabIndex = 0;
            this.cbCertificados.DropDown += new System.EventHandler(this.cbCertificados_DropDown);
            // 
            // btnCancelarNFSe
            // 
            this.btnCancelarNFSe.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelarNFSe.Location = new System.Drawing.Point(152, 172);
            this.btnCancelarNFSe.Name = "btnCancelarNFSe";
            this.btnCancelarNFSe.Size = new System.Drawing.Size(164, 30);
            this.btnCancelarNFSe.TabIndex = 8;
            this.btnCancelarNFSe.Text = "&10. Cancelar NFSe";
            this.btnCancelarNFSe.UseVisualStyleBackColor = true;
            this.btnCancelarNFSe.Click += new System.EventHandler(this.btnCancelarNFSe_Click);
            // 
            // btnConsultarNFSe
            // 
            this.btnConsultarNFSe.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConsultarNFSe.Location = new System.Drawing.Point(152, 134);
            this.btnConsultarNFSe.Name = "btnConsultarNFSe";
            this.btnConsultarNFSe.Size = new System.Drawing.Size(164, 30);
            this.btnConsultarNFSe.TabIndex = 7;
            this.btnConsultarNFSe.Text = "&9. Consultar NFSe";
            this.btnConsultarNFSe.UseVisualStyleBackColor = true;
            this.btnConsultarNFSe.Click += new System.EventHandler(this.btnConsultarNFSe_Click);
            // 
            // btnConsultarLote
            // 
            this.btnConsultarLote.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConsultarLote.Location = new System.Drawing.Point(152, 61);
            this.btnConsultarLote.Name = "btnConsultarLote";
            this.btnConsultarLote.Size = new System.Drawing.Size(164, 30);
            this.btnConsultarLote.TabIndex = 6;
            this.btnConsultarLote.Text = "&7. Consultar Lote RPS";
            this.btnConsultarLote.UseVisualStyleBackColor = true;
            this.btnConsultarLote.Click += new System.EventHandler(this.btnConsultarLote_Click);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEnviar.Location = new System.Drawing.Point(9, 209);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(139, 30);
            this.btnEnviar.TabIndex = 5;
            this.btnEnviar.Text = "&5. Enviar RPS";
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // btnAssinarXML
            // 
            this.btnAssinarXML.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAssinarXML.Location = new System.Drawing.Point(9, 172);
            this.btnAssinarXML.Name = "btnAssinarXML";
            this.btnAssinarXML.Size = new System.Drawing.Size(139, 30);
            this.btnAssinarXML.TabIndex = 4;
            this.btnAssinarXML.Text = "&4. Assinar XML";
            this.btnAssinarXML.UseVisualStyleBackColor = true;
            this.btnAssinarXML.Click += new System.EventHandler(this.btnAssinarXML_Click);
            // 
            // btnLoadConfig
            // 
            this.btnLoadConfig.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLoadConfig.Location = new System.Drawing.Point(9, 98);
            this.btnLoadConfig.Name = "btnLoadConfig";
            this.btnLoadConfig.Size = new System.Drawing.Size(139, 30);
            this.btnLoadConfig.TabIndex = 2;
            this.btnLoadConfig.Text = "&2. LoadConfig";
            this.btnLoadConfig.UseVisualStyleBackColor = true;
            this.btnLoadConfig.Click += new System.EventHandler(this.btnLoadConfig_Click);
            // 
            // btnEditarConfiguracoes
            // 
            this.btnEditarConfiguracoes.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEditarConfiguracoes.Location = new System.Drawing.Point(9, 61);
            this.btnEditarConfiguracoes.Name = "btnEditarConfiguracoes";
            this.btnEditarConfiguracoes.Size = new System.Drawing.Size(139, 30);
            this.btnEditarConfiguracoes.TabIndex = 1;
            this.btnEditarConfiguracoes.Text = "&1. Abrir nfseConfig.ini";
            this.btnEditarConfiguracoes.UseVisualStyleBackColor = true;
            this.btnEditarConfiguracoes.Click += new System.EventHandler(this.btnEditarConfiguracoes_Click);
            // 
            // gbConfiguracoes
            // 
            this.gbConfiguracoes.Controls.Add(this.ckbModoAvancado);
            this.gbConfiguracoes.Controls.Add(this.rbEnvioAssincrono);
            this.gbConfiguracoes.Controls.Add(this.label4);
            this.gbConfiguracoes.Controls.Add(this.rbEnvioSincrono);
            this.gbConfiguracoes.Controls.Add(this.label3);
            this.gbConfiguracoes.Controls.Add(this.label2);
            this.gbConfiguracoes.Controls.Add(this.label1);
            this.gbConfiguracoes.Controls.Add(this.tbProtocolo);
            this.gbConfiguracoes.Controls.Add(this.tbInscricaoMunicipal);
            this.gbConfiguracoes.Controls.Add(this.tbCNPJ);
            this.gbConfiguracoes.Controls.Add(this.tbLocal);
            this.gbConfiguracoes.Location = new System.Drawing.Point(5, 3);
            this.gbConfiguracoes.Name = "gbConfiguracoes";
            this.gbConfiguracoes.Size = new System.Drawing.Size(186, 289);
            this.gbConfiguracoes.TabIndex = 0;
            this.gbConfiguracoes.TabStop = false;
            this.gbConfiguracoes.Text = "Configurações";
            // 
            // ckbModoAvancado
            // 
            this.ckbModoAvancado.AutoSize = true;
            this.ckbModoAvancado.Location = new System.Drawing.Point(8, 214);
            this.ckbModoAvancado.Name = "ckbModoAvancado";
            this.ckbModoAvancado.Size = new System.Drawing.Size(105, 17);
            this.ckbModoAvancado.TabIndex = 8;
            this.ckbModoAvancado.Text = "Modo Avançado";
            this.ckbModoAvancado.UseVisualStyleBackColor = true;
            this.ckbModoAvancado.CheckedChanged += new System.EventHandler(this.ckbModoAvancado_CheckedChanged);
            // 
            // rbEnvioAssincrono
            // 
            this.rbEnvioAssincrono.AutoSize = true;
            this.rbEnvioAssincrono.Checked = true;
            this.rbEnvioAssincrono.Location = new System.Drawing.Point(8, 259);
            this.rbEnvioAssincrono.Name = "rbEnvioAssincrono";
            this.rbEnvioAssincrono.Size = new System.Drawing.Size(112, 17);
            this.rbEnvioAssincrono.TabIndex = 12;
            this.rbEnvioAssincrono.TabStop = true;
            this.rbEnvioAssincrono.Text = "Enviar Assíncrono";
            this.rbEnvioAssincrono.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 162);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(107, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Número do Protocolo";
            // 
            // rbEnvioSincrono
            // 
            this.rbEnvioSincrono.AutoSize = true;
            this.rbEnvioSincrono.Location = new System.Drawing.Point(8, 236);
            this.rbEnvioSincrono.Name = "rbEnvioSincrono";
            this.rbEnvioSincrono.Size = new System.Drawing.Size(102, 17);
            this.rbEnvioSincrono.TabIndex = 11;
            this.rbEnvioSincrono.Text = "Enviar Síncrono";
            this.rbEnvioSincrono.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 118);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(146, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Inscrição Municipal Prestador";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 73);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "CNPJ Prestador";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(2, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Município";
            // 
            // tbProtocolo
            // 
            this.tbProtocolo.Location = new System.Drawing.Point(8, 178);
            this.tbProtocolo.Name = "tbProtocolo";
            this.tbProtocolo.Size = new System.Drawing.Size(174, 20);
            this.tbProtocolo.TabIndex = 3;
            // 
            // tbInscricaoMunicipal
            // 
            this.tbInscricaoMunicipal.Location = new System.Drawing.Point(7, 134);
            this.tbInscricaoMunicipal.Name = "tbInscricaoMunicipal";
            this.tbInscricaoMunicipal.Size = new System.Drawing.Size(174, 20);
            this.tbInscricaoMunicipal.TabIndex = 2;
            // 
            // tbCNPJ
            // 
            this.tbCNPJ.Location = new System.Drawing.Point(7, 89);
            this.tbCNPJ.Name = "tbCNPJ";
            this.tbCNPJ.Size = new System.Drawing.Size(174, 20);
            this.tbCNPJ.TabIndex = 1;
            // 
            // tbLocal
            // 
            this.tbLocal.Location = new System.Drawing.Point(6, 44);
            this.tbLocal.Name = "tbLocal";
            this.tbLocal.Size = new System.Drawing.Size(174, 20);
            this.tbLocal.TabIndex = 0;
            // 
            // tpConfigurarImpressao
            // 
            this.tpConfigurarImpressao.Controls.Add(this.gbConfigurarImpressao);
            this.tpConfigurarImpressao.Location = new System.Drawing.Point(4, 22);
            this.tpConfigurarImpressao.Name = "tpConfigurarImpressao";
            this.tpConfigurarImpressao.Padding = new System.Windows.Forms.Padding(3);
            this.tpConfigurarImpressao.Size = new System.Drawing.Size(675, 298);
            this.tpConfigurarImpressao.TabIndex = 2;
            this.tpConfigurarImpressao.Text = "Configurar Impressão";
            this.tpConfigurarImpressao.UseVisualStyleBackColor = true;
            // 
            // gbConfigurarImpressao
            // 
            this.gbConfigurarImpressao.Controls.Add(this.label12);
            this.gbConfigurarImpressao.Controls.Add(this.tbSubtituloRPS);
            this.gbConfigurarImpressao.Controls.Add(this.label13);
            this.gbConfigurarImpressao.Controls.Add(this.tbSubtituloNFSe);
            this.gbConfigurarImpressao.Controls.Add(this.label11);
            this.gbConfigurarImpressao.Controls.Add(this.tbSecretaria);
            this.gbConfigurarImpressao.Controls.Add(this.label10);
            this.gbConfigurarImpressao.Controls.Add(this.label9);
            this.gbConfigurarImpressao.Controls.Add(this.label8);
            this.gbConfigurarImpressao.Controls.Add(this.btnLogotipo);
            this.gbConfigurarImpressao.Controls.Add(this.btnBrasaoCidade);
            this.gbConfigurarImpressao.Controls.Add(this.tbTituloImpressao);
            this.gbConfigurarImpressao.Controls.Add(this.tbLogotipo);
            this.gbConfigurarImpressao.Controls.Add(this.tbBrasaoCidade);
            this.gbConfigurarImpressao.Location = new System.Drawing.Point(7, 5);
            this.gbConfigurarImpressao.Name = "gbConfigurarImpressao";
            this.gbConfigurarImpressao.Size = new System.Drawing.Size(662, 287);
            this.gbConfigurarImpressao.TabIndex = 3;
            this.gbConfigurarImpressao.TabStop = false;
            this.gbConfigurarImpressao.Text = "Configurações";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(305, 157);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(111, 13);
            this.label12.TabIndex = 19;
            this.label12.Text = "Subtítulo para o RPS:";
            // 
            // tbSubtituloRPS
            // 
            this.tbSubtituloRPS.Location = new System.Drawing.Point(308, 173);
            this.tbSubtituloRPS.Name = "tbSubtituloRPS";
            this.tbSubtituloRPS.Size = new System.Drawing.Size(292, 20);
            this.tbSubtituloRPS.TabIndex = 20;
            this.tbSubtituloRPS.Text = "RECIBO PROVISÓRIO DE SERVIÇO - RPS";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 157);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(116, 13);
            this.label13.TabIndex = 17;
            this.label13.Text = "Subtítulo para a NFSe:";
            // 
            // tbSubtituloNFSe
            // 
            this.tbSubtituloNFSe.Location = new System.Drawing.Point(9, 173);
            this.tbSubtituloNFSe.Name = "tbSubtituloNFSe";
            this.tbSubtituloNFSe.Size = new System.Drawing.Size(293, 20);
            this.tbSubtituloNFSe.TabIndex = 18;
            this.tbSubtituloNFSe.Text = "NOTA FISCAL DE SERVIÇOS ELETRÔNICA - NFS-e";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(305, 114);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(171, 13);
            this.label11.TabIndex = 15;
            this.label11.Text = "Secretaria responsável pela NFSe:";
            // 
            // tbSecretaria
            // 
            this.tbSecretaria.Location = new System.Drawing.Point(308, 130);
            this.tbSecretaria.Name = "tbSecretaria";
            this.tbSecretaria.Size = new System.Drawing.Size(292, 20);
            this.tbSecretaria.TabIndex = 16;
            this.tbSecretaria.Text = "SECRETARIA MUNICIPAL DE FINANÇAS PÚBLICAS";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 114);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(110, 13);
            this.label10.TabIndex = 7;
            this.label10.Text = "Título do RPS/NFSe:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 71);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(95, 13);
            this.label9.TabIndex = 4;
            this.label9.Text = "Logotipo Emitente:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 23);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(94, 13);
            this.label8.TabIndex = 1;
            this.label8.Text = "Brasão da Cidade:";
            // 
            // btnLogotipo
            // 
            this.btnLogotipo.Location = new System.Drawing.Point(616, 87);
            this.btnLogotipo.Name = "btnLogotipo";
            this.btnLogotipo.Size = new System.Drawing.Size(33, 20);
            this.btnLogotipo.TabIndex = 6;
            this.btnLogotipo.Text = "...";
            this.btnLogotipo.UseVisualStyleBackColor = true;
            this.btnLogotipo.Click += new System.EventHandler(this.btnLogotipo_Click);
            // 
            // btnBrasaoCidade
            // 
            this.btnBrasaoCidade.Location = new System.Drawing.Point(616, 39);
            this.btnBrasaoCidade.Name = "btnBrasaoCidade";
            this.btnBrasaoCidade.Size = new System.Drawing.Size(33, 20);
            this.btnBrasaoCidade.TabIndex = 3;
            this.btnBrasaoCidade.Text = "...";
            this.btnBrasaoCidade.UseVisualStyleBackColor = true;
            this.btnBrasaoCidade.Click += new System.EventHandler(this.btnBrasaoCidade_Click);
            // 
            // tbTituloImpressao
            // 
            this.tbTituloImpressao.Location = new System.Drawing.Point(9, 130);
            this.tbTituloImpressao.Name = "tbTituloImpressao";
            this.tbTituloImpressao.Size = new System.Drawing.Size(293, 20);
            this.tbTituloImpressao.TabIndex = 8;
            this.tbTituloImpressao.Text = "PREFEITURA MUNICIPAL DE EXEMPLO";
            // 
            // tbLogotipo
            // 
            this.tbLogotipo.Location = new System.Drawing.Point(9, 87);
            this.tbLogotipo.Name = "tbLogotipo";
            this.tbLogotipo.Size = new System.Drawing.Size(591, 20);
            this.tbLogotipo.TabIndex = 5;
            // 
            // tbBrasaoCidade
            // 
            this.tbBrasaoCidade.Location = new System.Drawing.Point(9, 39);
            this.tbBrasaoCidade.Name = "tbBrasaoCidade";
            this.tbBrasaoCidade.Size = new System.Drawing.Size(591, 20);
            this.tbBrasaoCidade.TabIndex = 2;
            // 
            // tpComandos
            // 
            this.tpComandos.Controls.Add(this.btnComandoCopiarRespostaParametro);
            this.tpComandos.Controls.Add(this.btnComandoExecutar);
            this.tpComandos.Controls.Add(this.btnComandoLoadConfig);
            this.tpComandos.Controls.Add(this.label6);
            this.tpComandos.Controls.Add(this.lbComandos);
            this.tpComandos.Controls.Add(this.tbComandoCidade);
            this.tpComandos.Controls.Add(this.label5);
            this.tpComandos.Controls.Add(this.dgParametros);
            this.tpComandos.Location = new System.Drawing.Point(4, 22);
            this.tpComandos.Name = "tpComandos";
            this.tpComandos.Padding = new System.Windows.Forms.Padding(3);
            this.tpComandos.Size = new System.Drawing.Size(675, 298);
            this.tpComandos.TabIndex = 1;
            this.tpComandos.Text = "Envio de Notas Utilizando Comandos";
            this.tpComandos.UseVisualStyleBackColor = true;
            // 
            // btnComandoCopiarRespostaParametro
            // 
            this.btnComandoCopiarRespostaParametro.Location = new System.Drawing.Point(177, 269);
            this.btnComandoCopiarRespostaParametro.Name = "btnComandoCopiarRespostaParametro";
            this.btnComandoCopiarRespostaParametro.Size = new System.Drawing.Size(175, 23);
            this.btnComandoCopiarRespostaParametro.TabIndex = 7;
            this.btnComandoCopiarRespostaParametro.Text = "&Copiar resposta para parâmetro";
            this.btnComandoCopiarRespostaParametro.UseVisualStyleBackColor = true;
            this.btnComandoCopiarRespostaParametro.Click += new System.EventHandler(this.btnComandoCopiarRespostaParametro_Click);
            // 
            // btnComandoExecutar
            // 
            this.btnComandoExecutar.Enabled = false;
            this.btnComandoExecutar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnComandoExecutar.Location = new System.Drawing.Point(8, 269);
            this.btnComandoExecutar.Name = "btnComandoExecutar";
            this.btnComandoExecutar.Size = new System.Drawing.Size(163, 23);
            this.btnComandoExecutar.TabIndex = 6;
            this.btnComandoExecutar.Text = "&Executar";
            this.btnComandoExecutar.UseVisualStyleBackColor = true;
            this.btnComandoExecutar.Click += new System.EventHandler(this.btnComandoExecutar_Click);
            // 
            // btnComandoLoadConfig
            // 
            this.btnComandoLoadConfig.Location = new System.Drawing.Point(177, 26);
            this.btnComandoLoadConfig.Name = "btnComandoLoadConfig";
            this.btnComandoLoadConfig.Size = new System.Drawing.Size(174, 23);
            this.btnComandoLoadConfig.TabIndex = 2;
            this.btnComandoLoadConfig.Text = "&LoadConfig";
            this.btnComandoLoadConfig.UseVisualStyleBackColor = true;
            this.btnComandoLoadConfig.Click += new System.EventHandler(this.btnComandoLoadConfig_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(7, 51);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(57, 13);
            this.label6.TabIndex = 3;
            this.label6.Text = "Comandos";
            // 
            // lbComandos
            // 
            this.lbComandos.FormattingEnabled = true;
            this.lbComandos.Location = new System.Drawing.Point(8, 67);
            this.lbComandos.Name = "lbComandos";
            this.lbComandos.Size = new System.Drawing.Size(163, 199);
            this.lbComandos.TabIndex = 4;
            this.lbComandos.SelectedIndexChanged += new System.EventHandler(this.lbComandos_SelectedIndexChanged);
            // 
            // tbComandoCidade
            // 
            this.tbComandoCidade.Location = new System.Drawing.Point(8, 28);
            this.tbComandoCidade.Name = "tbComandoCidade";
            this.tbComandoCidade.ReadOnly = true;
            this.tbComandoCidade.Size = new System.Drawing.Size(163, 20);
            this.tbComandoCidade.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(5, 12);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(54, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Município";
            // 
            // dgParametros
            // 
            this.dgParametros.AllowUserToAddRows = false;
            this.dgParametros.AllowUserToDeleteRows = false;
            this.dgParametros.AutoGenerateColumns = false;
            this.dgParametros.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgParametros.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgParametros.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgParametros.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nomeParametroDataGridViewTextBoxColumn,
            this.valorParametroDataGridViewTextBoxColumn});
            this.dgParametros.DataMember = "PARAMETROS";
            this.dgParametros.DataSource = this.dsParametros;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgParametros.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgParametros.Location = new System.Drawing.Point(177, 67);
            this.dgParametros.MultiSelect = false;
            this.dgParametros.Name = "dgParametros";
            this.dgParametros.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgParametros.RowHeadersWidth = 4;
            this.dgParametros.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgParametros.Size = new System.Drawing.Size(492, 196);
            this.dgParametros.TabIndex = 5;
            // 
            // nomeParametroDataGridViewTextBoxColumn
            // 
            this.nomeParametroDataGridViewTextBoxColumn.DataPropertyName = "NomeParametro";
            this.nomeParametroDataGridViewTextBoxColumn.HeaderText = "NomeParametro";
            this.nomeParametroDataGridViewTextBoxColumn.Name = "nomeParametroDataGridViewTextBoxColumn";
            this.nomeParametroDataGridViewTextBoxColumn.Width = 120;
            // 
            // valorParametroDataGridViewTextBoxColumn
            // 
            this.valorParametroDataGridViewTextBoxColumn.DataPropertyName = "ValorParametro";
            this.valorParametroDataGridViewTextBoxColumn.HeaderText = "ValorParametro";
            this.valorParametroDataGridViewTextBoxColumn.Name = "valorParametroDataGridViewTextBoxColumn";
            this.valorParametroDataGridViewTextBoxColumn.Width = 300;
            // 
            // dsParametros
            // 
            this.dsParametros.DataSetName = "NewDataSet";
            this.dsParametros.Tables.AddRange(new System.Data.DataTable[] {
            this.dtParametros});
            // 
            // dtParametros
            // 
            this.dtParametros.Columns.AddRange(new System.Data.DataColumn[] {
            this.dataColumn1,
            this.dataColumn2});
            this.dtParametros.TableName = "PARAMETROS";
            // 
            // dataColumn1
            // 
            this.dataColumn1.ColumnName = "NomeParametro";
            // 
            // dataColumn2
            // 
            this.dataColumn2.ColumnName = "ValorParametro";
            // 
            // tcCSV
            // 
            this.tcCSV.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tcCSV.Controls.Add(this.tbXMLFormatado);
            this.tcCSV.Controls.Add(this.tpXML);
            this.tcCSV.Controls.Add(this.tbCSV);
            this.tcCSV.Controls.Add(this.tbTipado);
            this.tcCSV.Location = new System.Drawing.Point(1, 332);
            this.tcCSV.Name = "tcCSV";
            this.tcCSV.SelectedIndex = 0;
            this.tcCSV.Size = new System.Drawing.Size(825, 319);
            this.tcCSV.TabIndex = 4;
            // 
            // tbXMLFormatado
            // 
            this.tbXMLFormatado.Controls.Add(this.rtbXMLFormatado);
            this.tbXMLFormatado.Location = new System.Drawing.Point(4, 22);
            this.tbXMLFormatado.Name = "tbXMLFormatado";
            this.tbXMLFormatado.Padding = new System.Windows.Forms.Padding(3);
            this.tbXMLFormatado.Size = new System.Drawing.Size(817, 293);
            this.tbXMLFormatado.TabIndex = 0;
            this.tbXMLFormatado.Text = "Resposta Formatada";
            this.tbXMLFormatado.UseVisualStyleBackColor = true;
            // 
            // rtbXMLFormatado
            // 
            this.rtbXMLFormatado.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rtbXMLFormatado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtbXMLFormatado.ForeColor = System.Drawing.Color.Blue;
            this.rtbXMLFormatado.Location = new System.Drawing.Point(0, 0);
            this.rtbXMLFormatado.Name = "rtbXMLFormatado";
            this.rtbXMLFormatado.Size = new System.Drawing.Size(817, 293);
            this.rtbXMLFormatado.TabIndex = 0;
            this.rtbXMLFormatado.Text = "";
            this.rtbXMLFormatado.WordWrap = false;
            // 
            // tpXML
            // 
            this.tpXML.Controls.Add(this.rtbXML);
            this.tpXML.Location = new System.Drawing.Point(4, 22);
            this.tpXML.Name = "tpXML";
            this.tpXML.Padding = new System.Windows.Forms.Padding(3);
            this.tpXML.Size = new System.Drawing.Size(817, 293);
            this.tpXML.TabIndex = 1;
            this.tpXML.Text = "XML";
            this.tpXML.UseVisualStyleBackColor = true;
            // 
            // rtbXML
            // 
            this.rtbXML.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rtbXML.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtbXML.ForeColor = System.Drawing.Color.Blue;
            this.rtbXML.Location = new System.Drawing.Point(0, 0);
            this.rtbXML.Name = "rtbXML";
            this.rtbXML.Size = new System.Drawing.Size(813, 287);
            this.rtbXML.TabIndex = 0;
            this.rtbXML.Text = "";
            // 
            // tbCSV
            // 
            this.tbCSV.Controls.Add(this.rtbCSV);
            this.tbCSV.Location = new System.Drawing.Point(4, 22);
            this.tbCSV.Name = "tbCSV";
            this.tbCSV.Padding = new System.Windows.Forms.Padding(3);
            this.tbCSV.Size = new System.Drawing.Size(817, 293);
            this.tbCSV.TabIndex = 2;
            this.tbCSV.Text = "CSV";
            this.tbCSV.UseVisualStyleBackColor = true;
            // 
            // rtbCSV
            // 
            this.rtbCSV.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rtbCSV.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtbCSV.ForeColor = System.Drawing.Color.Blue;
            this.rtbCSV.Location = new System.Drawing.Point(0, 0);
            this.rtbCSV.Name = "rtbCSV";
            this.rtbCSV.Size = new System.Drawing.Size(814, 287);
            this.rtbCSV.TabIndex = 1;
            this.rtbCSV.Text = "";
            // 
            // tbTipado
            // 
            this.tbTipado.Controls.Add(this.rtbTipado);
            this.tbTipado.Location = new System.Drawing.Point(4, 22);
            this.tbTipado.Name = "tbTipado";
            this.tbTipado.Padding = new System.Windows.Forms.Padding(3);
            this.tbTipado.Size = new System.Drawing.Size(817, 293);
            this.tbTipado.TabIndex = 3;
            this.tbTipado.Text = "Formatado";
            this.tbTipado.UseVisualStyleBackColor = true;
            // 
            // rtbTipado
            // 
            this.rtbTipado.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rtbTipado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtbTipado.ForeColor = System.Drawing.Color.Blue;
            this.rtbTipado.Location = new System.Drawing.Point(0, 0);
            this.rtbTipado.Name = "rtbTipado";
            this.rtbTipado.Size = new System.Drawing.Size(814, 293);
            this.rtbTipado.TabIndex = 2;
            this.rtbTipado.Text = "";
            // 
            // ofdArquivoTX2
            // 
            this.ofdArquivoTX2.DefaultExt = "tx2";
            this.ofdArquivoTX2.Filter = "Arquivos TX2 (*.tx2)|*.tx2";
            // 
            // sfdArquivoPDF
            // 
            this.sfdArquivoPDF.DefaultExt = "pdf";
            this.sfdArquivoPDF.Filter = "Arquivo PDF (*.pdf)|*.pdf";
            // 
            // ofdImagens
            // 
            this.ofdImagens.DefaultExt = "jpg";
            this.ofdImagens.Filter = "Imagens JPEG (*.jpg)|*.jpg";
            this.ofdImagens.RestoreDirectory = true;
            // 
            // gbOperacoesImpressao
            // 
            this.gbOperacoesImpressao.Controls.Add(this.ckbEmailPDF);
            this.gbOperacoesImpressao.Controls.Add(this.btnVisualizar);
            this.gbOperacoesImpressao.Controls.Add(this.btnExportarParaPDF);
            this.gbOperacoesImpressao.Controls.Add(this.btnImprimir);
            this.gbOperacoesImpressao.Controls.Add(this.btnEditarDocumento);
            this.gbOperacoesImpressao.Location = new System.Drawing.Point(690, 142);
            this.gbOperacoesImpressao.Name = "gbOperacoesImpressao";
            this.gbOperacoesImpressao.Size = new System.Drawing.Size(131, 178);
            this.gbOperacoesImpressao.TabIndex = 3;
            this.gbOperacoesImpressao.TabStop = false;
            this.gbOperacoesImpressao.Text = "Operações para Impressão";
            // 
            // ckbEmailPDF
            // 
            this.ckbEmailPDF.AutoSize = true;
            this.ckbEmailPDF.Location = new System.Drawing.Point(6, 155);
            this.ckbEmailPDF.Name = "ckbEmailPDF";
            this.ckbEmailPDF.Size = new System.Drawing.Size(102, 17);
            this.ckbEmailPDF.TabIndex = 4;
            this.ckbEmailPDF.Text = "Enviar por Email";
            this.ckbEmailPDF.UseVisualStyleBackColor = true;
            // 
            // btnVisualizar
            // 
            this.btnVisualizar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnVisualizar.Location = new System.Drawing.Point(6, 91);
            this.btnVisualizar.Name = "btnVisualizar";
            this.btnVisualizar.Size = new System.Drawing.Size(119, 23);
            this.btnVisualizar.TabIndex = 2;
            this.btnVisualizar.Text = "&Visualizar";
            this.btnVisualizar.UseVisualStyleBackColor = true;
            this.btnVisualizar.Click += new System.EventHandler(this.btnVisualizar_Click);
            // 
            // btnExportarParaPDF
            // 
            this.btnExportarParaPDF.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExportarParaPDF.Location = new System.Drawing.Point(6, 124);
            this.btnExportarParaPDF.Name = "btnExportarParaPDF";
            this.btnExportarParaPDF.Size = new System.Drawing.Size(119, 23);
            this.btnExportarParaPDF.TabIndex = 3;
            this.btnExportarParaPDF.Text = "E&xportar para PDF";
            this.btnExportarParaPDF.UseVisualStyleBackColor = true;
            this.btnExportarParaPDF.Click += new System.EventHandler(this.btnExportarParaPDF_Click);
            // 
            // btnImprimir
            // 
            this.btnImprimir.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImprimir.Location = new System.Drawing.Point(6, 60);
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(119, 23);
            this.btnImprimir.TabIndex = 1;
            this.btnImprimir.Text = "&Imprimir Documento";
            this.btnImprimir.UseVisualStyleBackColor = true;
            this.btnImprimir.Click += new System.EventHandler(this.btnImprimir_Click);
            // 
            // btnEditarDocumento
            // 
            this.btnEditarDocumento.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEditarDocumento.Location = new System.Drawing.Point(6, 31);
            this.btnEditarDocumento.Name = "btnEditarDocumento";
            this.btnEditarDocumento.Size = new System.Drawing.Size(119, 23);
            this.btnEditarDocumento.TabIndex = 0;
            this.btnEditarDocumento.Text = "&Editar Documento";
            this.btnEditarDocumento.UseVisualStyleBackColor = true;
            this.btnEditarDocumento.Click += new System.EventHandler(this.btnEditarDocumento_Click);
            // 
            // gbImpressao
            // 
            this.gbImpressao.Controls.Add(this.rbPrintNFSe);
            this.gbImpressao.Controls.Add(this.rbPrintRPS);
            this.gbImpressao.Location = new System.Drawing.Point(690, 83);
            this.gbImpressao.Name = "gbImpressao";
            this.gbImpressao.Size = new System.Drawing.Size(131, 54);
            this.gbImpressao.TabIndex = 2;
            this.gbImpressao.TabStop = false;
            this.gbImpressao.Text = "Impressão";
            // 
            // rbPrintNFSe
            // 
            this.rbPrintNFSe.AutoSize = true;
            this.rbPrintNFSe.Location = new System.Drawing.Point(18, 31);
            this.rbPrintNFSe.Name = "rbPrintNFSe";
            this.rbPrintNFSe.Size = new System.Drawing.Size(72, 17);
            this.rbPrintNFSe.TabIndex = 1;
            this.rbPrintNFSe.TabStop = true;
            this.rbPrintNFSe.Text = "printNFSe";
            this.rbPrintNFSe.UseVisualStyleBackColor = true;
            // 
            // rbPrintRPS
            // 
            this.rbPrintRPS.AutoSize = true;
            this.rbPrintRPS.Checked = true;
            this.rbPrintRPS.Location = new System.Drawing.Point(18, 13);
            this.rbPrintRPS.Name = "rbPrintRPS";
            this.rbPrintRPS.Size = new System.Drawing.Size(67, 17);
            this.rbPrintRPS.TabIndex = 0;
            this.rbPrintRPS.TabStop = true;
            this.rbPrintRPS.Text = "printRPS";
            this.rbPrintRPS.UseVisualStyleBackColor = true;
            // 
            // labelAmbProd
            // 
            this.labelAmbProd.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelAmbProd.ForeColor = System.Drawing.Color.Red;
            this.labelAmbProd.Location = new System.Drawing.Point(680, 2);
            this.labelAmbProd.Name = "labelAmbProd";
            this.labelAmbProd.Size = new System.Drawing.Size(136, 23);
            this.labelAmbProd.TabIndex = 6;
            this.labelAmbProd.Text = "Ambiente: PRODUÇÃO";
            this.labelAmbProd.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.labelAmbProd.Visible = false;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.ClientSize = new System.Drawing.Size(826, 653);
            this.Controls.Add(this.labelAmbProd);
            this.Controls.Add(this.gbOperacoesImpressao);
            this.Controls.Add(this.gbImpressao);
            this.Controls.Add(this.tcCSV);
            this.Controls.Add(this.tcDados);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Demonstração de Uso do Componente Tecnospeed NFSe";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.tcDados.ResumeLayout(false);
            this.tpProxyNFSe.ResumeLayout(false);
            this.gbOperacoes.ResumeLayout(false);
            this.gbOperacoes.PerformLayout();
            this.gbConfiguracoes.ResumeLayout(false);
            this.gbConfiguracoes.PerformLayout();
            this.tpConfigurarImpressao.ResumeLayout(false);
            this.gbConfigurarImpressao.ResumeLayout(false);
            this.gbConfigurarImpressao.PerformLayout();
            this.tpComandos.ResumeLayout(false);
            this.tpComandos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgParametros)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsParametros)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtParametros)).EndInit();
            this.tcCSV.ResumeLayout(false);
            this.tbXMLFormatado.ResumeLayout(false);
            this.tpXML.ResumeLayout(false);
            this.tbCSV.ResumeLayout(false);
            this.tbTipado.ResumeLayout(false);
            this.gbOperacoesImpressao.ResumeLayout(false);
            this.gbOperacoesImpressao.PerformLayout();
            this.gbImpressao.ResumeLayout(false);
            this.gbImpressao.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TabControl tcDados;
        private System.Windows.Forms.TabPage tpProxyNFSe;
        private System.Windows.Forms.TabPage tpComandos;
        private System.Windows.Forms.GroupBox gbOperacoes;
        private System.Windows.Forms.GroupBox gbConfiguracoes;
        private System.Windows.Forms.TextBox tbProtocolo;
        private System.Windows.Forms.TextBox tbInscricaoMunicipal;
        private System.Windows.Forms.TextBox tbCNPJ;
        private System.Windows.Forms.TextBox tbLocal;
        private System.Windows.Forms.Button btnCancelarNFSe;
        private System.Windows.Forms.Button btnConsultarNFSe;
        private System.Windows.Forms.Button btnConsultarLote;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.Button btnAssinarXML;
        private System.Windows.Forms.Button btnGerarXMLViaTX2;
        private System.Windows.Forms.Button btnLoadConfig;
        private System.Windows.Forms.Button btnEditarConfiguracoes;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabControl tcCSV;
        private System.Windows.Forms.TabPage tbXMLFormatado;
        private System.Windows.Forms.TabPage tpXML;
        private System.Windows.Forms.RichTextBox rtbXMLFormatado;
        private System.Windows.Forms.RichTextBox rtbXML;
        private System.Windows.Forms.TextBox tbComandoCidade;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ListBox lbComandos;
        private System.Windows.Forms.DataGridView dgParametros;
        private System.Windows.Forms.Button btnComandoLoadConfig;
        private System.Windows.Forms.Button btnComandoCopiarRespostaParametro;
        private System.Windows.Forms.Button btnComandoExecutar;
        private System.Data.DataSet dsParametros;
        private System.Data.DataTable dtParametros;
        private System.Data.DataColumn dataColumn1;
        private System.Data.DataColumn dataColumn2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbCertificados;
        private System.Windows.Forms.OpenFileDialog ofdArquivoTX2;
        private System.Windows.Forms.SaveFileDialog sfdArquivoPDF;
        private System.Windows.Forms.TabPage tpConfigurarImpressao;
        private System.Windows.Forms.GroupBox gbConfigurarImpressao;
        private System.Windows.Forms.Button btnLogotipo;
        private System.Windows.Forms.Button btnBrasaoCidade;
        private System.Windows.Forms.TextBox tbTituloImpressao;
        private System.Windows.Forms.TextBox tbLogotipo;
        private System.Windows.Forms.TextBox tbBrasaoCidade;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.OpenFileDialog ofdImagens;
        private System.Windows.Forms.CheckBox ckbModoAvancado;
        private System.Windows.Forms.GroupBox gbOperacoesImpressao;
        private System.Windows.Forms.CheckBox ckbEmailPDF;
        private System.Windows.Forms.Button btnVisualizar;
        private System.Windows.Forms.Button btnExportarParaPDF;
        private System.Windows.Forms.Button btnImprimir;
        private System.Windows.Forms.Button btnEditarDocumento;
        private System.Windows.Forms.GroupBox gbImpressao;
        private System.Windows.Forms.RadioButton rbPrintNFSe;
        private System.Windows.Forms.RadioButton rbPrintRPS;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomeParametroDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn valorParametroDataGridViewTextBoxColumn;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox tbSubtituloRPS;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox tbSubtituloNFSe;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox tbSecretaria;
        private System.Windows.Forms.Label labelAmbProd;
        private System.Windows.Forms.Button btnConsultarNFSeporRPS;
        private System.Windows.Forms.TabPage tbCSV;
        private System.Windows.Forms.RichTextBox rtbCSV;
        private System.Windows.Forms.TabPage tbTipado;
        private System.Windows.Forms.RichTextBox rtbTipado;
        private System.Windows.Forms.RadioButton rbEnvioAssincrono;
        private System.Windows.Forms.RadioButton rbEnvioSincrono;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button btnConverterNotasTomadas;
        private System.Windows.Forms.Button btnConsultarNotasTomadas;
        private System.Windows.Forms.Button button1;
    }
}

