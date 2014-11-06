<%@ Page Title="" Language="VB" MasterPageFile="~/apple.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Welcome to Apple Inventory</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome user to the inventory site</h2>
    <p> Lorem ipsum dolor sit amet</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw7 %>" SelectCommand="SELECT [Name], [Year], [Cost], [Model], [Color] FROM [cpetit_hw7]"></asp:SqlDataSource>
</asp:Content>

