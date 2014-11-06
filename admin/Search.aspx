<%@ Page Title="" Language="VB" MasterPageFile="~/apple.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="Sqlhw7" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw7 %>" SelectCommand="SELECT * FROM [cpetit_hw7]"></asp:SqlDataSource>
        Search:
        <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Sqlhw7">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            </Columns>
        </asp:GridView>
</asp:Content>

