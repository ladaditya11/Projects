using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPlan
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true;  //user Login linkbutton
                    LinkButton2.Visible = true;  //Sign up linkbutton

                    LinkButton3.Visible = false;  //logout link button
                    LinkButton7.Visible = false;  //Hellouser link button

                    LinkButton6.Visible = true;  //admin Login linkbutton
                    LinkButton8.Visible = false; //adminchefmanagement
                    LinkButton9.Visible = false; //adminfoodinventory
                    LinkButton10.Visible = false; //adminusermanagement
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;  //user Login linkbutton
                    LinkButton2.Visible = false;  //Sign up linkbutton

                    LinkButton3.Visible = true;  //logout link button
                    LinkButton7.Visible = true;  //Hellouser link button
                    LinkButton12.Visible = true; //menu
                    LinkButton4.Visible = true;  //Special offers
                    LinkButton5.Visible = true;  //Special Dishes
                    LinkButton7.Text = "Hello  "  + Session["username"].ToString();


                    LinkButton6.Visible = false;  //admin Login linkbutton
                    LinkButton8.Visible = false; //adminchefmanagement
                    LinkButton9.Visible = false; //adminfoodinventory
                    LinkButton10.Visible = false; //adminusermanagement
                    LinkButton11.Visible = false; //adminpaymentmanagement

                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;  //user Login linkbutton
                    LinkButton2.Visible = false;  //Sign up linkbutton

                    LinkButton3.Visible = true;  //logout link button
                    LinkButton7.Visible = true;  //Hellouser link button
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false;  //admin Login linkbutton
                    LinkButton8.Visible = true; //adminchefmanagement
                    LinkButton9.Visible = true; //adminfoodinventory
                    LinkButton10.Visible = true; //adminusermanagement
                    LinkButton11.Visible = true; //adminpaymentmanagement
                }
            }
            catch (Exception)
            {

            }
        }


       
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
           

        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Session["status"] = "";
            LinkButton1.Visible = true;  //user Login linkbutton
            LinkButton2.Visible = true;  //Sign up linkbutton

            LinkButton3.Visible = false;  //logout link button
            LinkButton7.Visible = false;  //Hellouser link button
            LinkButton4.Visible = false;  //Special offers
            LinkButton5.Visible = false;  //Special Dishes

            LinkButton6.Visible = true;  //admin Login linkbutton
            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");

        }
        protected void LinkButton5_click(object sender, EventArgs e)
        {
            Response.Redirect("Specialdishes.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Specialoffers.aspx");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminchefmanagement.aspx");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminfoodinventory.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx");
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpaymentmanagement.aspx");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu2.aspx");
        }

    }
}
