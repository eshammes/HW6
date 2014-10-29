<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href ="~/stylesheet.css" />
</head>
<body>
     <div class="header">Wicked Easy Recipes</div>
    <div class="header2">Using 5 Ingredients or Less!</div>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/contactform.aspx">Contact</asp:HyperLink>
    <form id="form1" runat="server">
    <div class="aboutus">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula eu orci cursus congue. Donec metus nibh, convallis id augue id, vulputate aliquam lorem. Fusce id augue bibendum, luctus lacus vel, rhoncus lectus. Aliquam rutrum luctus mauris ac porttitor. Etiam risus odio, pretium sit amet porttitor ut, ornare et felis. In eget dolor sit amet sem aliquam cursus nec ac justo. Ut dignissim arcu in placerat convallis. Quisque ut enim ut erat bibendum ornare. Aliquam consectetur aliquam eleifend. Praesent mi erat, facilisis id odio eget, ultricies condimentum libero. Praesent consectetur tincidunt augue, eu maximus erat convallis at. 

Fusce consectetur nisi ac ipsum varius pellentesque. Aliquam erat volutpat. Quisque et venenatis eros, eget faucibus nisi. Duis eros felis, mattis sit amet consequat ut, posuere vel nisl. Ut sed arcu pulvinar, rhoncus justo ut, pretium dui. Praesent viverra augue pellentesque nunc vestibulum, eu viverra urna venenatis. Ut molestie, libero at tincidunt tincidunt, sapien lacus tempus nisl, sit amet laoreet urna justo eget velit. Praesent ultrices magna sit amet turpis convallis aliquet. 

    </div>
        <p class="footer"> © 2014 Software Development & Design</p>
    </form>
        </body>
</html>
