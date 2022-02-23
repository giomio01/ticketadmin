<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="login.aspx.vb" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('pictures/BG1.jpg'); font-style:oblique; font-size:large; position:center; padding:15px">
    <p>
        &nbsp;MIS TICKETING&nbsp;SYSTEM ADMIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img class="modal-sm" src="pictures/e24f6405-8cf3-4463-b12a-e32db966be6b.jpg" style="height: 95px; width: 375px;" /></p>
    <p>
        &nbsp;</p>
    <p>

        
        Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <p>
        &nbsp;</p>
        
    <p>
        
        Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
   
    <p>
        &nbsp;</p>
    <p>
          
        <asp:Button ID="Button1" runat="server" Text="Login" Width="123px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" Width="123px" style="margin-bottom: 0" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="   "></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="..."></asp:Label>
        </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
 
       </div>
</asp:Content>
