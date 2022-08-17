<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Registration.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1150px;height:30px">
        <tr style="background-color:ghostwhite">
            <td colspan="2" Style=" text-align:right">
                <asp:Label ID="Label4" runat="server" Style=" text-align:left" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift SemiBold"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" NavigateUrl="~/Login.aspx">Click To Login</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#CA252B" BorderColor="#CCCCCC" Font-Bold="True" ForeColor="White" Height="27px" Width="105px" OnClick="Button1_Click" Font-Names="Arial Black" />
            </td>
        </tr>
   </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
       <table>
           <tr>
               <td style="text-align:center;background-color:yellow">
                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Open Sans ExtraBold" ForeColor="Black"></asp:Label>
               </td>
           </tr>
           <tr>
               <td style="text-align:center">
                   <asp:Image ID="Image1" runat="server" BorderColor="Yellow" BorderWidth="1px" Height="279px" Width="278px" ImageUrl= '<%# Eval("Pimage") %>' />
               </td>
           </tr>
           <tr>
               <td style="text-align:center;background-color:yellow">
                   <asp:Label ID="Label2" runat="server" Text="Price:RS" Font-Bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="center">Qauntity
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="text-align:center">
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Images/add-to-cart.jpg" Width="130px" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart"/>
               </td>
           </tr>
       </table>
        <br />
        <br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecordDBConnectionString %>" SelectCommand="SELECT [ProductID], [Pname], [Pimage], [Pprice] FROM [Product1]"></asp:SqlDataSource>
    
</asp:Content>
