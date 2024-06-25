<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="MasterPlan.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <section>
        <center>
        <img width="500px" src="imgs/feedback.jpg" class="img-fluid" />
            </center>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                    <center>
                        <h3><p><b>Please let us know how was the food and service</b></p></h3>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox1_name" runat="server" placeholder="Name"></asp:TextBox><br />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2_experience" runat="server" placeholder="Tell us your experience here" TextMode="MultiLine" Rows="4"></asp:TextBox><br />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <center>
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button><br /><br />
                </center>
            </div>
            <a href="HomePage.aspx"><< Back to Home</a><br /><br />
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
