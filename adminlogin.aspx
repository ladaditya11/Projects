<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="MasterPlan.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img width="150px" src="imgs/adminpage.jpg" />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1_username" runat="server" placeholder="Username"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
                               </div>
                               <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /><br />
                                        </div>
                               </div>
                                
                            </div>
                        </div>
                    </div>
                </div>

                <a href="Homepage.aspx"><< Back to Home</a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
