<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ordersuccessful.aspx.cs" Inherits="MasterPlan.ordersuccessful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2>ORDER SUCCESSFUL !!!</h2>
                </center>
                <br />
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <h3>Order Successfully Recorded. Please go to the Canteen to collect your order within 15 mins</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            <center>   
       <a href="HomePage.aspx" input class="btn btn-success btn-block btn-lg" id="Button1" type="button" value="Exit" / >EXIT</a><br /><br />
                </center>
    </div>
            </div>
        </div>
</asp:Content>
