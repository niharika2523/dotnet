<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="BMS.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1,h2{
            background-color:darkgreen;
            color:white;
        }
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <h2>Delete Account</h2>
    <form id="form1" runat="server">
    <div>
    Are you sure you want to delete your account?

    </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DELETE" />
    </form>
</body>
</html>
