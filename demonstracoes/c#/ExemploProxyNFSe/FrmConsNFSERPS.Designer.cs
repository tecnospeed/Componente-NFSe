namespace NFSeX_Exemplo
{
    partial class FrmConsNFSERPS
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
            this.edNumRPS = new System.Windows.Forms.TextBox();
            this.edSerieRPS = new System.Windows.Forms.TextBox();
            this.edTipoRPS = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btConsultar = new System.Windows.Forms.Button();
            this.btCancelar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // edNumRPS
            // 
            this.edNumRPS.Location = new System.Drawing.Point(12, 25);
            this.edNumRPS.Name = "edNumRPS";
            this.edNumRPS.Size = new System.Drawing.Size(178, 20);
            this.edNumRPS.TabIndex = 0;
            // 
            // edSerieRPS
            // 
            this.edSerieRPS.Location = new System.Drawing.Point(12, 64);
            this.edSerieRPS.Name = "edSerieRPS";
            this.edSerieRPS.Size = new System.Drawing.Size(178, 20);
            this.edSerieRPS.TabIndex = 1;
            // 
            // edTipoRPS
            // 
            this.edTipoRPS.Location = new System.Drawing.Point(12, 103);
            this.edTipoRPS.Name = "edTipoRPS";
            this.edTipoRPS.Size = new System.Drawing.Size(178, 20);
            this.edTipoRPS.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Número do RPS";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Série RPS";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 87);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Tipo RPS";
            // 
            // btConsultar
            // 
            this.btConsultar.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btConsultar.Location = new System.Drawing.Point(12, 129);
            this.btConsultar.Name = "btConsultar";
            this.btConsultar.Size = new System.Drawing.Size(84, 28);
            this.btConsultar.TabIndex = 3;
            this.btConsultar.Text = "Consultar";
            this.btConsultar.UseVisualStyleBackColor = true;
            this.btConsultar.Click += new System.EventHandler(this.btConsultar_Click);
            // 
            // btCancelar
            // 
            this.btCancelar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btCancelar.Location = new System.Drawing.Point(106, 129);
            this.btCancelar.Name = "btCancelar";
            this.btCancelar.Size = new System.Drawing.Size(84, 28);
            this.btCancelar.TabIndex = 4;
            this.btCancelar.Text = "Cancelar";
            this.btCancelar.UseVisualStyleBackColor = true;
            this.btCancelar.Click += new System.EventHandler(this.btCancelar_Click);
            // 
            // FrmConsNFSERPS
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btCancelar;
            this.ClientSize = new System.Drawing.Size(202, 169);
            this.Controls.Add(this.btCancelar);
            this.Controls.Add(this.btConsultar);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.edTipoRPS);
            this.Controls.Add(this.edSerieRPS);
            this.Controls.Add(this.edNumRPS);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmConsNFSERPS";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Consulta NFSe por RPS";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        public System.Windows.Forms.TextBox edNumRPS;
        public System.Windows.Forms.TextBox edSerieRPS;
        public System.Windows.Forms.TextBox edTipoRPS;
        public System.Windows.Forms.Button btConsultar;
        public System.Windows.Forms.Button btCancelar;
    }
}