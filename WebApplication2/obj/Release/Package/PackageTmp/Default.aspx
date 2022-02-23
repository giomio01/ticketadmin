<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication2._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('pictures/BG1.jpg'); font-style:oblique; font-size:large; padding:15px">
        <table class="nav-justified">
            <tr>
                <td>
                    <img class="modal-sm" src="pictures/e24f6405-8cf3-4463-b12a-e32db966be6b.jpg" style="height: 95px; width: 375px; position:center" /></td>
            </tr>
            <tr>
                <td style="height: 68px"></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="80px" Text="Manage Ticket" Width="212px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 178px">
                    <asp:Button ID="Button3" runat="server" Height="80px" Text="Show Ticket Report" Width="213px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button5" runat="server" Height="80px" Text="Exit" Width="212px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
                </td>
            </tr>
        </table>
       

        </div>

</asp:Content>
