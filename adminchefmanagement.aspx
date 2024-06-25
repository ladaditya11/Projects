<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminchefmanagement.aspx.cs" Inherits="MasterPlan.adminchefmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr.first")))dataTable();
        });
    </script>
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
                                   <h4>Chef Details</h4> 
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img width="100px" src="imgs/chef.jpg" />
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
                                <label>Chef ID</label>
                               <div class="form-group">
                                   <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1_chef_id" runat="server" placeholder="ID"></asp:TextBox>
                                   <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                       </div>
                               </div>
                                </div>
                             <div class="col-md-8">
                                 <label>Chef Name</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4_chef_name" runat="server"></asp:TextBox><br />
                               </div>
                                 </div>
                                
                                <div class="row">
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                                            </div>
                                        </div>
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                                            </div>
                                        </div>
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                        <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                            </div>
                                        </div>
                                    </div>
                        </div>
                    </div>
                </div>

                <a href="HomePage.aspx"><< Back to Home</a><br /><br />
            </div>
    

            <div class="col-md-7">
                 <div class="card">
                    <div class="card-body">
                        
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Chef List</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                             <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ecanteenDBConnectionString %>" SelectCommand="SELECT * FROM [chef_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="chef_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="chef_id" HeaderText="chef_id" ReadOnly="True" SortExpression="chef_id" />
                                        <asp:BoundField DataField="chef_name" HeaderText="chef_name" SortExpression="chef_name" />
                                    </Columns>

                                </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecanteenDBConnectionString %>" SelectCommand="SELECT * FROM [chef_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
