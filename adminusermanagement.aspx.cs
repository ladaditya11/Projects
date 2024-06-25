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
    public partial class adminusermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getUserByID();
        }

        //Active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateUserStatusByID("active");
        }

        //Delete
        protected void Button1_Click1(object sender, EventArgs e)
        {
            deleteUserByID();
        }

        //Pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateUserStatusByID("pending");
        }

        //Deactive
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateUserStatusByID("deactive");
        }
        bool checkIfUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + TextBox1_username.Text.Trim() + "';", con);
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
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                return false;
            }
        }
        void deleteUserByID()
        {
            if (checkIfUserExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from user_master_tbl WHERE username='" + TextBox1_username.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('User Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid username');</script>");
            }
        }
        void getUserByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from user_master_tbl where username='" + TextBox1_username.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //TextBox2_account_status.Text = dr.GetValue(5).ToString();
                        TextBox3_name.Text = dr.GetValue(0).ToString();
                        TextBox4_email_id.Text = dr.GetValue(1).ToString();
                        TextBox5_contact_no.Text = dr.GetValue(2).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updateUserStatusByID(string status)
        {
            if (checkIfUserExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE user_master_tbl SET account_status='" + status + "' WHERE username='" + TextBox1_username.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('User Status Updated');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid username');</script>");
            }

        }
        void clearForm()
        {
            TextBox1_username.Text = "";
           // TextBox2_account_status.Text = "";
            TextBox3_name.Text = "";
            TextBox4_email_id.Text = "";
            TextBox5_contact_no.Text = "";
        }
    }
}