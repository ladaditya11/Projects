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
    public partial class adminchefmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfChefExists())
            {
                Response.Write("<script>alert('Chef with this ID already Exist. You cannot add another Chef with the same Chef ID');</script>");
            }
            else
            {
                addNewChef();
            }
        }
        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfChefExists())
            {
                updateChef();
            }
            else
            {
                Response.Write("<script>alert('Chef does not exist');</script>");
            }
        }
        //delete button click


        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfChefExists())
            {
                deleteChef();
            }
            else
            {
                Response.Write("<script>alert('Chef does not exist');</script>");
            }
        }
        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getChefByID();
        }
        void getChefByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from chef_master_tbl where chef_id='" + TextBox1_chef_id.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4_chef_name.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Chef ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        void deleteChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from chef_master_tbl WHERE chef_id='" + TextBox1_chef_id.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        void updateChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE chef_master_tbl SET chef_name=@TextBox4_chef_name WHERE chef_id='" + TextBox1_chef_id.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@TextBox4_chef_name", TextBox4_chef_name.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        void addNewChef()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO chef_master_tbl(chef_id,chef_name) values(@TextBox1_chef_id,@TextBox4_chef_name)", con);
                cmd.Parameters.AddWithValue("@TextBox1_chef_id", TextBox1_chef_id.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox4_chef_name", TextBox4_chef_name.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Chef added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        bool checkIfChefExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from chef_master_tbl where chef_id='" + TextBox1_chef_id.Text.Trim() + "';", con);
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
        void clearForm()
        {
            TextBox1_chef_id.Text = "";
            TextBox4_chef_name.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}