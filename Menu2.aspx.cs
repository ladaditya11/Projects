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
    public partial class Menu2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                ShowData();
            }
        }

        protected void chkheader_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkheader = (CheckBox)Gridview1.HeaderRow.FindControl("chkheader");
            foreach (GridViewRow row in Gridview1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox2");
                if (chkheader.Checked == true)
                {
                    chkrow.Checked = true;
                }
                else
                {
                    chkrow.Checked = false;
                }
            }

        }
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkstatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkstatus.NamingContainer;
        }

        public void ShowData()
        {
            SqlConnection str = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from ProductTbl", str);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ProductId");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("Price");
            dt.Columns.Add("ParentId");
            foreach (GridViewRow grow in Gridview1.Rows)
            {
                var checkboxselect = grow.FindControl("CheckBox2") as CheckBox;
                if (checkboxselect.Checked)
                {
                    string ProductId = (grow.FindControl("lbProductId") as Label).Text;
                    string ProductName = (grow.FindControl("lbProductName") as Label).Text;
                    string Price = (grow.FindControl("lbPrice") as Label).Text;
                    string ParentId = (grow.FindControl("lbParentId") as Label).Text;
                    dt.Rows.Add(ProductId, ProductName, Price, ParentId);
                }
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }
        public void AnotherPage()
        {
            Response.Redirect("Billing.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            foreach(GridViewRow gr in GridView2.Rows)
            {
                string sqlquery = "insert into SaveProduct1 values (@ProductId,@ProductName,@Price,@ParentId,@Quantity)";
                SqlCommand cmd = new SqlCommand(sqlquery,sqlcon);
                cmd.Parameters.AddWithValue("@ProductId", gr.Cells[1].Text);
                cmd.Parameters.AddWithValue("@ProductName", gr.Cells[2].Text);
                cmd.Parameters.AddWithValue("@Price", gr.Cells[3].Text);
                cmd.Parameters.AddWithValue("@ParentId", gr.Cells[4].Text);
                cmd.Parameters.AddWithValue("@Quantity", (gr.FindControl("TextBox1") as TextBox).Text);
                sqlcon.Open();
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            AnotherPage();
        }
    }   
}