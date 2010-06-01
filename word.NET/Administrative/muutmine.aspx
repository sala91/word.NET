<%@ Page Title="" Language="C#" MasterPageFile="~/Administrative/admin.Master" AutoEventWireup="true" CodeBehind="muutmine.aspx.cs" Inherits="katsetus.Administrative.muutmine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [postitused] WHERE [id] = @original_id AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([content] = @original_content) OR ([content] IS NULL AND @original_content IS NULL)) AND (([rights] = @original_rights) OR ([rights] IS NULL AND @original_rights IS NULL)) AND (([tags] = @original_tags) OR ([tags] IS NULL AND @original_tags IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))" 
        InsertCommand="INSERT INTO [postitused] ([id], [title], [author], [content], [rights], [tags], [time]) VALUES (@id, @title, @author, @content, @rights, @tags, @time)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [postitused]" 
        UpdateCommand="UPDATE [postitused] SET [title] = @title, [author] = @author, [content] = @content, [rights] = @rights, [tags] = @tags, [time] = @time WHERE [id] = @original_id AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([content] = @original_content) OR ([content] IS NULL AND @original_content IS NULL)) AND (([rights] = @original_rights) OR ([rights] IS NULL AND @original_rights IS NULL)) AND (([tags] = @original_tags) OR ([tags] IS NULL AND @original_tags IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="String" />
        <asp:Parameter Name="original_title" Type="String" />
        <asp:Parameter Name="original_author" Type="String" />
        <asp:Parameter Name="original_content" Type="String" />
        <asp:Parameter Name="original_rights" Type="String" />
        <asp:Parameter Name="original_tags" Type="String" />
        <asp:Parameter Name="original_time" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="String" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="content" Type="String" />
        <asp:Parameter Name="rights" Type="String" />
        <asp:Parameter Name="tags" Type="String" />
        <asp:Parameter Name="time" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="content" Type="String" />
        <asp:Parameter Name="rights" Type="String" />
        <asp:Parameter Name="tags" Type="String" />
        <asp:Parameter Name="time" Type="DateTime" />
        <asp:Parameter Name="original_id" Type="String" />
        <asp:Parameter Name="original_title" Type="String" />
        <asp:Parameter Name="original_author" Type="String" />
        <asp:Parameter Name="original_content" Type="String" />
        <asp:Parameter Name="original_rights" Type="String" />
        <asp:Parameter Name="original_tags" Type="String" />
        <asp:Parameter Name="original_time" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" InsertVisible="False" />
        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
        <asp:BoundField DataField="title" HeaderText="title" 
                SortExpression="title" />
        <asp:BoundField DataField="content" HeaderText="content" 
                SortExpression="content" />
        <asp:BoundField DataField="rights" HeaderText="rights" 
            SortExpression="rights" />
        <asp:BoundField DataField="tags" HeaderText="tags" SortExpression="tags" />
    </Columns>
</asp:GridView>
</asp:Content>
