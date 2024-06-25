<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="MasterPlan.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section>
        <center>
        <img src="imgs/contactus.png" class="img-fluid" />
            </center>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                    <center>
                        <h2>WE'RE HERE TO HELP</h2>
                        <p><b>We're here to answer all your order-related inquiries (we also tell some great jokes).  Our goal is to provide you with an stress-free ordering experience.</b></p>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1_name" runat="server" placeholder="Name"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2_email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox><br />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox3_subject" runat="server" placeholder="Subject"></asp:TextBox><br />
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox4_message" runat="server" placeholder="Message" TextMode="MultiLine" Rows="4"></asp:TextBox><br />
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col">
                    <h3>Was it our website that made you contact us?</h3>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox5_website" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox><br />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <center>
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"></asp:Button><br /><br />
                    </center>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                      <i class="fab fa-2x fa-instagram"></i>&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="fab fa-2x fa-facebook-f"></i>&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="fab fa-2x fa-twitter"></i>&nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="fab fa-2x fa-linkedin"></i>&nbsp;&nbsp;&nbsp;&nbsp;
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
