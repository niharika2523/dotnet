<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statement.aspx.cs" Inherits="BMS.Statement" %>

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
        
    </style>
</head>
<body>
    <h1>Bank Management System</h1>
    <h2>Statement</h2>
    <form id="form1" runat="server">
    <h3>Account Number: 
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </h3>
    <div>
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
      
    <div class="center">
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
