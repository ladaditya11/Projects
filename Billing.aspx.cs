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
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
                Total();
            }
        }
        public void ShowData()
        {
            SqlConnection str = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from SaveProduct1", str);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        public void Total()
        {
            SqlConnection str = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select Sum(Total) as Total  from SaveProduct1", str);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = str;
            str.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                TextBox1.Text = sdr["Total"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach(GridViewRow row in Gridview1.Rows)
            {
                CheckBox cbox = (row.Cells[0].FindControl("CheckBox2") as CheckBox);
                int Id = Convert.ToInt32(row.Cells[1].Text);
                if (cbox.Checked)
                {
                    deleterow(Id);
                }
            }
            ShowData();
            Total();

        }
        public void deleterow(int Id)
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string delete = "delete from SaveProduct1 where Id=" + Id;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = delete;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }
            public void deleterow1()
            {
                string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                string delete = "truncate table SaveProduct1 ";
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = delete;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

            }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string UserId= Session["username"].ToString();
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            foreach(GridViewRow gr in Gridview1.Rows)
            {
                string sqlquery = "insert into  AdminTable values(@ProductId,@ProductName,@Price,@ParentId,@Quantity,@Total,@UserId)";
                SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
                cmd.Parameters.AddWithValue("@ProductId", gr.Cells[2].Text);
                cmd.Parameters.AddWithValue("@ProductName", gr.Cells[3].Text);
                cmd.Parameters.AddWithValue("@Price", gr.Cells[4].Text);
                cmd.Parameters.AddWithValue("@ParentId", gr.Cells[5].Text);
                cmd.Parameters.AddWithValue("@Quantity", gr.Cells[6].Text);
                cmd.Parameters.AddWithValue("@Total", gr.Cells[7].Text);

                cmd.Parameters.AddWithValue("@UserId", Session["username"]);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            deleterow1();
            Response.Redirect("Paynowpaylater.aspx");
        }
    }
}