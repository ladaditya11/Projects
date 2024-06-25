using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPlan
{
    public partial class Menupage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double[] a = new double[7];
                double[] items = new double[7];
                a[0] = Convert.ToDouble(TextBox1.Text);
                a[1] = Convert.ToDouble(TextBox2.Text);
                a[2] = Convert.ToDouble(TextBox3.Text);
                a[3] = Convert.ToDouble(TextBox4.Text);
                a[5] = a[0] + a[1] + a[2] + a[3];
                TextBox49.Text = Convert.ToString(a[5]);

               
                double[] b = new double[7];
                b[0] = Convert.ToDouble(TextBox50.Text);
                b[1] = Convert.ToDouble(TextBox51.Text);
                b[2] = Convert.ToDouble(TextBox52.Text);
                b[3] = Convert.ToDouble(TextBox53.Text);

                items[0] = a[0] * b[0];
                items[1] = a[1] * b[1];
                items[2] = a[2] * b[2];
                items[3] = a[3] * b[3];

                items[5] = items[0] + items[1] + items[2] + items[3];
                TextBox55.Text = Convert.ToString(items[5]);

            }
            catch(Exception ex)
            {

            }
        }
       
         
              

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            double i = Convert.ToDouble(CheckBox1.Checked);
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}