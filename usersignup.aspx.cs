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
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkUserExists())

            {
                Response.Write("<script>alert('User Already Exists with this Username, try other Username');</script>");
            }
            else
            {
                signUpNewUser();
            }
            signUpNewUser();
        }
        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + TextBox2_username.Text.Trim() + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                return false;
            }

        }
        void signUpNewUser()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO user_master_tbl(name,email_id,contact_no,username,password) values(@TextBox1_name,@Textbox4_email_id,@TextBox5_contact_no,@TextBox2_username,@TextBox3_password)", con);
                cmd.Parameters.AddWithValue("@TextBox1_name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox4_email_id", TextBox4_email_id.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox5_contact_no", TextBox5_contact_no.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2_username", TextBox2_username.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox3_password", TextBox3_password.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

    }
}