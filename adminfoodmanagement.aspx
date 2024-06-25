<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminfoodmanagement.aspx.cs" Inherits="MasterPlan.adminfoodmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Food Details</h4> 
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img width="100px" src="imgs/food1.jpg" />
                                </center>
                            </div>
                        </div>
                        
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                                <label>Food ID</label>
                               <div class="form-group">
                                   <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                   <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                       </div>
                               </div>
                                </div>
                             <div class="col-md-8">
                                 <label>Food Name</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox><br />
                               </div>
                                 </div>
                                
                                <div class="row">
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" />
                                            </div>
                                        </div>
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" />
                                            </div>
                                        </div>
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                                            </div>
                                        </div>
                                    </div>
                        </div>
                    </div>
                </div>

                <a href="Homepage.aspx"><< Back to Home</a><br /><br />
            </div>
    

            <div class="col-md-7">
                 <div class="card">
</asp:Content>
