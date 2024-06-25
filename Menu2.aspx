<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu2.aspx.cs" Inherits="MasterPlan.Menu2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <center>
    <asp:GridView ID="Gridview1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
       <columns>
             <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="chkheader" OnCheckedChanged="chkheader_CheckedChanged" runat="server" AutoPostBack="true" Text="Select All" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" OnCheckedChanged="CheckBox2_CheckedChanged" runat="server" />
                </ItemTemplate>

            </asp:TemplateField>
           <asp:TemplateField HeaderText="ProductId" Visible="false">
               <ItemTemplate>
                   <asp:Label ID="lbProductId" runat="server" Text='<%#Bind("ProductId") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" Visible="false">
               <ItemTemplate>
                   <asp:Label ID="lbProductName" runat="server" Text='<%#Bind("ProductName") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Price" Visible="false">
               <ItemTemplate>
                   <asp:Label ID="lbPrice" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="ParentId" Visible="false">
               <ItemTemplate>
                   <asp:Label ID="lbParentId" runat="server" Text='<%#Bind("ParentId") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>
       </columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
        <br /><br />
    <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="selected item" OnClick="Button1_Click" /><br /><br />
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <columns>
           <%-- <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="chkheader1"  runat="server" AutoPostBack="true" Text="Select All" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox3"  runat="server" />
                </ItemTemplate>

            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="Quantity"> 

                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    
    <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="save" OnClick="Button2_Click" /><br /><br />
       
        <a href="HomePage.aspx"><< Back to Home</a><br /><br />
    
            </center>

</asp:Content>
