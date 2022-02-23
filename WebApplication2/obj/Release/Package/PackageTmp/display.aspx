<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="display.aspx.vb" Inherits="WebApplication2.display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('pictures/BG.jpg'); font-style:oblique; font-size:medium; position:center; padding:15px">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False"  DataKeyNames="idticket" Height="470px" Width="1136px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="idticket" HeaderText="idticket" InsertVisible="False" ReadOnly="True" SortExpression="idticket" />
        <asp:BoundField DataField="tick_emp" HeaderText="tick_emp" SortExpression="tick_emp" />
        <asp:BoundField DataField="tick_name" HeaderText="tick_name" SortExpression="tick_name" />
        <asp:BoundField DataField="tick_dept" HeaderText="tick_dept" SortExpression="tick_dept" />
        <asp:BoundField DataField="tick_station" HeaderText="tick_station" SortExpression="tick_station" />
        <asp:BoundField DataField="tick_request" HeaderText="tick_request" SortExpression="tick_request" />
        <asp:BoundField DataField="tick_status" HeaderText="tick_status" SortExpression="tick_status" />
        <asp:BoundField DataField="date_create" HeaderText="date_create" SortExpression="date_create" />
        <asp:BoundField DataField="date_update" HeaderText="date_update" SortExpression="date_update" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
        <br />
        <br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tspi_dbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:tspi_dbConnectionString2.ProviderName %>" SelectCommand="SELECT idticket, tick_emp, tick_name, tick_dept, tick_station, tick_request, tick_status, date_create, date_update FROM ticket"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Height="50px" Text="Exit" Width="152px" BorderColor="White" BorderStyle="Outset" BorderWidth="10px" ForeColor="Black" />
        
    </div>
                
</asp:Content>
