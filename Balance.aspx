<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Balance.aspx.cs" Inherits="BMS.Balance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:15px;
        }
        h1,h2{
            text-align:center;
            font-family:'Times New Roman', Times, serif;
            background-color:darkgreen;
            color:white;
        }
        table{
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style2 {
            width: 207px;
        }
        .auto-style3 {
            height: 26px;
            width: 207px;
        }
        .auto-style4 {
            width: 211px;
        }
        .auto-style5 {
            height: 26px;
            width: 211px;
        }
        .auto-style6 {
            width: 53%;
        }
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <h2>Balance</h2>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style3">Account Number: </td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Balance: </td>
                <td class="auto-style4">Rs.<asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
                </td>
                <td class="auto-style5" style="margin-left:auto; margin-right:auto;">
                    <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click"  />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
