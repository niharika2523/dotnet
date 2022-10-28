<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BMS.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *{
            padding:5px;
            color:black;
        }
        h1,h2{
            text-align:center;
            background-color:darkgreen;
            color:white;
        }
        .auto-style1 {
            width: 250px;
            text-align:right;
        }
        .auto-style2 {
            width: 405px;
        }
        .auto-style5 {
            width: 405px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style12 {
            margin-left: 57px;
            background-color:darkgreen;
            color:white;
        }
        </style>
</head>
<body>

    <h1>Bank Management System</h1>
    <h2>Create Account</h2>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%; margin-left:25%">
            <tr>
                <td class="auto-style1">Account Number:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter correct account number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Name :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="325px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter correct name" ControlToValidate="TextBox1" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Age :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="109px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Correct Age" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Address :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="243px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Phone No.:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Phone" Width="239px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Phone number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Email" Width="322px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter correct email id" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">D.O.B.:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Date" Width="185px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter correct D.O.B." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">PIN :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="247px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox4" ErrorMessage="Check PIN" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Retype PIN :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="249px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter PIN" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="SUBMIT" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
