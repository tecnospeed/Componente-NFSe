namespace NFSeX_Exemplo
{
    partial class FrmConsultaDestinadas
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tbPagina = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.tbDtFinalConsultaDestinada = new System.Windows.Forms.MaskedTextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.tbDtInicialConsultaDestinada = new System.Windows.Forms.MaskedTextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tbDocPrestador = new System.Windows.Forms.MaskedTextBox();
            this.tbDocTomador = new System.Windows.Forms.MaskedTextBox();
            this.tbImPrestador = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tbImTomador = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbMunicipioConsultaDestinada = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnCancelarConsulta = new System.Windows.Forms.Button();
            this.btnConsultarNotasTomadas = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.tbPagina);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.tbDtFinalConsultaDestinada);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.tbDtInicialConsultaDestinada);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.tbDocPrestador);
            this.groupBox1.Controls.Add(this.tbDocTomador);
            this.groupBox1.Controls.Add(this.tbImPrestador);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.tbImTomador);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.tbMunicipioConsultaDestinada);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(394, 232);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Dados Para a Consulta";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // tbPagina
            // 
            this.tbPagina.Location = new System.Drawing.Point(202, 123);
            this.tbPagina.Name = "tbPagina";
            this.tbPagina.Size = new System.Drawing.Size(100, 20);
            this.tbPagina.TabIndex = 17;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(202, 107);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(40, 13);
            this.label8.TabIndex = 16;
            this.label8.Text = "Página";
            // 
            // tbDtFinalConsultaDestinada
            // 
            this.tbDtFinalConsultaDestinada.Location = new System.Drawing.Point(202, 81);
            this.tbDtFinalConsultaDestinada.Mask = "99/99/9999";
            this.tbDtFinalConsultaDestinada.Name = "tbDtFinalConsultaDestinada";
            this.tbDtFinalConsultaDestinada.Size = new System.Drawing.Size(158, 20);
            this.tbDtFinalConsultaDestinada.TabIndex = 15;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(202, 65);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 13);
            this.label7.TabIndex = 14;
            this.label7.Text = "Data Final";
            // 
            // tbDtInicialConsultaDestinada
            // 
            this.tbDtInicialConsultaDestinada.Location = new System.Drawing.Point(202, 41);
            this.tbDtInicialConsultaDestinada.Mask = "99/99/9999";
            this.tbDtInicialConsultaDestinada.Name = "tbDtInicialConsultaDestinada";
            this.tbDtInicialConsultaDestinada.Size = new System.Drawing.Size(158, 20);
            this.tbDtInicialConsultaDestinada.TabIndex = 13;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(202, 25);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(59, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Data inicial";
            // 
            // tbDocPrestador
            // 
            this.tbDocPrestador.Location = new System.Drawing.Point(6, 164);
            this.tbDocPrestador.Mask = "99.999.999/9999-99";
            this.tbDocPrestador.Name = "tbDocPrestador";
            this.tbDocPrestador.Size = new System.Drawing.Size(158, 20);
            this.tbDocPrestador.TabIndex = 11;
            // 
            // tbDocTomador
            // 
            this.tbDocTomador.Location = new System.Drawing.Point(6, 81);
            this.tbDocTomador.Mask = "99.999.999/9999-99";
            this.tbDocTomador.Name = "tbDocTomador";
            this.tbDocTomador.Size = new System.Drawing.Size(158, 20);
            this.tbDocTomador.TabIndex = 10;
            // 
            // tbImPrestador
            // 
            this.tbImPrestador.Location = new System.Drawing.Point(6, 203);
            this.tbImPrestador.Name = "tbImPrestador";
            this.tbImPrestador.Size = new System.Drawing.Size(158, 20);
            this.tbImPrestador.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 187);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(161, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Inscrição Municipal do Prestador";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 148);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(125, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Documento do Prestador";
            // 
            // tbImTomador
            // 
            this.tbImTomador.Location = new System.Drawing.Point(6, 123);
            this.tbImTomador.Name = "tbImTomador";
            this.tbImTomador.Size = new System.Drawing.Size(158, 20);
            this.tbImTomador.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 107);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(158, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Inscrição Municipal do Tomador";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Documento do Tomador";
            // 
            // tbMunicipioConsultaDestinada
            // 
            this.tbMunicipioConsultaDestinada.Location = new System.Drawing.Point(6, 41);
            this.tbMunicipioConsultaDestinada.Name = "tbMunicipioConsultaDestinada";
            this.tbMunicipioConsultaDestinada.Size = new System.Drawing.Size(158, 20);
            this.tbMunicipioConsultaDestinada.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Município";
            // 
            // btnCancelarConsulta
            // 
            this.btnCancelarConsulta.Location = new System.Drawing.Point(309, 250);
            this.btnCancelarConsulta.Name = "btnCancelarConsulta";
            this.btnCancelarConsulta.Size = new System.Drawing.Size(97, 23);
            this.btnCancelarConsulta.TabIndex = 1;
            this.btnCancelarConsulta.Text = "Cancelar";
            this.btnCancelarConsulta.UseVisualStyleBackColor = true;
            this.btnCancelarConsulta.Click += new System.EventHandler(this.btnCancelarConsulta_Click);
            // 
            // btnConsultarNotasTomadas
            // 
            this.btnConsultarNotasTomadas.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnConsultarNotasTomadas.Location = new System.Drawing.Point(207, 250);
            this.btnConsultarNotasTomadas.Name = "btnConsultarNotasTomadas";
            this.btnConsultarNotasTomadas.Size = new System.Drawing.Size(96, 23);
            this.btnConsultarNotasTomadas.TabIndex = 2;
            this.btnConsultarNotasTomadas.Text = "Consultar";
            this.btnConsultarNotasTomadas.UseVisualStyleBackColor = true;
            this.btnConsultarNotasTomadas.Click += new System.EventHandler(this.btnConsultarNotasTomadas_Click);
            // 
            // FrmConsultaDestinadas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(418, 281);
            this.Controls.Add(this.btnConsultarNotasTomadas);
            this.Controls.Add(this.btnCancelarConsulta);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "FrmConsultaDestinadas";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Consulta Notas Tomadas";
            this.Load += new System.EventHandler(this.frmConsultaDestinadas_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCancelarConsulta;
        private System.Windows.Forms.Button btnConsultarNotasTomadas;
        public System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.TextBox tbMunicipioConsultaDestinada;
        public System.Windows.Forms.TextBox tbPagina;
        public System.Windows.Forms.MaskedTextBox tbDtFinalConsultaDestinada;
        public System.Windows.Forms.MaskedTextBox tbDtInicialConsultaDestinada;
        public System.Windows.Forms.MaskedTextBox tbDocPrestador;
        public System.Windows.Forms.MaskedTextBox tbDocTomador;
        public System.Windows.Forms.TextBox tbImPrestador;
        public System.Windows.Forms.TextBox tbImTomador;
    }
}