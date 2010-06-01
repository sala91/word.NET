<%@ Page Title="" Language="C#" MasterPageFile="~/Administrative/admin.Master" AutoEventWireup="true" CodeBehind="lisamine.aspx.cs" Inherits="katsetus.Administrative.lisamine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [postitused] WHERE [id] = @original_id AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([content] = @original_content) OR ([content] IS NULL AND @original_content IS NULL)) AND (([rights] = @original_rights) OR ([rights] IS NULL AND @original_rights IS NULL)) AND (([tags] = @original_tags) OR ([tags] IS NULL AND @original_tags IS NULL))" 
        InsertCommand="INSERT INTO [postitused] ([time], [author], [title], [content], [rights], [tags]) VALUES (@time, @author, @title, @content, @rights, @tags)" 
        SelectCommand="SELECT * FROM [postitused]" 
        
    UpdateCommand="UPDATE [postitused] SET [time] = @time, [author] = @author, [title] = @title, [content] = @content, [rights] = @rights, [tags] = @tags WHERE [id] = @original_id AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([content] = @original_content) OR ([content] IS NULL AND @original_content IS NULL)) AND (([rights] = @original_rights) OR ([rights] IS NULL AND @original_rights IS NULL)) AND (([tags] = @original_tags) OR ([tags] IS NULL AND @original_tags IS NULL))" 
    ConflictDetection="CompareAllValues" 
    OldValuesParameterFormatString="original_{0}">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_time" Type="DateTime" />
        <asp:Parameter Name="original_author" Type="String" />
        <asp:Parameter Name="original_title" Type="String" />
        <asp:Parameter Name="original_content" Type="String" />
        <asp:Parameter Name="original_rights" Type="String" />
        <asp:Parameter Name="original_tags" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="time" Type="DateTime" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="content" Type="String" />
        <asp:Parameter Name="rights" Type="String" />
        <asp:Parameter Name="tags" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="time" Type="DateTime" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="content" Type="String" />
        <asp:Parameter Name="rights" Type="String" />
        <asp:Parameter Name="tags" Type="String" />
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_time" Type="DateTime" />
        <asp:Parameter Name="original_author" Type="String" />
        <asp:Parameter Name="original_title" Type="String" />
        <asp:Parameter Name="original_content" Type="String" />
        <asp:Parameter Name="original_rights" Type="String" />
        <asp:Parameter Name="original_tags" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
        <InsertItemTemplate>
            <span style="">
            <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
            <asp:RequiredFieldValidator ErrorMessage="Aeg on nõutud!" ControlToValidate="timeTextBox"
                    runat="server" />
            <br />
            <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' /><asp:RequiredFieldValidator
                ErrorMessage="Autor on nõutud!" ControlToValidate="authorTextBox" runat="server" />
            <br />
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' /><asp:RequiredFieldValidator
                ErrorMessage="Tiitleriba on nõutud!" ControlToValidate="titleTextBox" runat="server" />
            <br />
            <asp:TextBox ID="contentTextBox" TextMode="multiline" rows="10" runat="server" Text='<%# Bind("content") %>'/><asp:RequiredFieldValidator
                ErrorMessage="Sisu on nõutud!" ControlToValidate="contentTextBox" runat="server" />
            <br />
            <asp:TextBox ID="rightsTextBox" runat="server" Text='<%# Bind("rights") %>' /><asp:RequiredFieldValidator
                ErrorMessage="Sa pead määrama oma postituse õigused" ControlToValidate="rightsTextBox" runat="server" />
            <br />
            <asp:TextBox ID="tagsTextBox" runat="server" Text='<%# Bind("tags") %>' /><asp:RequiredFieldValidator
                ErrorMessage="Sa pead määrama tagid!" ControlToValidate="tagsTextBox" runat="server" />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Post" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    </asp:Content>
