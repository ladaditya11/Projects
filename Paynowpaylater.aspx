<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Paynowpaylater.aspx.cs" Inherits="MasterPlan.Paynow_paylater" %>
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
                                    <h3>When do you want your Order ?</h3>
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
                                    <div class="d-grid gap-2">
                                        <a href="payment.aspx" input class="btn btn-info btn-block btn-lg" ID="Button1" type="button" value="Order Now Pay Now" >Order Now Pay Now</a><br />
                                        </div>
                               </div>
                                <div class="form-group">
                                     <div class="d-grid gap-2">
                                        <a href="ordersuccessful.aspx" input class="btn btn-info btn-block btn-lg" ID="Button2" type="button" value="Order Now Pay Later" >Order Now Pay Later</a><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                     <div class="d-grid gap-2">
                                        <a href="ordersuccessful.aspx" input class="btn btn-info btn-block btn-lg" ID="Button3" type="button" value="Order Later Pay Later" >Order Later Pay Later</a><br />
                                    </div>
                                </div>
                                <h6><b>Note</b> : In 'Order Later Pay Later', your order wil be prepared 5-10 mins later than the usual order</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
