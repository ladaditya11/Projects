using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPlan
{
    public partial class contact_us : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            submitNew();
        }
        void submitNew()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO contact_us_tbl(name,email,subject,message,website) values(@TextBox1_name,@TextBox2_email,@TextBox3_subject,@TextBox4_message,@TextBox5_website)", con);
                cmd.Parameters.AddWithValue("@TextBox1_name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2_email", TextBox2_email.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox3_subject", TextBox3_subject.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox4_message", TextBox4_message.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox5_website", TextBox5_website.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Details Submitted Successfully');</script>");
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        void clearForm()
        {
            TextBox1_name.Text = "";
            TextBox2_email.Text = "";
            TextBox3_subject.Text = "";
            TextBox4_message.Text = "";
            TextBox5_website.Text = "";
        }
    }
}