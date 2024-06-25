<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="MasterPlan.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section>
        <center>
               <img src="imgs/Home-bg.jpg"  class="img-fluid"/>
        </center>
     </section>
       <section>
           <div class="container">
               <div class="row">
                   <div class="col-12">
                       <center>
                            <h2>Fresh Flavors</h2>
                       </center>
                    </div>
               </div>
           </div>
           

           <div class="row">
               <div class="col-md-4">
                   <center>
                           <img src="imgs/home3.jpg" class="img-fluid" width="300px"/>
                   </center>
               </div>
          
              <div class="col-md-4">
                   <center>
                           <img src="imgs/home4.jpg" class="img-fluid" width="350px"  />
                   </center>
               </div>

               <div class="col-md-4">
                   <center>
                           <img src="imgs/pavbhaji2.jpg" class="img-fluid" width="300px"  />
                   </center>
               </div>
           </div>
                 <center>
                      <asp:LinkButton ID="LinkButton1" runat="server" href="userlogin.aspx">Click To Proceed</asp:LinkButton>
                      
                 </center>
       </section>
</asp:Content>
