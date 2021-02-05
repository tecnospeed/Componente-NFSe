namespace NFSeV2
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPrincipal));
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tsNFSe = new System.Windows.Forms.TabPage();
            this.gbOperacoes = new System.Windows.Forms.GroupBox();
            this.lblAmbiente = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.edtTipoRPS = new System.Windows.Forms.TextBox();
            this.edtSerieRPS = new System.Windows.Forms.TextBox();
            this.edtNumeroRPS = new System.Windows.Forms.TextBox();
            this.edtChaveCancelamento = new System.Windows.Forms.TextBox();
            this.edtNumeroNFSe = new System.Windows.Forms.TextBox();
            this.btnCancelarNota = new System.Windows.Forms.Button();
            this.btnConsultarNota = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.btnLoadConfig = new System.Windows.Forms.Button();
            this.ConfigIni = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.cbNomeCertificado = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.edtTokenSoftwareHouse = new System.Windows.Forms.TextBox();
            this.edtCNPJSoftwareHouse = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.AtualizaArquivos = new System.Windows.Forms.Button();
            this.edtNumProtocolo = new System.Windows.Forms.TextBox();
            this.edtInscMunicipal = new System.Windows.Forms.TextBox();
            this.edtCNPJ = new System.Windows.Forms.TextBox();
            this.edtCidade = new System.Windows.Forms.TextBox();
            this.tsConfiguraImpressao = new System.Windows.Forms.TabPage();
            this.gbAcoes = new System.Windows.Forms.GroupBox();
            this.ckbEnviarEmailPDF = new System.Windows.Forms.CheckBox();
            this.btVisualizar = new System.Windows.Forms.Button();
            this.btExportar = new System.Windows.Forms.Button();
            this.btEditar = new System.Windows.Forms.Button();
            this.btImprimir = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnLogoEmitente = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.edtLogoEmitente = new System.Windows.Forms.TextBox();
            this.tsConsultaTomadas = new System.Windows.Forms.TabPage();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnGetFinalDate = new System.Windows.Forms.Button();
            this.btnGetInitialDate = new System.Windows.Forms.Button();
            this.label21 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.button8 = new System.Windows.Forms.Button();
            this.edtPagina = new System.Windows.Forms.TextBox();
            this.edtDataFinal = new System.Windows.Forms.TextBox();
            this.edtDataInicial = new System.Windows.Forms.TextBox();
            this.edtIMPrestador = new System.Windows.Forms.TextBox();
            this.edtDocumentoPrestador = new System.Windows.Forms.TextBox();
            this.edtIMTomador = new System.Windows.Forms.TextBox();
            this.edtDocumentoTomador = new System.Windows.Forms.TextBox();
            this.edtNomeCidade = new System.Windows.Forms.TextBox();
            this.tsCidadesHomologadas = new System.Windows.Forms.TabPage();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.btnListasCidades = new System.Windows.Forms.Button();
            this.pcDados = new System.Windows.Forms.TabControl();
            this.tsXML = new System.Windows.Forms.TabPage();
            this.mmXMLEnvio = new System.Windows.Forms.RichTextBox();
            this.tsXMLFormatado = new System.Windows.Forms.TabPage();
            this.mmXML = new System.Windows.Forms.RichTextBox();
            this.tsJSON = new System.Windows.Forms.TabPage();
            this.mmJson = new System.Windows.Forms.RichTextBox();
            this.tsFormatado = new System.Windows.Forms.TabPage();
            this.mmTipado = new System.Windows.Forms.RichTextBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.tbCamposCustomizados = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.linkLabel2 = new System.Windows.Forms.LinkLabel();
            this.tabControl1.SuspendLayout();
            this.tsNFSe.SuspendLayout();
            this.gbOperacoes.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tsConfiguraImpressao.SuspendLayout();
            this.gbAcoes.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.tsConsultaTomadas.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.tsCidadesHomologadas.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.pcDados.SuspendLayout();
            this.tsXML.SuspendLayout();
            this.tsXMLFormatado.SuspendLayout();
            this.tsJSON.SuspendLayout();
            this.tsFormatado.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tsNFSe);
            this.tabControl1.Controls.Add(this.tsConfiguraImpressao);
            this.tabControl1.Controls.Add(this.tsConsultaTomadas);
            this.tabControl1.Controls.Add(this.tsCidadesHomologadas);
            this.tabControl1.Location = new System.Drawing.Point(3, 2);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(618, 258);
            this.tabControl1.SizeMode = System.Windows.Forms.TabSizeMode.FillToRight;
            this.tabControl1.TabIndex = 0;
            // 
            // tsNFSe
            // 
            this.tsNFSe.Controls.Add(this.gbOperacoes);
            this.tsNFSe.Controls.Add(this.label6);
            this.tsNFSe.Controls.Add(this.label5);
            this.tsNFSe.Controls.Add(this.edtTokenSoftwareHouse);
            this.tsNFSe.Controls.Add(this.edtCNPJSoftwareHouse);
            this.tsNFSe.Controls.Add(this.groupBox1);
            this.tsNFSe.Location = new System.Drawing.Point(4, 22);
            this.tsNFSe.Name = "tsNFSe";
            this.tsNFSe.Padding = new System.Windows.Forms.Padding(3);
            this.tsNFSe.Size = new System.Drawing.Size(610, 232);
            this.tsNFSe.TabIndex = 3;
            this.tsNFSe.Text = "Testando autorização e consultas";
            this.tsNFSe.UseVisualStyleBackColor = true;
            this.tsNFSe.Click += new System.EventHandler(this.tsCidadesHomologadas_Click);
            // 
            // gbOperacoes
            // 
            this.gbOperacoes.Controls.Add(this.lblAmbiente);
            this.gbOperacoes.Controls.Add(this.label12);
            this.gbOperacoes.Controls.Add(this.label11);
            this.gbOperacoes.Controls.Add(this.label10);
            this.gbOperacoes.Controls.Add(this.label9);
            this.gbOperacoes.Controls.Add(this.label8);
            this.gbOperacoes.Controls.Add(this.edtTipoRPS);
            this.gbOperacoes.Controls.Add(this.edtSerieRPS);
            this.gbOperacoes.Controls.Add(this.edtNumeroRPS);
            this.gbOperacoes.Controls.Add(this.edtChaveCancelamento);
            this.gbOperacoes.Controls.Add(this.edtNumeroNFSe);
            this.gbOperacoes.Controls.Add(this.btnCancelarNota);
            this.gbOperacoes.Controls.Add(this.btnConsultarNota);
            this.gbOperacoes.Controls.Add(this.button4);
            this.gbOperacoes.Controls.Add(this.btnLoadConfig);
            this.gbOperacoes.Controls.Add(this.ConfigIni);
            this.gbOperacoes.Controls.Add(this.label7);
            this.gbOperacoes.Controls.Add(this.cbNomeCertificado);
            this.gbOperacoes.Location = new System.Drawing.Point(187, 43);
            this.gbOperacoes.Name = "gbOperacoes";
            this.gbOperacoes.Size = new System.Drawing.Size(418, 183);
            this.gbOperacoes.TabIndex = 8;
            this.gbOperacoes.TabStop = false;
            this.gbOperacoes.Text = "Operações";
            // 
            // lblAmbiente
            // 
            this.lblAmbiente.AutoSize = true;
            this.lblAmbiente.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAmbiente.ForeColor = System.Drawing.Color.Red;
            this.lblAmbiente.Location = new System.Drawing.Point(279, 8);
            this.lblAmbiente.Name = "lblAmbiente";
            this.lblAmbiente.Size = new System.Drawing.Size(126, 13);
            this.lblAmbiente.TabIndex = 23;
            this.lblAmbiente.Text = "Amb. de PRODUÇÃO";
            this.lblAmbiente.Visible = false;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(240, 162);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(53, 13);
            this.label12.TabIndex = 22;
            this.label12.Text = "Tipo RPS";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(237, 139);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(56, 13);
            this.label11.TabIndex = 21;
            this.label11.Text = "Série RPS";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(224, 116);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(69, 13);
            this.label10.TabIndex = 20;
            this.label10.Text = "Número RPS";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(13, 162);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(109, 13);
            this.label9.TabIndex = 19;
            this.label9.Text = "Chave Cancelamento";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(48, 139);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(74, 13);
            this.label8.TabIndex = 18;
            this.label8.Text = "Número NFSe";
            // 
            // edtTipoRPS
            // 
            this.edtTipoRPS.Location = new System.Drawing.Point(299, 159);
            this.edtTipoRPS.Name = "edtTipoRPS";
            this.edtTipoRPS.Size = new System.Drawing.Size(106, 20);
            this.edtTipoRPS.TabIndex = 17;
            // 
            // edtSerieRPS
            // 
            this.edtSerieRPS.Location = new System.Drawing.Point(299, 136);
            this.edtSerieRPS.Name = "edtSerieRPS";
            this.edtSerieRPS.Size = new System.Drawing.Size(106, 20);
            this.edtSerieRPS.TabIndex = 16;
            // 
            // edtNumeroRPS
            // 
            this.edtNumeroRPS.Location = new System.Drawing.Point(299, 113);
            this.edtNumeroRPS.Name = "edtNumeroRPS";
            this.edtNumeroRPS.Size = new System.Drawing.Size(106, 20);
            this.edtNumeroRPS.TabIndex = 15;
            // 
            // edtChaveCancelamento
            // 
            this.edtChaveCancelamento.Location = new System.Drawing.Point(125, 159);
            this.edtChaveCancelamento.Name = "edtChaveCancelamento";
            this.edtChaveCancelamento.Size = new System.Drawing.Size(84, 20);
            this.edtChaveCancelamento.TabIndex = 14;
            // 
            // edtNumeroNFSe
            // 
            this.edtNumeroNFSe.Location = new System.Drawing.Point(125, 136);
            this.edtNumeroNFSe.Name = "edtNumeroNFSe";
            this.edtNumeroNFSe.Size = new System.Drawing.Size(84, 20);
            this.edtNumeroNFSe.TabIndex = 13;
            // 
            // btnCancelarNota
            // 
            this.btnCancelarNota.Location = new System.Drawing.Point(212, 78);
            this.btnCancelarNota.Name = "btnCancelarNota";
            this.btnCancelarNota.Size = new System.Drawing.Size(193, 28);
            this.btnCancelarNota.TabIndex = 12;
            this.btnCancelarNota.Text = "&5. Cancelar NFSe";
            this.btnCancelarNota.UseVisualStyleBackColor = true;
            this.btnCancelarNota.Click += new System.EventHandler(this.btnCancelarNota_Click);
            // 
            // btnConsultarNota
            // 
            this.btnConsultarNota.Location = new System.Drawing.Point(212, 49);
            this.btnConsultarNota.Name = "btnConsultarNota";
            this.btnConsultarNota.Size = new System.Drawing.Size(193, 28);
            this.btnConsultarNota.TabIndex = 11;
            this.btnConsultarNota.Text = "&4. Consultar Nota";
            this.btnConsultarNota.UseVisualStyleBackColor = true;
            this.btnConsultarNota.Click += new System.EventHandler(this.btnConsultarNota_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(16, 107);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(193, 28);
            this.button4.TabIndex = 10;
            this.button4.Text = "&3. Enviar RPS";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // btnLoadConfig
            // 
            this.btnLoadConfig.Location = new System.Drawing.Point(16, 78);
            this.btnLoadConfig.Name = "btnLoadConfig";
            this.btnLoadConfig.Size = new System.Drawing.Size(193, 28);
            this.btnLoadConfig.TabIndex = 9;
            this.btnLoadConfig.Text = "&2. LoadConfig";
            this.btnLoadConfig.UseVisualStyleBackColor = true;
            this.btnLoadConfig.Click += new System.EventHandler(this.btnLoadConfig_Click);
            // 
            // ConfigIni
            // 
            this.ConfigIni.Location = new System.Drawing.Point(16, 49);
            this.ConfigIni.Name = "ConfigIni";
            this.ConfigIni.Size = new System.Drawing.Size(193, 28);
            this.ConfigIni.TabIndex = 8;
            this.ConfigIni.Text = "&1. Configurar Arquivo INI";
            this.ConfigIni.UseVisualStyleBackColor = true;
            this.ConfigIni.Click += new System.EventHandler(this.ConfigIni_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 11);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 7;
            this.label7.Text = "Certificado";
            // 
            // cbNomeCertificado
            // 
            this.cbNomeCertificado.FormattingEnabled = true;
            this.cbNomeCertificado.Location = new System.Drawing.Point(15, 24);
            this.cbNomeCertificado.Name = "cbNomeCertificado";
            this.cbNomeCertificado.Size = new System.Drawing.Size(390, 21);
            this.cbNomeCertificado.TabIndex = 0;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(365, 7);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(112, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Token Softwarehouse";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(199, 7);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(108, 13);
            this.label5.TabIndex = 6;
            this.label5.Text = "CNPJ Softwarehouse";
            // 
            // edtTokenSoftwareHouse
            // 
            this.edtTokenSoftwareHouse.Location = new System.Drawing.Point(365, 23);
            this.edtTokenSoftwareHouse.Name = "edtTokenSoftwareHouse";
            this.edtTokenSoftwareHouse.Size = new System.Drawing.Size(227, 20);
            this.edtTokenSoftwareHouse.TabIndex = 2;
            // 
            // edtCNPJSoftwareHouse
            // 
            this.edtCNPJSoftwareHouse.Location = new System.Drawing.Point(202, 23);
            this.edtCNPJSoftwareHouse.Name = "edtCNPJSoftwareHouse";
            this.edtCNPJSoftwareHouse.Size = new System.Drawing.Size(157, 20);
            this.edtCNPJSoftwareHouse.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.AtualizaArquivos);
            this.groupBox1.Controls.Add(this.edtNumProtocolo);
            this.groupBox1.Controls.Add(this.edtInscMunicipal);
            this.groupBox1.Controls.Add(this.edtCNPJ);
            this.groupBox1.Controls.Add(this.edtCidade);
            this.groupBox1.Location = new System.Drawing.Point(6, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(175, 220);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Configurações";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 137);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Número Protocolo";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 98);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "Inscrição Municipal";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "CNPJ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Cidade";
            // 
            // AtualizaArquivos
            // 
            this.AtualizaArquivos.Location = new System.Drawing.Point(11, 185);
            this.AtualizaArquivos.Name = "AtualizaArquivos";
            this.AtualizaArquivos.Size = new System.Drawing.Size(158, 23);
            this.AtualizaArquivos.TabIndex = 4;
            this.AtualizaArquivos.Text = "Atualizar Arquivos Cidades";
            this.AtualizaArquivos.UseVisualStyleBackColor = true;
            this.AtualizaArquivos.Click += new System.EventHandler(this.AtualizaArquivos_Click);
            // 
            // edtNumProtocolo
            // 
            this.edtNumProtocolo.Location = new System.Drawing.Point(12, 153);
            this.edtNumProtocolo.Name = "edtNumProtocolo";
            this.edtNumProtocolo.Size = new System.Drawing.Size(157, 20);
            this.edtNumProtocolo.TabIndex = 3;
            // 
            // edtInscMunicipal
            // 
            this.edtInscMunicipal.Location = new System.Drawing.Point(12, 114);
            this.edtInscMunicipal.Name = "edtInscMunicipal";
            this.edtInscMunicipal.Size = new System.Drawing.Size(157, 20);
            this.edtInscMunicipal.TabIndex = 2;
            // 
            // edtCNPJ
            // 
            this.edtCNPJ.Location = new System.Drawing.Point(12, 75);
            this.edtCNPJ.Name = "edtCNPJ";
            this.edtCNPJ.Size = new System.Drawing.Size(157, 20);
            this.edtCNPJ.TabIndex = 1;
            // 
            // edtCidade
            // 
            this.edtCidade.Location = new System.Drawing.Point(12, 36);
            this.edtCidade.Name = "edtCidade";
            this.edtCidade.Size = new System.Drawing.Size(157, 20);
            this.edtCidade.TabIndex = 0;
            // 
            // tsConfiguraImpressao
            // 
            this.tsConfiguraImpressao.Controls.Add(this.gbAcoes);
            this.tsConfiguraImpressao.Controls.Add(this.groupBox2);
            this.tsConfiguraImpressao.Location = new System.Drawing.Point(4, 22);
            this.tsConfiguraImpressao.Name = "tsConfiguraImpressao";
            this.tsConfiguraImpressao.Padding = new System.Windows.Forms.Padding(3);
            this.tsConfiguraImpressao.Size = new System.Drawing.Size(610, 232);
            this.tsConfiguraImpressao.TabIndex = 1;
            this.tsConfiguraImpressao.Text = "Testando impressão";
            this.tsConfiguraImpressao.UseVisualStyleBackColor = true;
            // 
            // gbAcoes
            // 
            this.gbAcoes.Controls.Add(this.ckbEnviarEmailPDF);
            this.gbAcoes.Controls.Add(this.btVisualizar);
            this.gbAcoes.Controls.Add(this.btExportar);
            this.gbAcoes.Controls.Add(this.btEditar);
            this.gbAcoes.Controls.Add(this.btImprimir);
            this.gbAcoes.Location = new System.Drawing.Point(0, 151);
            this.gbAcoes.Name = "gbAcoes";
            this.gbAcoes.Size = new System.Drawing.Size(604, 75);
            this.gbAcoes.TabIndex = 1;
            this.gbAcoes.TabStop = false;
            this.gbAcoes.Text = "Ações";
            // 
            // ckbEnviarEmailPDF
            // 
            this.ckbEnviarEmailPDF.AutoSize = true;
            this.ckbEnviarEmailPDF.Location = new System.Drawing.Point(308, 52);
            this.ckbEnviarEmailPDF.Name = "ckbEnviarEmailPDF";
            this.ckbEnviarEmailPDF.Size = new System.Drawing.Size(102, 17);
            this.ckbEnviarEmailPDF.TabIndex = 4;
            this.ckbEnviarEmailPDF.Text = "Enviar por Email";
            this.ckbEnviarEmailPDF.UseVisualStyleBackColor = true;
            // 
            // btVisualizar
            // 
            this.btVisualizar.Location = new System.Drawing.Point(454, 25);
            this.btVisualizar.Name = "btVisualizar";
            this.btVisualizar.Size = new System.Drawing.Size(140, 23);
            this.btVisualizar.TabIndex = 3;
            this.btVisualizar.Text = "Visualizar";
            this.btVisualizar.UseVisualStyleBackColor = true;
            this.btVisualizar.Click += new System.EventHandler(this.btVisualizar_Click);
            // 
            // btExportar
            // 
            this.btExportar.Location = new System.Drawing.Point(308, 25);
            this.btExportar.Name = "btExportar";
            this.btExportar.Size = new System.Drawing.Size(140, 23);
            this.btExportar.TabIndex = 2;
            this.btExportar.Text = "Exportar Para PDF";
            this.btExportar.UseVisualStyleBackColor = true;
            this.btExportar.Click += new System.EventHandler(this.btExportar_Click);
            // 
            // btEditar
            // 
            this.btEditar.Location = new System.Drawing.Point(162, 25);
            this.btEditar.Name = "btEditar";
            this.btEditar.Size = new System.Drawing.Size(140, 23);
            this.btEditar.TabIndex = 1;
            this.btEditar.Text = "Editar";
            this.btEditar.UseVisualStyleBackColor = true;
            this.btEditar.Click += new System.EventHandler(this.btEditar_Click);
            // 
            // btImprimir
            // 
            this.btImprimir.Location = new System.Drawing.Point(16, 25);
            this.btImprimir.Name = "btImprimir";
            this.btImprimir.Size = new System.Drawing.Size(140, 23);
            this.btImprimir.TabIndex = 0;
            this.btImprimir.Text = "Imprimir";
            this.btImprimir.UseVisualStyleBackColor = true;
            this.btImprimir.Click += new System.EventHandler(this.btImprimir_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.linkLabel1);
            this.groupBox2.Controls.Add(this.label22);
            this.groupBox2.Controls.Add(this.tbCamposCustomizados);
            this.groupBox2.Controls.Add(this.btnLogoEmitente);
            this.groupBox2.Controls.Add(this.label13);
            this.groupBox2.Controls.Add(this.edtLogoEmitente);
            this.groupBox2.Location = new System.Drawing.Point(3, 0);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(604, 145);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Configurações";
            // 
            // btnLogoEmitente
            // 
            this.btnLogoEmitente.Location = new System.Drawing.Point(565, 30);
            this.btnLogoEmitente.Name = "btnLogoEmitente";
            this.btnLogoEmitente.Size = new System.Drawing.Size(31, 23);
            this.btnLogoEmitente.TabIndex = 2;
            this.btnLogoEmitente.Text = "...";
            this.btnLogoEmitente.UseVisualStyleBackColor = true;
            this.btnLogoEmitente.Click += new System.EventHandler(this.btnLogoEmitente_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(23, 17);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(92, 13);
            this.label13.TabIndex = 1;
            this.label13.Text = "Logotipo Emitente";
            // 
            // edtLogoEmitente
            // 
            this.edtLogoEmitente.Location = new System.Drawing.Point(21, 32);
            this.edtLogoEmitente.Name = "edtLogoEmitente";
            this.edtLogoEmitente.Size = new System.Drawing.Size(537, 20);
            this.edtLogoEmitente.TabIndex = 0;
            // 
            // tsConsultaTomadas
            // 
            this.tsConsultaTomadas.Controls.Add(this.groupBox3);
            this.tsConsultaTomadas.Location = new System.Drawing.Point(4, 22);
            this.tsConsultaTomadas.Name = "tsConsultaTomadas";
            this.tsConsultaTomadas.Padding = new System.Windows.Forms.Padding(3);
            this.tsConsultaTomadas.Size = new System.Drawing.Size(610, 232);
            this.tsConsultaTomadas.TabIndex = 2;
            this.tsConsultaTomadas.Text = "Consultar Notas Tomadas";
            this.tsConsultaTomadas.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.linkLabel2);
            this.groupBox3.Controls.Add(this.btnGetFinalDate);
            this.groupBox3.Controls.Add(this.btnGetInitialDate);
            this.groupBox3.Controls.Add(this.label21);
            this.groupBox3.Controls.Add(this.label20);
            this.groupBox3.Controls.Add(this.label19);
            this.groupBox3.Controls.Add(this.label18);
            this.groupBox3.Controls.Add(this.label17);
            this.groupBox3.Controls.Add(this.label16);
            this.groupBox3.Controls.Add(this.label15);
            this.groupBox3.Controls.Add(this.label14);
            this.groupBox3.Controls.Add(this.button8);
            this.groupBox3.Controls.Add(this.edtPagina);
            this.groupBox3.Controls.Add(this.edtDataFinal);
            this.groupBox3.Controls.Add(this.edtDataInicial);
            this.groupBox3.Controls.Add(this.edtIMPrestador);
            this.groupBox3.Controls.Add(this.edtDocumentoPrestador);
            this.groupBox3.Controls.Add(this.edtIMTomador);
            this.groupBox3.Controls.Add(this.edtDocumentoTomador);
            this.groupBox3.Controls.Add(this.edtNomeCidade);
            this.groupBox3.Location = new System.Drawing.Point(3, 6);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(604, 223);
            this.groupBox3.TabIndex = 0;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Dados para consulta";
            // 
            // btnGetFinalDate
            // 
            this.btnGetFinalDate.Image = ((System.Drawing.Image)(resources.GetObject("btnGetFinalDate.Image")));
            this.btnGetFinalDate.Location = new System.Drawing.Point(479, 94);
            this.btnGetFinalDate.Name = "btnGetFinalDate";
            this.btnGetFinalDate.Size = new System.Drawing.Size(42, 37);
            this.btnGetFinalDate.TabIndex = 18;
            this.btnGetFinalDate.UseVisualStyleBackColor = true;
            this.btnGetFinalDate.Click += new System.EventHandler(this.btnGetFinalDate_Click);
            // 
            // btnGetInitialDate
            // 
            this.btnGetInitialDate.AutoSize = true;
            this.btnGetInitialDate.Image = ((System.Drawing.Image)(resources.GetObject("btnGetInitialDate.Image")));
            this.btnGetInitialDate.Location = new System.Drawing.Point(479, 55);
            this.btnGetInitialDate.Name = "btnGetInitialDate";
            this.btnGetInitialDate.Size = new System.Drawing.Size(42, 38);
            this.btnGetInitialDate.TabIndex = 17;
            this.btnGetInitialDate.UseVisualStyleBackColor = true;
            this.btnGetInitialDate.Click += new System.EventHandler(this.btnGetInitialDate_Click);
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(300, 132);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(40, 13);
            this.label21.TabIndex = 16;
            this.label21.Text = "Pagina";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(300, 93);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(112, 13);
            this.label20.TabIndex = 15;
            this.label20.Text = "Data Final yyyy-mm-dd";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(300, 55);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(117, 13);
            this.label19.TabIndex = 14;
            this.label19.Text = "Data Inicial yyyy-mm-dd";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(300, 16);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(173, 13);
            this.label18.TabIndex = 13;
            this.label18.Text = "Inc. Mun. do Prestador/Consulente";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(74, 132);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(168, 13);
            this.label17.TabIndex = 12;
            this.label17.Text = "Documento Prestador/Consulente";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(74, 94);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(158, 13);
            this.label16.TabIndex = 11;
            this.label16.Text = "Inscrição Municipal do Tomador";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(74, 55);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(107, 13);
            this.label15.TabIndex = 10;
            this.label15.Text = "Documento Tomador";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(74, 16);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(86, 13);
            this.label14.TabIndex = 9;
            this.label14.Text = "Nome da Cidade";
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(192, 172);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(225, 23);
            this.button8.TabIndex = 8;
            this.button8.Text = "Consultar Notas Tomadas";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // edtPagina
            // 
            this.edtPagina.Location = new System.Drawing.Point(303, 146);
            this.edtPagina.Name = "edtPagina";
            this.edtPagina.Size = new System.Drawing.Size(88, 20);
            this.edtPagina.TabIndex = 7;
            // 
            // edtDataFinal
            // 
            this.edtDataFinal.Location = new System.Drawing.Point(303, 109);
            this.edtDataFinal.Name = "edtDataFinal";
            this.edtDataFinal.Size = new System.Drawing.Size(170, 20);
            this.edtDataFinal.TabIndex = 6;
            // 
            // edtDataInicial
            // 
            this.edtDataInicial.Location = new System.Drawing.Point(303, 71);
            this.edtDataInicial.Name = "edtDataInicial";
            this.edtDataInicial.Size = new System.Drawing.Size(170, 20);
            this.edtDataInicial.TabIndex = 5;
            // 
            // edtIMPrestador
            // 
            this.edtIMPrestador.Location = new System.Drawing.Point(303, 32);
            this.edtIMPrestador.Name = "edtIMPrestador";
            this.edtIMPrestador.Size = new System.Drawing.Size(220, 20);
            this.edtIMPrestador.TabIndex = 4;
            // 
            // edtDocumentoPrestador
            // 
            this.edtDocumentoPrestador.Location = new System.Drawing.Point(77, 146);
            this.edtDocumentoPrestador.Name = "edtDocumentoPrestador";
            this.edtDocumentoPrestador.Size = new System.Drawing.Size(220, 20);
            this.edtDocumentoPrestador.TabIndex = 3;
            // 
            // edtIMTomador
            // 
            this.edtIMTomador.Location = new System.Drawing.Point(77, 109);
            this.edtIMTomador.Name = "edtIMTomador";
            this.edtIMTomador.Size = new System.Drawing.Size(220, 20);
            this.edtIMTomador.TabIndex = 2;
            // 
            // edtDocumentoTomador
            // 
            this.edtDocumentoTomador.Location = new System.Drawing.Point(77, 71);
            this.edtDocumentoTomador.Name = "edtDocumentoTomador";
            this.edtDocumentoTomador.Size = new System.Drawing.Size(220, 20);
            this.edtDocumentoTomador.TabIndex = 1;
            // 
            // edtNomeCidade
            // 
            this.edtNomeCidade.Location = new System.Drawing.Point(77, 32);
            this.edtNomeCidade.Name = "edtNomeCidade";
            this.edtNomeCidade.Size = new System.Drawing.Size(220, 20);
            this.edtNomeCidade.TabIndex = 0;
            // 
            // tsCidadesHomologadas
            // 
            this.tsCidadesHomologadas.Controls.Add(this.groupBox4);
            this.tsCidadesHomologadas.Location = new System.Drawing.Point(4, 22);
            this.tsCidadesHomologadas.Name = "tsCidadesHomologadas";
            this.tsCidadesHomologadas.Padding = new System.Windows.Forms.Padding(3);
            this.tsCidadesHomologadas.Size = new System.Drawing.Size(610, 232);
            this.tsCidadesHomologadas.TabIndex = 0;
            this.tsCidadesHomologadas.Text = "Cidades Homologadas";
            this.tsCidadesHomologadas.UseVisualStyleBackColor = true;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.btnListasCidades);
            this.groupBox4.Location = new System.Drawing.Point(3, 3);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(604, 228);
            this.groupBox4.TabIndex = 0;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Ações";
            // 
            // btnListasCidades
            // 
            this.btnListasCidades.Location = new System.Drawing.Point(28, 32);
            this.btnListasCidades.Name = "btnListasCidades";
            this.btnListasCidades.Size = new System.Drawing.Size(192, 23);
            this.btnListasCidades.TabIndex = 0;
            this.btnListasCidades.Text = "Listar Cidades Homologadas";
            this.btnListasCidades.UseVisualStyleBackColor = true;
            this.btnListasCidades.Click += new System.EventHandler(this.btnListasCidades_Click);
            // 
            // pcDados
            // 
            this.pcDados.Controls.Add(this.tsXML);
            this.pcDados.Controls.Add(this.tsXMLFormatado);
            this.pcDados.Controls.Add(this.tsJSON);
            this.pcDados.Controls.Add(this.tsFormatado);
            this.pcDados.Location = new System.Drawing.Point(3, 261);
            this.pcDados.Name = "pcDados";
            this.pcDados.SelectedIndex = 0;
            this.pcDados.Size = new System.Drawing.Size(618, 330);
            this.pcDados.SizeMode = System.Windows.Forms.TabSizeMode.FillToRight;
            this.pcDados.TabIndex = 1;
            // 
            // tsXML
            // 
            this.tsXML.Controls.Add(this.mmXMLEnvio);
            this.tsXML.Location = new System.Drawing.Point(4, 22);
            this.tsXML.Name = "tsXML";
            this.tsXML.Padding = new System.Windows.Forms.Padding(3);
            this.tsXML.Size = new System.Drawing.Size(610, 304);
            this.tsXML.TabIndex = 0;
            this.tsXML.Text = "XML envio, somente para impressão";
            this.tsXML.UseVisualStyleBackColor = true;
            // 
            // mmXMLEnvio
            // 
            this.mmXMLEnvio.Location = new System.Drawing.Point(3, 3);
            this.mmXMLEnvio.Name = "mmXMLEnvio";
            this.mmXMLEnvio.Size = new System.Drawing.Size(604, 300);
            this.mmXMLEnvio.TabIndex = 0;
            this.mmXMLEnvio.Text = "";
            // 
            // tsXMLFormatado
            // 
            this.tsXMLFormatado.Controls.Add(this.mmXML);
            this.tsXMLFormatado.Location = new System.Drawing.Point(4, 22);
            this.tsXMLFormatado.Name = "tsXMLFormatado";
            this.tsXMLFormatado.Padding = new System.Windows.Forms.Padding(3);
            this.tsXMLFormatado.Size = new System.Drawing.Size(610, 304);
            this.tsXMLFormatado.TabIndex = 1;
            this.tsXMLFormatado.Text = "XML";
            this.tsXMLFormatado.UseVisualStyleBackColor = true;
            // 
            // mmXML
            // 
            this.mmXML.Location = new System.Drawing.Point(3, 2);
            this.mmXML.Name = "mmXML";
            this.mmXML.Size = new System.Drawing.Size(604, 300);
            this.mmXML.TabIndex = 1;
            this.mmXML.Text = "";
            // 
            // tsJSON
            // 
            this.tsJSON.Controls.Add(this.mmJson);
            this.tsJSON.Location = new System.Drawing.Point(4, 22);
            this.tsJSON.Name = "tsJSON";
            this.tsJSON.Padding = new System.Windows.Forms.Padding(3);
            this.tsJSON.Size = new System.Drawing.Size(610, 304);
            this.tsJSON.TabIndex = 2;
            this.tsJSON.Text = "JSON";
            this.tsJSON.UseVisualStyleBackColor = true;
            // 
            // mmJson
            // 
            this.mmJson.Location = new System.Drawing.Point(3, 2);
            this.mmJson.Name = "mmJson";
            this.mmJson.Size = new System.Drawing.Size(604, 300);
            this.mmJson.TabIndex = 1;
            this.mmJson.Text = "";
            // 
            // tsFormatado
            // 
            this.tsFormatado.Controls.Add(this.mmTipado);
            this.tsFormatado.Location = new System.Drawing.Point(4, 22);
            this.tsFormatado.Name = "tsFormatado";
            this.tsFormatado.Padding = new System.Windows.Forms.Padding(3);
            this.tsFormatado.Size = new System.Drawing.Size(610, 304);
            this.tsFormatado.TabIndex = 3;
            this.tsFormatado.Text = "Campos Formatados";
            this.tsFormatado.UseVisualStyleBackColor = true;
            // 
            // mmTipado
            // 
            this.mmTipado.Location = new System.Drawing.Point(3, 2);
            this.mmTipado.Name = "mmTipado";
            this.mmTipado.Size = new System.Drawing.Size(604, 300);
            this.mmTipado.TabIndex = 1;
            this.mmTipado.Text = "";
            // 
            // tbCamposCustomizados
            // 
            this.tbCamposCustomizados.Location = new System.Drawing.Point(21, 76);
            this.tbCamposCustomizados.Multiline = true;
            this.tbCamposCustomizados.Name = "tbCamposCustomizados";
            this.tbCamposCustomizados.Size = new System.Drawing.Size(575, 63);
            this.tbCamposCustomizados.TabIndex = 3;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(23, 60);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(113, 13);
            this.label22.TabIndex = 4;
            this.label22.Text = "Campos Customizados";
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Location = new System.Drawing.Point(142, 60);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(127, 13);
            this.linkLabel1.TabIndex = 5;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "Consultar Documentação";
            this.linkLabel1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel1_LinkClicked);
            // 
            // linkLabel2
            // 
            this.linkLabel2.AutoSize = true;
            this.linkLabel2.Location = new System.Drawing.Point(210, 198);
            this.linkLabel2.Name = "linkLabel2";
            this.linkLabel2.Size = new System.Drawing.Size(181, 13);
            this.linkLabel2.TabIndex = 19;
            this.linkLabel2.TabStop = true;
            this.linkLabel2.Text = "Saiba mais Sobre as Notas Tomadas";
            this.linkLabel2.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabel2_LinkClicked);
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(622, 593);
            this.Controls.Add(this.pcDados);
            this.Controls.Add(this.tabControl1);
            this.Name = "frmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Demonstração NFSeV2";
            this.tabControl1.ResumeLayout(false);
            this.tsNFSe.ResumeLayout(false);
            this.tsNFSe.PerformLayout();
            this.gbOperacoes.ResumeLayout(false);
            this.gbOperacoes.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tsConfiguraImpressao.ResumeLayout(false);
            this.gbAcoes.ResumeLayout(false);
            this.gbAcoes.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.tsConsultaTomadas.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.tsCidadesHomologadas.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.pcDados.ResumeLayout(false);
            this.tsXML.ResumeLayout(false);
            this.tsXMLFormatado.ResumeLayout(false);
            this.tsJSON.ResumeLayout(false);
            this.tsFormatado.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tsCidadesHomologadas;
        private System.Windows.Forms.TabPage tsConfiguraImpressao;
        private System.Windows.Forms.TabPage tsConsultaTomadas;
        private System.Windows.Forms.TabPage tsNFSe;
        private System.Windows.Forms.GroupBox gbOperacoes;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox edtTipoRPS;
        private System.Windows.Forms.TextBox edtSerieRPS;
        private System.Windows.Forms.TextBox edtNumeroRPS;
        private System.Windows.Forms.TextBox edtChaveCancelamento;
        private System.Windows.Forms.TextBox edtNumeroNFSe;
        private System.Windows.Forms.Button btnCancelarNota;
        private System.Windows.Forms.Button btnConsultarNota;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button btnLoadConfig;
        private System.Windows.Forms.Button ConfigIni;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbNomeCertificado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox edtTokenSoftwareHouse;
        private System.Windows.Forms.TextBox edtCNPJSoftwareHouse;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button AtualizaArquivos;
        private System.Windows.Forms.TextBox edtNumProtocolo;
        private System.Windows.Forms.TextBox edtInscMunicipal;
        private System.Windows.Forms.TextBox edtCNPJ;
        private System.Windows.Forms.TextBox edtCidade;
        private System.Windows.Forms.TabControl pcDados;
        private System.Windows.Forms.TabPage tsXML;
        private System.Windows.Forms.RichTextBox mmXMLEnvio;
        private System.Windows.Forms.TabPage tsXMLFormatado;
        private System.Windows.Forms.RichTextBox mmXML;
        private System.Windows.Forms.TabPage tsJSON;
        private System.Windows.Forms.RichTextBox mmJson;
        private System.Windows.Forms.TabPage tsFormatado;
        private System.Windows.Forms.RichTextBox mmTipado;
        private System.Windows.Forms.GroupBox gbAcoes;
        private System.Windows.Forms.CheckBox ckbEnviarEmailPDF;
        private System.Windows.Forms.Button btVisualizar;
        private System.Windows.Forms.Button btExportar;
        private System.Windows.Forms.Button btEditar;
        private System.Windows.Forms.Button btImprimir;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnLogoEmitente;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox edtLogoEmitente;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.TextBox edtPagina;
        private System.Windows.Forms.TextBox edtDataFinal;
        private System.Windows.Forms.TextBox edtDataInicial;
        private System.Windows.Forms.TextBox edtIMPrestador;
        private System.Windows.Forms.TextBox edtDocumentoPrestador;
        private System.Windows.Forms.TextBox edtIMTomador;
        private System.Windows.Forms.TextBox edtDocumentoTomador;
        private System.Windows.Forms.TextBox edtNomeCidade;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button btnListasCidades;
        private System.Windows.Forms.Label lblAmbiente;
        private System.Windows.Forms.Button btnGetFinalDate;
        private System.Windows.Forms.Button btnGetInitialDate;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.TextBox tbCamposCustomizados;
        private System.Windows.Forms.LinkLabel linkLabel2;
    }
}

