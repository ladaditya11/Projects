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
    public partial class adminpaymentmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addNewPayment();
        }
        void addNewPayment()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO payment_tbl(name,contact_no,username) values(@TextBox1_name,@TextBox2_contact_no,@TextBox3_username)", con);
                cmd.Parameters.AddWithValue("@TextBox1_name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2_contact_no", TextBox2_contact_no.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox3_username", TextBox3_username.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Payment Entry Added');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }
        }
        void clearForm()
        {
            TextBox1_name.Text = "";
            TextBox2_contact_no.Text = "";
            TextBox3_username.Text = "";
        }
    }
}