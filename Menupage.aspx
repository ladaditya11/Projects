<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menupage.aspx.cs" Inherits="MasterPlan.Menupage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2>MENU</h2>
                </center>
                <br />
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <h4>SNACKS</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text=">Idli......................30/-"  />&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="50px" ></asp:TextBox>&nbsp;<asp:TextBox ID="TextBox50" runat="server" Width="50px" Text="30" ReadOnly="True"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox2" runat="server" Text=">Dosa..................30/-" />&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="50px"> </asp:TextBox>&nbsp;<asp:TextBox ID="TextBox51" runat="server" Width="50px" Text="30" ReadOnly="True"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox3" runat="server" Text=">MeduVada.......25/-" />&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="50px"></asp:TextBox>&nbsp; <asp:TextBox ID="TextBox52" runat="server" Width="50px" Text="25" ReadOnly="True"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox4" runat="server" Text=">Bhaji Pav...........12/-" />&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>&nbsp;<asp:TextBox ID="TextBox53" runat="server" Width="50px" Text="12" ReadOnly="True"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text=">Samosa Pav......10/-" />&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text=">Vada Pav...........10/-" />&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox7" runat="server" Text=">Misal Pav..........35/-" />&nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox8" runat="server" Text=">Puri Bhaji.........45/-" />&nbsp;<asp:TextBox ID="TextBox8" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox9" runat="server" Text=">Chinese Bhel...25/-" />&nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox10" runat="server" Text=">Uttapam..........25/-" />&nbsp;<asp:TextBox ID="TextBox10" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox11" runat="server" Text=">Cutlet...............30/-" />&nbsp;<asp:TextBox ID="TextBox11" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox12" runat="server" Text=">Pav Bhaji.........50/-" />&nbsp;<asp:TextBox ID="TextBox12" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                    <br />
                                    <h4>UPWAS</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text=">Potato Chips..30/-" />&nbsp;<asp:TextBox ID="TextBox13" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox14" runat="server" Text=">Wada...............30/-" />&nbsp;<asp:TextBox ID="TextBox14" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox15" runat="server" Text=">Khichadi.........40/-" />&nbsp;<asp:TextBox ID="TextBox15" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                </div>
                                <div class="col-md-3">
                                    <h4>CHAT SECTION</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox16" runat="server" Text=">Pani Puri...20/-" />&nbsp;<asp:TextBox ID="TextBox16" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox17" runat="server" Text=">Bhel Puri...30/-" />&nbsp;<asp:TextBox ID="TextBox17" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox18" runat="server" Text=">Dahi Puri...65/-" />&nbsp;<asp:TextBox ID="TextBox18" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox19" runat="server" Text=">Sev Puri.....25/-" />&nbsp;<asp:TextBox ID="TextBox19" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox20" runat="server" Text=">Pattice.......50/-" />&nbsp;<asp:TextBox ID="TextBox20" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                    <br />
                                    <h4>SANDWICHES</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox21" runat="server" Text=">Bread Butter............30/-" />&nbsp;<asp:TextBox ID="TextBox21" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox22" runat="server" Text=">Toast Sandwich.......50/-" />&nbsp;<asp:TextBox ID="TextBox22" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox23" runat="server" Text=">Cheese Sandwich...45/-" />&nbsp;<asp:TextBox ID="TextBox23" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox24" runat="server" Text=">Veg. Sandwich........25/-" />&nbsp;<asp:TextBox ID="TextBox24" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                </div>
                                <div class="col-md-3">
                                    <h4>CHINESE STARTERS</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox25" runat="server" Text=">Idli Chilli(65)..........55/-" />&nbsp;<asp:TextBox ID="TextBox25" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox26" runat="server" Text=">Veg. Crispy.............60/-" />&nbsp;<asp:TextBox ID="TextBox26" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox27" runat="server" Text=">Paneer Crispy........65/-" />&nbsp;<asp:TextBox ID="TextBox27" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox28" runat="server" Text=">Manchurian Dry...55/-" />&nbsp;<asp:TextBox ID="TextBox28" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                    <br />
                                    <h4>FRIED RICE & NOODLES</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox29" runat="server" Text=">Fried Rice.....................60/-" />&nbsp;<asp:TextBox ID="TextBox29" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox30" runat="server" Text=">Schezwan Rice............65/-" />&nbsp;<asp:TextBox ID="TextBox30" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox31" runat="server" Text=">Triple Rice....................70/-" />&nbsp;<asp:TextBox ID="TextBox31" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox32" runat="server" Text=">Singapore Rice...........65/-" />&nbsp;<asp:TextBox ID="TextBox32" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox33" runat="server" Text=">Manchurian Rice.......65/-" />&nbsp;<asp:TextBox ID="TextBox33" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox34" runat="server" Text=">Hakka Noodles..........65/-" />&nbsp;<asp:TextBox ID="TextBox34" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox35" runat="server" Text=">Schezwan Noodles...70/-" />&nbsp;<asp:TextBox ID="TextBox35" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                </div>
                                <div class="col-md-3">
                                    <h4>MILKSHAKES</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox36" runat="server" Text=">Vanilla.....50/-" />&nbsp;<asp:TextBox ID="TextBox36" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox37" runat="server" Text=">Kesar.......55/-" />&nbsp;<asp:TextBox ID="TextBox37" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox38" runat="server" Text=">Rose........50/-" />&nbsp;<asp:TextBox ID="TextBox38" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox39" runat="server" Text=">Mango...55/-" />&nbsp;<asp:TextBox ID="TextBox39" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox40" runat="server" Text=">Apple......55/-" />&nbsp;<asp:TextBox ID="TextBox40" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox41" runat="server" Text=">Badam...60/-" />&nbsp;<asp:TextBox ID="TextBox41" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                    <br />
                                    <h4>DRINKS</h4>
                                    <h6>
                                        <asp:CheckBox ID="CheckBox42" runat="server" Text=">Tea.......................10/-" />&nbsp;<asp:TextBox ID="TextBox42" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox43" runat="server" Text=">Coffee................20/-" />&nbsp;<asp:TextBox ID="TextBox43" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox44" runat="server" Text=">Juice...................20/-" />&nbsp;<asp:TextBox ID="TextBox44" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox47" runat="server" Text=">Juice...................20/-" />&nbsp;<asp:TextBox ID="TextBox47" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox45" runat="server" Text=">JalJeera..............20/-" />&nbsp;<asp:TextBox ID="TextBox45" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox46" runat="server" Text=">Cold Coffee.......45/-" />&nbsp;<asp:TextBox ID="TextBox46" runat="server" Width="50px"></asp:TextBox><br /><br />
                                        <asp:CheckBox ID="CheckBox48" runat="server" Text=">Mineral Water...15/-" />&nbsp;<asp:TextBox ID="TextBox48" runat="server" Width="50px"></asp:TextBox><br /><br />
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <center>
                    <h3>Quantity Total - &nbsp;<asp:TextBox ID="TextBox49" runat="server" Width="100px"></asp:TextBox></h3><br />
                    <h3>Total - &nbsp;<asp:TextBox ID="TextBox55" runat="server" Width="100px"></asp:TextBox></h3><br />
                    <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="Total" OnClick="Button1_Click"></asp:Button><br /><br />
                    
                </center>
                
            </div>
        </div>
    <div class="row">
        <div class="col-6">
            <div class="d-grid gap-2">
                <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button2" runat="server" Text="Reset"  />
            </div>
        </div>
        <div class="col-6">
            <div class="d-grid gap-2">
                <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Proceed to Pay" /><br />
            </div>
        </div>
    </div>
    </div>
</asp:Content>
