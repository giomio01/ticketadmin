<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="display.aspx.vb" Inherits="WebApplication2.display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
              <style type="text/css">  
            .scrolling {  
                position: absolute;  
            }  
              
            .gvWidthHight {  
                overflow: scroll;  
                height: 500px;  
                width: 1140px;  
            }  
        </style>  
    <div style="background-image: url('pictures/BG.jpg'); font-style:oblique; font-size:medium; position:center; padding:15px">
        <asp:Button ID="Button2" runat="server" BorderColor="Gray" BorderStyle="Inset" ForeColor="Black" Text="Export Files" Width="123px" Height="41px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="41px" Text="Exit" Width="123px" BorderColor="Gray" BorderStyle="Inset" ForeColor="Black" />

        <br />

        <br />

        <div class=”gvWidthHight”>  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeys="idticket" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Respond" ShowSelectButton="True" />
                <asp:BoundField DataField="idticket" HeaderText="idticket" InsertVisible="False" ReadOnly="True" SortExpression="idticket" />
                <asp:BoundField DataField="tick_emp" HeaderText="tick_emp" SortExpression="tick_emp" />
                <asp:BoundField DataField="tick_name" HeaderText="tick_name" SortExpression="tick_name" />
                <asp:BoundField DataField="tick_dept" HeaderText="tick_dept" SortExpression="tick_dept" />
                <asp:BoundField DataField="tick_station" HeaderText="tick_station" SortExpression="tick_station" />
                <asp:BoundField DataField="tick_request" HeaderText="tick_request" SortExpression="tick_request" />
                <asp:BoundField DataField="tick_info" HeaderText="tick_info" SortExpression="tick_info" />
                <asp:BoundField DataField="tick_status" HeaderText="tick_status" SortExpression="tick_status" />
                <asp:BoundField DataField="tick_action" HeaderText="tick_action" SortExpression="tick_action" />
                <asp:BoundField DataField="handled_by" HeaderText="handled_by" SortExpression="handled_by" />
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
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tspi_dbConnectionString(server) %>" ProviderName="<%$ ConnectionStrings:tspi_dbConnectionString(server).ProviderName %>" SelectCommand="SELECT idticket, tick_emp, tick_name, tick_dept, tick_station, tick_request, tick_info, tick_status, tick_action, handled_by, date_create, date_update FROM ticket ORDER BY tick_status, idticket DESC"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        
    </div>
                
</asp:Content>
