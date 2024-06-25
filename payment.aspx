<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="MasterPlan.payment" %>
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
                                    <img  width="150px" src="imgs/makepayment.jpg" />
                                    
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox2_contact_no" runat="server" placeholder="Contact No."></asp:TextBox><br />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3_username" runat="server" placeholder="Username"></asp:TextBox><br />
                                </div>
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Confirm Order" OnClick="Button1_Click" />
                                        </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
