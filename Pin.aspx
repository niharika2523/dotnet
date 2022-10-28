<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pin.aspx.cs" Inherits="BMS.Pin" %>

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
            width: 50%;
        }
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            width: 250px;
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
    <h2>Change Pin</h2>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Account Number : </td>
                <td class="auto-style3" id="accno">&nbsp; 
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter PIN: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm PIN :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Enter Correct PIN" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SUBMIT" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
