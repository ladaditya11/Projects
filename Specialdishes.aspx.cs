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
    public partial class Specialdishes : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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


                double[] b = new double[7];
                b[0] = Convert.ToDouble(TextBox2.Text);

                items[0] = a[0] * b[0];
                TextBox49.Text = Convert.ToString(items[0]);
            }
            catch (Exception ex)
            {

            }
        }
        public void UserId()
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection scon = new SqlConnection(str);
            string myquery = "select * from user_master_tbl where username='" + TextBox1.Text + "'";
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
        protected void Button2_Click(object sender, EventArgs e)
        {
           // try
           // {
                string UserId = Session["username"].ToString();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Specialdishes_tbl(username,quantity,total) values(@username,@quantity,@total)", con);
                cmd.Parameters.AddWithValue("@username", Session["username"]);
                cmd.Parameters.AddWithValue("@quantity", TextBox2.Text);
                cmd.Parameters.AddWithValue("@total", TextBox49.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Paynowpaylater.aspx");
           // }
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            //}


        }
    }
}