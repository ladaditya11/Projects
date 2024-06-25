<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="MasterPlan.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
   <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img width="100px" src="imgs/userpic.png" />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Your Profile</h3>
                                    
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
                                   <asp:TextBox CssClass="form-control" ID="TextBox1_name" runat="server" placeholder="Name"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4_email_id" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox5_contact_no" runat="server" placeholder="Contact No." TextMode="Number"></asp:TextBox><br />
                               </div>
                                 <div class="row">
                                     <center>
                            <div class="col">
                               <span class="badge bg-info text-dark">Login Credentials</span><br /><br />
                                </div>
                                         </center>
                                     </div>
                                 <div class="form-group">
                                   <asp:TextBox class="form-control" ID="TextBox2_username" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                   <asp:TextBox class="form-control" ID="TextBox3_password" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                   <asp:TextBox class="form-control" ID="TextBox6_new_pass" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox><br />
                               </div>
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                <center>
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /><br />
                                        </div>
                                 </div>
                                </center>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="HomePage.aspx"><< Back to Home</a><br /><br />
            </div>

            
        </div>
    </div>
</asp:Content>
