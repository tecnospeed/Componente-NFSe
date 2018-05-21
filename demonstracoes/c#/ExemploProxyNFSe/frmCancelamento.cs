using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace NFSeX_Exemplo
{
    public partial class frmCancelamento : Form
    {
        public const int ALTURA_PEQUENO = 188;
        public int Altura_Grande;

        public frmCancelamento()
        {
            InitializeComponent();
            Altura_Grande = this.Height;
            this.Height = ALTURA_PEQUENO;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            Close();
        }

        private void frmCancelamento_Load(object sender, EventArgs e)
        {
            Boolean _existe = false;
            _existe = File.Exists(Application.StartupPath + "\\..\\..\\..\\..\\..\\Help\\TabelaDeChaves.html");
            ckbTabelaDeChaves.Enabled = _existe;
            if (_existe == false)
            {
                ckbTabelaDeChaves.Text = "Tabela de Chaves não Encontrada no Diretório:  ..\\Help\\TabelaDeChaves.html";
            }
            btnCancelarNota.Enabled = false;
            wbTabelaDeChaves.Navigate(Application.StartupPath + "\\..\\..\\..\\..\\..\\Help\\TabelaDeChaves.html");
        }

        private void btnCancelarNota_Click(object sender, EventArgs e)
        {
            string _ChaveNFSe = tbChaveCancelamento.Text.Trim();

            if (_ChaveNFSe != "")
            {
                this.DialogResult = DialogResult.OK;
                Close();
            }
            else
            {
                MessageBox.Show("O campo Chave da NFSe esta em branco.");
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbTabelaDeChaves.Checked)
            {
                this.Height = Altura_Grande;
                wbTabelaDeChaves.Show();
            }
            else
            {
                this.Height = ALTURA_PEQUENO;
                wbTabelaDeChaves.Hide();
            }
        }

        private void tbChaveCancelamento_TextChanged(object sender, EventArgs e)
        {
            btnCancelarNota.Enabled = true;
        }
    }
}