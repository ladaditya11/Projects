<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpaymentmanagement.aspx.cs" Inherits="MasterPlan.adminpaymentmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
        $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
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
                                   <img width="100px" src="imgs/payment.jpg" /> 
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
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2_contact_no" runat="server" placeholder="Contact No."></asp:TextBox><br />
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3_username" runat="server" placeholder="Username"></asp:TextBox><br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="d-grid gap-2">
                                    <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
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
                                   <h3>Payment List</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecanteenDBConnectionString %>" SelectCommand="SELECT * FROM [payment_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView  CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
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
