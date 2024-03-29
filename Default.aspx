﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Wicked Easy Recipes</title>
    
    <link rel="stylesheet" type="text/css" href ="~/stylesheet.css" />
    <style type="text/css">
        .auto-style1 {
            direction: ltr;
        }
    </style>
</head>
    
<body>
    <div class="header">Wicked Easy Recipes</div>
    <div class="header2">Using 5 Ingredients or Less!</div>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:SqlDataSource ID="Sql_recipe" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW6 %>" DeleteCommand="DELETE FROM [eshammes_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [eshammes_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [eshammes_HW6]" UpdateCommand="UPDATE [eshammes_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/contactform.aspx">Contact</asp:HyperLink>
        <br />
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="Sql_recipe" PageSize="5" Width="313px" Height="115px" HorizontalAlign="center">
            <Columns>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="RecipeDetails.aspx?recipeID={0}" Text="Select" />
            </Columns>
            <FooterStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FFFF99" Font-Bold="True" ForeColor="black" />
            <PagerStyle BackColor="#FFFF99" ForeColor="LightCoral" HorizontalAlign="Center" />
            <RowStyle BackColor="LightCoral" />
        </asp:GridView>
    </form>
    <p class="footer"> © 2014 Software Development & Design</p>
</body>
</html>
