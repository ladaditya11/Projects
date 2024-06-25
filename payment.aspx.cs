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
    public partial class payment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM user_master_tbl where name='" + TextBox1_name.Text.Trim() + "' AND contact_no='" + TextBox2_contact_no.Text.Trim() + "' AND username='" + TextBox3_username.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Payment Successful');</script>");
                        Session["name"] = dr.GetValue(0).ToString();
                        Session["contact_no"] = dr.GetValue(2).ToString();
                        Session["username"] = dr.GetValue(3).ToString();
                        //Session["role"] = "user";
                        // Session["status"] = dr.GetValue(5).ToString();
                    }
                    addPaymentEntry();
                    Response.Redirect("OrderSuccessful.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Payment Failure');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        void addPaymentEntry()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO payment_tbl(name,contact_no,username) values(@TextBox1_name,@TextBox2_contact_no,@TextBox3_username)", con);
                cmd.Parameters.AddWithValue("@TextBox1_name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2_contact_no", TextBox2_contact_no.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox3_username", TextBox3_username.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                // Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
    }
}