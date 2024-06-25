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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        public  void UserId()
        {
            string  str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection scon = new SqlConnection(str);
            string myquery = "select * from user_master_tbl where username='" +TextBox1.Text +"'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string username;
            if (ds.Tables[0].Rows.Count > 0)
            {
                username = ds.Tables[0].Rows[0]["username"].ToString();
                Session["username"] = username;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            UserId();
            //if (TextBox1.Text == "ad16")
            //{
            //    Response.Redirect("AdminData");
            //}
            try
            {
           
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username = '" + TextBox1.Text.Trim() + "' AND password ='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["username"] = dr.GetValue(3).ToString();
                        Session["name"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        //Session["status"] = dr.GetValue(5).ToString();

                    }
                    Response.Redirect("Menu2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            //}
            catch (Exception)
            {

            }
        }
    }
}