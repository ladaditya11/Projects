<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Specialdishes.aspx.cs" Inherits="MasterPlan.Specialdishes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2>Today's Special</h2>
                </center>
                <br />
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    
                                    <h4>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text=">White Sauce Pasta"  />&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="50px" Text="60" ReadOnly="True" ></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="100px" placeholder="Quantity" ></asp:TextBox>
                               </h4>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <center>
                    <h3>Total - &nbsp;<asp:TextBox ID="TextBox49" runat="server" Width="100px"></asp:TextBox></h3><br />
                    <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="Total" onclick="Button1_Click"></asp:Button><br /><br />
                   
                </center>
            </div>
        </div>
    <div class="row">
        <div class="col-12">
            <div class="d-grid gap-2">
                 <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Proceed to Pay" OnClick="Button2_Click"></asp:Button><br /><br />
            </div>
        </div>
    </div>
        <a href="HomePage.aspx"><< Back to Home</a><br /><br />
    </div>
</asp:Content>
