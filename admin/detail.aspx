<%@ Page Title="" Language="VB" MasterPageFile="~/apple.master" AutoEventWireup="false" CodeFile="detail.aspx.vb" Inherits="detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw7 %>" SelectCommand="SELECT * FROM [cpetit_hw7] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [cpetit_hw7] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cpetit_hw7] ([Id], [Name], [Year], [Cost], [Model], [Color]) VALUES (@Id, @Name, @Year, @Cost, @Model, @Color)" UpdateCommand="UPDATE [cpetit_hw7] SET [Name] = @Name, [Year] = @Year, [Cost] = @Cost, [Model] = @Model, [Color] = @Color WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Cost" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Cost" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  </asp:Content>

