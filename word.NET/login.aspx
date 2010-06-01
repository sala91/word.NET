
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="katsetus.Administrative.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:login runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#333333" DestinationPageUrl="/Administrative">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:login>
        </center>
    </div>
    </form>
</body>
</html>
