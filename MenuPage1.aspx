<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuPage1.aspx.cs" Inherits="MasterPlan.TestPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="chkheader" OnCheckedChanged="chkheader_CheckedChanged" runat="server" AutoPostBack="true" Text="Select All" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" OnCheckedChanged="CheckBox2_CheckedChanged" runat="server" />
                </ItemTemplate>

            </asp:TemplateField>
            
          <asp:TemplateField HeaderText="ProductId">
               <ItemTemplate>
                   <asp:Label ID="lbProductId" runat="server" Text='<%#Bind("ProductId") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName">
               <ItemTemplate>
                   <asp:Label ID="lbProductName" runat="server" Text='<%#Bind("ProductName") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Price">
               <ItemTemplate>
                   <asp:Label ID="lbPrice" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="ParentId">
               <ItemTemplate>
                   <asp:Label ID="lbParentId" runat="server" Text='<%#Bind("ParentId") %>'></asp:Label>
               </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
       
    </asp:GridView>

    <asp:Button ID="Button1" runat="server" Text="Selected Item" OnClick="Button1_Click"  />
    
    
    
    <asp:GridView ID="gridview2" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
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
            </asp:TemplateField >
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
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
        <asp:Button ID="txtSave" runat="server" Text="SAVE" />
        <br />
       <center>
                   
        </center>
</asp:Content>
