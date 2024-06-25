using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MasterPlan
{

    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();
            }
        }
        void updateUserPersonalDetails()
        {
            string password = "";
            if (TextBox6_new_pass.Text.Trim() == "")
            {
                password = TextBox3_password.Text.Trim();
            }
            else
            {
                password = TextBox6_new_pass.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update user_master_tbl set name=@name, email_id=@email_id, contact_no=@contact_no, password=@password WHERE username='" + Session["username"].ToString().Trim() + "'", con);
                cmd.Parameters.AddWithValue("@name", TextBox1_name.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", TextBox4_email_id.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5_contact_no.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
               // cmd.Parameters.AddWithValue("@account_status", "pending");
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();
                }
                else
                {
                    Response.Write("<script>alert('Invalid entry');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TextBox1_name.Text = dt.Rows[0]["name"].ToString();
                TextBox4_email_id.Text = dt.Rows[0]["email_id"].ToString();
                TextBox5_contact_no.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox2_username.Text = dt.Rows[0]["username"].ToString();
                TextBox3_password.Text = dt.Rows[0]["password"].ToString();
                //Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();
                if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                   // Label1.Attributes.Add("class", "badge rounded-pill badge-success text-dark");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    //Label1.Attributes.Add("class", "badge rounded-pill badge-warning text-dark");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    //Label1.Attributes.Add("class", "badge rounded-pill badge-danger text-dark");
                }
                else
                {
                    //Label1.Attributes.Add("class", "badge rounded-pill badge-info");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        /* void getUserData()
         {
             try
             {
                 SqlConnection con = new SqlConnection(strcon);
                 if (con.State == ConnectionState.Closed)
                 {
                     con.Open();
                 }
                 SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + Session["username"].ToString() + "';", con);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 DataTable dt = new DataTable();
                 da.Fill(dt);
                 GridView1.DataSource = dt;
                 GridView1.DataBind();
             }
             catch (Exception ex)
             {
                 Response.Write("<script>alert(' " + ex.Message + " ');</script>");
             }
         } */
    }
}
     