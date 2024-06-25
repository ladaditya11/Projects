<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminfoodinventory.aspx.cs" Inherits="MasterPlan.adminfoodinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div class="container-fluid">
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
                                   <img width="100px" src="imgs/food.jpg" />
                                </center>
                            </div>
                        </div>
                        
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-3">
                                <label>Food ID</label>
                               <div class="form-group">
                                   <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Width="40px" ></asp:TextBox>
                                       <asp:LinkButton class="btn btn-primary" ID="LinkButton4"  runat="server" onclick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                       </div>
                               </div>
                                </div>
                             <div class="col-md-9">
                                 <label>Food Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Food Name"></asp:TextBox><br />
                               </div>
                                 </div>
                                
                               <div class="row">
                                 <div class="col-4">
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"  onclick="Button1_Click" Text="Add" /><br />
                                        </div>
                                 </div>
                                 </div>
                                    <div class="col-4">
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button2" runat="server"  onclick="Button2_Click" Text ="Update" /><br />
                                        </div>
                                 </div>
                                 </div>
                                    <div class="col-4">
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button3" runat="server"  OnClick="Button3_Click" Text="Delete" /><br />
                                        </div>
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
                    <div class="card-body">
                        
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Food Inventory List</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecanteenDBConnectionString %>" SelectCommand="SELECT * FROM [food_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="food_id" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                       
                                        <asp:BoundField DataField="food_id" HeaderText="food_id" ReadOnly="True" SortExpression="food_id" />
                                        <asp:BoundField DataField="food_name" HeaderText="food_name" SortExpression="food_name" />
                                       
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
