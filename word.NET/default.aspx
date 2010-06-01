<%@ Page Title="" Language="C#" MasterPageFile="~/public.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="katsetus.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id], [author], [title], [content], [tags], [rights], [time] FROM [postitused] ORDER BY [id] DESC"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <h2><asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /></h2>
            Autor:
            <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
            , postitatud:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
            <br />
            Tagid:
            <asp:Label ID="tagsLabel" runat="server" Text='<%# Eval("tags") %>' />
            <br />
            Õigused:
            <asp:Label ID="rightsLabel" runat="server" Text='<%# Eval("rights") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>
