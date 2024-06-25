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
    public partial class adminfoodinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button click
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getFoodByID();
        }

        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfFoodExists())
            {
                Response.Write("<script>alert('Food Already Exist, try some other Food ID');</script>");
            }
            else
            {
                addNewBook();
            }
        }
        // user defined functions


        void deleteFoodByID()
        {
            if (checkIfFoodExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from food_master_tbl WHERE food_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Food Deleted Successfully');</script>");

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

        void updateFoodByID()
        {
            if (checkIfFoodExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE food_master_tbl SET food_name=@food_name where food_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.Parameters.AddWithValue("@food_name", TextBox2.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Food Updated Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Food ID');</script>");
            }
        }

        void getFoodByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from food_master_tbl  WHERE food_id='" + TextBox1.Text.Trim() + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["food_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Food ID');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
        //update button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            updateFoodByID();
        }
        //delete button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteFoodByID();
        }
        bool checkIfFoodExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from food_master_tbl where food_id='" + TextBox1.Text.Trim() + "' OR food_name='" + TextBox2.Text.Trim() + "';", con);
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
        void addNewBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO food_master_tbl(food_id,food_name) values(@TextBox1,@TextBox2)", con);
                cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@TextBox2", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food Item added Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
    }
}