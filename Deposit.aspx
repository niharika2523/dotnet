<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="BMS.Deposit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:15px;
        }
        .auto-style1 {
            width: 47%;
        }
        .auto-style2 {
            width: 191px;
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
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <h2>Deposit</h2>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Account Number : </td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Deposit Amount : </td>
                <td>Rs.&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Submit" Width="124px" OnClick="Button2_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Back" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
