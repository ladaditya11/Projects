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
    public partial class feedback : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("INSERT INTO feedback_tbl(name,experience) values(@TextBox1_name,@TextBox2_experience)", con);
                cmd.Parameters.AddWithValue("@TextBox1_name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2_experience", TextBox2_experience.Text.Trim()); ;
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
            TextBox2_experience.Text = "";
        }
    }
}
