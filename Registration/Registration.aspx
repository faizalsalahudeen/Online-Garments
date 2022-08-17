<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            width: 750px;
            height: 744px;
        }
        .auto-style2 {
            width: 50%;
        }
        .auto-style3 {
            width: 51%;
        }
        .auto-style4 {
            width: 52%;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="border-color: #000000; border-style: solid; background-color: yellow" class="auto-style1">
                <tr>
                    <td colspan="2" align="center"><h2>Registration Page</h2>
                        <p>
                            <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl="~/Images/Regis.png" Width="163px" />
                        </p></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2"><b>First Name:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="253px" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </b>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Last Name:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="253px" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Email_ID:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="253px" TextMode="Email" BorderStyle="Solid"></asp:TextBox>
                        </b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Gender:</b></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="34px" Width="259px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Address:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="253px" TextMode="MultiLine" BorderStyle="Solid"></asp:TextBox>
                        </b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Phone_No:</b></td>
                    <td class="auto-style3"><b>
                        <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="253px" OnTextChanged="TextBox5_TextChanged" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
                        </b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone Number Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Phone _No" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Password:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="253px" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                        </b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Confirm Password:</b></td>
                    <td><b>
                        <asp:TextBox ID="TextBox7" runat="server" Height="34px" Width="253px" TextMode="Password" BorderStyle="Solid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Confirm Password Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </b>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Is Not Match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="auto-style4" Font-Bold="True" Font-Size="Large" Height="38px" Width="185px" OnClick="Button1_Click" BorderStyle="Solid" />
                    </td>
                    
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                

                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
