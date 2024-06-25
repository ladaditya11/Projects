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
    public partial class Menu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                dropdown();
            }
        }
        public void dropdown()
        {
            SqlConnection str = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from ParentTbl", str);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "ParentName";
            DropDownList1.DataValueField = "ParentId";
            DropDownList1.DataBind();


            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "ParentName";
            DropDownList2.DataValueField = "ParentId";
            DropDownList2.DataBind();

            DropDownList3.DataSource = dt;
            DropDownList3.DataBind();
            DropDownList3.DataTextField = "ParentName";
            DropDownList3.DataValueField = "ParentId";
            DropDownList3.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            string sqlquery = "select * from ProductTbl where ParentId'" + DropDownList1.SelectedItem.Text + "'";
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            string sqlquery = "select * from ProductTbl where ParentId'" + DropDownList1.SelectedItem.Text + "'";
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            string sqlquery = "select * from ProductTbl where ParentId'" + DropDownList1.SelectedItem.Text + "'";
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //    SqlConnection sqlcon = new SqlConnection(str);
        //    string sqlquery = "select * from ProductTbl where ParentId'" + DropDownList1.SelectedItem.Text + "'";
        //    sqlcon.Open();
        //    SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();

        //}
    }
}