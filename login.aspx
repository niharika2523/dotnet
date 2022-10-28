<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BMS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1,h2{
            text-align:center;
            font-family:'Times New Roman', Times, serif;
            background-color:darkgreen;
            color: white;
        }
        *{
            padding:10px;
        }
        .auto-style1 {
            width: 155px;
            text-align:right;
        }
        .auto-style5 {
            width: 277px;
            
        }
        .auto-style6 {
            margin-left: 77px;
            background-color:darkgreen;
            color:white;
        }
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <h2>Login Page</h2>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%; margin-left:25%; ">
            <tr>
                <td class="auto-style1">Account Number* :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter account number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password* :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="237px"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="LOGIN" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Sign Up</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
