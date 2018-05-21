namespace NFSeX_Exemplo
{
    partial class frmCancelamento
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
            this.pnlCancelar = new System.Windows.Forms.Panel();
            this.btnFechar = new System.Windows.Forms.Button();
            this.btnCancelarNota = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.tbChaveCancelamento = new System.Windows.Forms.TextBox();
            this.wbTabelaDeChaves = new System.Windows.Forms.WebBrowser();
            this.ckbTabelaDeChaves = new System.Windows.Forms.CheckBox();
            this.pnlCancelar.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlCancelar
            // 
            this.pnlCancelar.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlCancelar.Controls.Add(this.btnFechar);
            this.pnlCancelar.Controls.Add(this.btnCancelarNota);
            this.pnlCancelar.Controls.Add(this.label1);
            this.pnlCancelar.Controls.Add(this.tbChaveCancelamento);
            this.pnlCancelar.Location = new System.Drawing.Point(12, 12);
            this.pnlCancelar.Name = "pnlCancelar";
            this.pnlCancelar.Size = new System.Drawing.Size(539, 123);
            this.pnlCancelar.TabIndex = 0;
            // 
            // btnFechar
            // 
            this.btnFechar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnFechar.Location = new System.Drawing.Point(415, 72);
            this.btnFechar.Name = "btnFechar";
            this.btnFechar.Size = new System.Drawing.Size(86, 23);
            this.btnFechar.TabIndex = 3;
            this.btnFechar.Text = "&Fechar";
            this.btnFechar.UseVisualStyleBackColor = true;
            this.btnFechar.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // btnCancelarNota
            // 
            this.btnCancelarNota.Location = new System.Drawing.Point(33, 72);
            this.btnCancelarNota.Name = "btnCancelarNota";
            this.btnCancelarNota.Size = new System.Drawing.Size(142, 23);
            this.btnCancelarNota.TabIndex = 2;
            this.btnCancelarNota.Text = "&Cancelar NFSe";
            this.btnCancelarNota.UseVisualStyleBackColor = true;
            this.btnCancelarNota.Click += new System.EventHandler(this.btnCancelarNota_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(30, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(125, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Digite a Chave da NFSe:";
            // 
            // tbChaveCancelamento
            // 
            this.tbChaveCancelamento.Location = new System.Drawing.Point(33, 36);
            this.tbChaveCancelamento.Name = "tbChaveCancelamento";
            this.tbChaveCancelamento.Size = new System.Drawing.Size(468, 20);
            this.tbChaveCancelamento.TabIndex = 1;
            this.tbChaveCancelamento.TextChanged += new System.EventHandler(this.tbChaveCancelamento_TextChanged);
            // 
            // wbTabelaDeChaves
            // 
            this.wbTabelaDeChaves.Location = new System.Drawing.Point(12, 163);
            this.wbTabelaDeChaves.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbTabelaDeChaves.Name = "wbTabelaDeChaves";
            this.wbTabelaDeChaves.Size = new System.Drawing.Size(539, 238);
            this.wbTabelaDeChaves.TabIndex = 5;
            // 
            // ckbTabelaDeChaves
            // 
            this.ckbTabelaDeChaves.AutoSize = true;
            this.ckbTabelaDeChaves.Location = new System.Drawing.Point(12, 140);
            this.ckbTabelaDeChaves.Name = "ckbTabelaDeChaves";
            this.ckbTabelaDeChaves.Size = new System.Drawing.Size(151, 17);
            this.ckbTabelaDeChaves.TabIndex = 4;
            this.ckbTabelaDeChaves.Text = "Mostrar Tabela de Chaves";
            this.ckbTabelaDeChaves.UseVisualStyleBackColor = true;
            this.ckbTabelaDeChaves.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // frmCancelamento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnFechar;
            this.ClientSize = new System.Drawing.Size(563, 413);
            this.Controls.Add(this.ckbTabelaDeChaves);
            this.Controls.Add(this.wbTabelaDeChaves);
            this.Controls.Add(this.pnlCancelar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmCancelamento";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Cancelamento de NFSe";
            this.Load += new System.EventHandler(this.frmCancelamento_Load);
            this.pnlCancelar.ResumeLayout(false);
            this.pnlCancelar.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel pnlCancelar;
        private System.Windows.Forms.Button btnCancelarNota;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.TextBox tbChaveCancelamento;
        private System.Windows.Forms.Button btnFechar;
        private System.Windows.Forms.WebBrowser wbTabelaDeChaves;
        private System.Windows.Forms.CheckBox ckbTabelaDeChaves;
    }
}