<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 11px;
        }
        .auto-style2 {
            margin-right: 0px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="height: 400px; width: 691px; background-color: yellow; border-style:solid; border-color:black;" >
                <tr>
                    <td colspan="2" align="center"><h2>Login Page</h2>
                        <p>
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="131px" ImageUrl="~/Images/login.png" Width="189px" />
                        </p>
                    </td>
                    
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>Email Id:         <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Height="57px" Width="280px" BackColor="white" TextMode="Email" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>Password:</b></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="57px" Width="280px" BackColor="white" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button2" runat="server" Height="54px" Text="Login" Width="151px" BackColor="white" Font-Bold="True" Font-Size="Larger" OnClick="Button2_Click" BorderStyle="Solid" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Welcome" ForeColor="#009900"></asp:Label>
      
                    </td>
                    <td align="right">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Bahnschrift SemiBold" ForeColor="Red" NavigateUrl="~/Registration.aspx">If you new register now..</asp:HyperLink>
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
