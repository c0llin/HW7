<%@ Page Title="" Language="VB" MasterPageFile="~/apple.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Welcome to Apple Inventory</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome user to the inventory site</h2>
    <p> Lorem ipsum dolor sit amet</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" Width="460px">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="detail.aspx?Id={0}" Text="Select" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw7 %>" SelectCommand="SELECT * FROM [cpetit_hw7]"></asp:SqlDataSource>
</asp:Content>

