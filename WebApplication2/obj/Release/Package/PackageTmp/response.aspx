<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="response.aspx.vb" Inherits="WebApplication2.response" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <div style="background-image: url('pictures/BG.jpg'); font-style:oblique; font-size:large; padding:15px">
             <script type="text/javascript">
        function ValidNumeric() {

            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57) { return true; }
            else { return false; }
        }
             </script>
    <table class="nav-justified" style="height: 161px">
        <tr>
            <td style="width: 258px; height: 121px;">Please Enter Ticket Number:</td>
            <td class="modal-sm" style="width: 220px; height: 121px">
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" onkeypress="return ValidNumeric()" style="margin-left: 0"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Search" Width="118px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
            </td>
            <td style="height: 121px">
                <asp:Label ID="Label11" runat="server" Text="..."></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <img alt="" class="modal-sm" src="pictures/e24f6405-8cf3-4463-b12a-e32db966be6b.jpg" style="height: 95px; width: 372px" /></td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px;">Name:<td class="modal-sm" style="width: 220px; height: 25px">
                <asp:Label ID="Label6" runat="server" Text="..."></asp:Label>
            </td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px;">Issuer ID number:</td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                <asp:Label ID="Label7" runat="server" Text="..."></asp:Label>
            </td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px;">Department:<td class="modal-sm" style="width: 220px; height: 25px">
                <asp:Label ID="Label8" runat="server" Text="..."></asp:Label>
            </td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px;">Station:</td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                <asp:Label ID="Label9" runat="server" Text="..." ></asp:Label>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px;">Request Type:</td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                <asp:Label ID="Label10" runat="server" Text="..."></asp:Label>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px">
                <br />
                Issues/Initial Action Taken:</td>
            <td class="modal-sm" style="width: 220px; height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Height="175px" Width="335px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                &nbsp;</td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px">
                <br />
                Final Assessment:</td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                &nbsp;</td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px">
                <asp:TextBox ID="TextBox3" runat="server" Height="175px" Width="335px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status:</td>
            <td style="height: 25px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>ACTIVE</asp:ListItem>
                    <asp:ListItem>HANDLED</asp:ListItem>
                    <asp:ListItem>ON-GOING</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 258px; height: 25px">
                <asp:Label ID="Label12" runat="server" Text="..."></asp:Label>
            </td>
            <td class="modal-sm" style="width: 220px; height: 25px">
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="57px" Text="APPLY" Width="153px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
            </td>
            <td style="height: 25px">
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Height="57px" Text="CANCEL" Width="153px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" />
            </td>
        </tr>
    </table>
         </div>
</asp:Content>
