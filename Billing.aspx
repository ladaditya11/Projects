<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="MasterPlan.Billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <asp:GridView Id="Gridview1" runat="server">
        <Columns>
               <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="chkheader"  runat="server" AutoPostBack="true" Text="Select All" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2"  runat="server" />
                </ItemTemplate>

            </asp:TemplateField>
        </Columns>
    </asp:GridView>
      <br /><br />
    Total : <asp:TextBox  Id="TextBox1" runat="server"></asp:TextBox>
    <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" /><br /><br /><br />
  
    <div class="row">
        <div class="col-12">
            <div class="d-grid gap-2">
                  <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Proceed to Pay" OnClick="Button2_Click" /> <br /> <br />
            </div>
        </div>
    </div>

</asp:Content>
