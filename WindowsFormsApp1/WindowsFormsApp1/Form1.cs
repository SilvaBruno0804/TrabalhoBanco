using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void botaoteste_Click(object sender, EventArgs e)
        {
            int texto = Convert.ToInt32(caixinha.Text);

            if (radioButton1.Checked || checkBox1.Checked)
            {
                texto -= 10;
                MessageBox.Show("Valor " + texto);
            }
            else
            {
                MessageBox.Show("Valor " + texto);
                Form2 form = new Form2();
                form.Show();
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
