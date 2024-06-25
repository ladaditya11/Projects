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
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            //SqlConnection sqlcon = new SqlConnection(str);
            //string sqlquery = "select * from ProductTbl where ParentId" + DropDownList1.SelectedValue  ;
            //sqlcon.Open();
            //SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();


            string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sqlcon;
            sqlcon.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText= "GridView";
            
            cmd.Parameters.AddWithValue("@ParentId",DropDownList1.SelectedItem.Value);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            //GridView1.DataSource = cmd.ExecuteNonQuery();
            //GridView1.DataBind();

        }

        protected void chkheader_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkheader = (CheckBox)GridView1.HeaderRow.FindControl("chkheader");
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox2");
                if(chkheader.Checked == true)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ProductId");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("Price");
            dt.Columns.Add("ParentId");
         foreach(GridViewRow grow in GridView1.Rows)
            { var checkboxselect = grow.FindControl("CheckBox2") as CheckBox;
                if(checkboxselect.Checked)
                {
                    string ProductId = (grow.FindControl("lbProductId") as Label).Text;
                    string ProductName = (grow.FindControl("lbProductName") as Label).Text;
                    string Price = (grow.FindControl("lbPrice") as Label).Text;
                    string ParentId = (grow.FindControl("lbParentId") as Label).Text;
                    dt.Rows.Add(ProductId, ProductName, Price, ParentId);
                }
                gridview2.DataSource = dt;
                gridview2.DataBind();
            }
        }

    }
}