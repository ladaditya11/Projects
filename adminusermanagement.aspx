<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="MasterPlan.adminusermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
    </script>
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
                                   <h4>User Details</h4> 
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <img width="100px" src="imgs/userpic.png" />
                                </center>
                            </div>
                        </div>
                        
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-5">
                                <label>Username</label>
                               <div class="form-group">
                                   <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1_username" runat="server"></asp:TextBox>
                                       <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                       </div>
                               </div>
                                </div>
                            
                                
                                <div class="row">
                                    <div class="col-4">
                                        <br /><label>Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3_name" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox><br />
                               </div>
                                        </div>
                                    <div class="col-4">
                                        <br /><label>Email ID</label>
                                       <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4_email_id" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox><br />
                               </div>
                                        </div>
                                     <div class="col-4">
                                        <br /><label>Contact No</label>
                                       <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5_contact_no" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox><br />
                               </div>
                                        </div>
                                    </div>
                             <div class="row">
                                 <div class="col-8 mx-auto">
                                      <center>
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Delete User Permanently" OnClick="Button1_Click1" /><br />
                                        </div>
                                 </div>
                                </center>
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
                                   <h3>User List</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecanteenDBConnectionString %>" SelectCommand="SELECT * FROM [user_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="username" />
                                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                        
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email_id" HeaderText="Email ID" SortExpression="email_id" />
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
