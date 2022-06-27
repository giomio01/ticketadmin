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
                <asp:hyperlinkfield Text="Select>" datanavigateurlfields="idticket"
                    datanavigateurlformatstring="response.aspx?idtext={0}" />
                <asp:BoundField DataField="idticket" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="idticket">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_emp" HeaderText="Employee No." SortExpression="tick_emp">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_name" HeaderText="Employee Name" SortExpression="tick_name">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_dept" HeaderText="Department" SortExpression="tick_dept">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_station" HeaderText="Station" SortExpression="tick_station">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_request" HeaderText="Type of Request" SortExpression="tick_request">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_info" HeaderText="Ticket Info" SortExpression="tick_info">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_status" HeaderText="Ticket Status" SortExpression="tick_status">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="tick_action" HeaderText="Final Action" SortExpression="tick_action">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="handled_by" HeaderText="Handled By" SortExpression="handled_by">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="date_create" HeaderText="Date Created" SortExpression="date_create">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
                <asp:BoundField DataField="date_update" HeaderText="Date Updated" SortExpression="date_update">
                    <HeaderStyle HorizontalAlign="Center" />
<ItemStyle HorizontalAlign="Center" Width="100px" />
</asp:BoundField>
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
