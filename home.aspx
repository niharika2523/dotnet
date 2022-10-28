<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BMS.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1,h2{
            text-align:center;
            font-family:'Times New Roman', Times, serif;
            background-color:darkgreen;
            color:white;
        }
        .auto-style1 {
            width: 255px;
        }
        *{
            padding:10px;
        }
        table{
            align-content:center;
            align-items:center;
        }
        .auto-style3 {
            width: 500px;
            margin-left:auto;
            margin-right:auto;
            margin-top: 0;
            margin-bottom: 0;
        }
        .auto-style4 {
            align-items:center;
        }
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <form id="form1" runat="server">
    <h2 id="ac">Account number: 
        <asp:Label ID="ac" runat="server"></asp:Label>
        </h2>
    <div>
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="DEPOSIT" OnClick="Button1_Click" Width="200px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="WITHDRAW" OnClick="Button2_Click" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="200px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="MINI STATEMENT" OnClick="Button4_Click" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button5" runat="server" Text="CHANGE PIN" OnClick="Button5_Click" Width="200px" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="BALANCE" OnClick="Button6_Click" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button7" runat="server" CssClass="auto-style4" Text="LOGOUT" Width="200px" OnClick="Button7_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
