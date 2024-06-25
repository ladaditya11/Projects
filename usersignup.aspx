
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="MasterPlan.usersignup" %>
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
                                  <img width="100px" src="imgs/userpic.png" />
                                </center>
                                  </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>User Sign Up</h3>
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
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required field" ControlToValidate="TextBox1_name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1_name" runat="server" placeholder="Name"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email address" ControlToValidate="TextBox4_email_id" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required field"  ControlToValidate="TextBox4_email_id" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <asp:TextBox CssClass="form-control" ID="TextBox4_email_id" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Contact Number" ControlToValidate="TextBox5_contact_no" ForeColor="Red"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required field" ControlToValidate="TextBox5_contact_no" ForeColor="Red"></asp:RequiredFieldValidator>

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
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox2_username" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <asp:TextBox class="form-control" ID="TextBox2_username" runat="server" placeholder="Username"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox3_password" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <asp:TextBox class="form-control" ID="TextBox3_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
                               </div>
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" onclick="Button1_Click" /><br />
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
