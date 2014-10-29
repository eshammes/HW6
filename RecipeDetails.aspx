<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW6 %>" DeleteCommand="DELETE FROM [eshammes_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [eshammes_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [eshammes_HW6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [eshammes_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" Width="205px">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="Ingred1" HeaderText="Ingredient #1" SortExpression="Ingred1" />
                <asp:BoundField DataField="Ingred2" HeaderText="Ingredient #2" SortExpression="Ingred2" />
                <asp:BoundField DataField="Ingred3" HeaderText="Ingredient #3" SortExpression="Ingred3" />
                <asp:BoundField DataField="Ingred4" HeaderText="Ingredient #4" SortExpression="Ingred4" />
                <asp:BoundField DataField="Ingred5" HeaderText="Ingredient #5" SortExpression="Ingred5" />
                <asp:BoundField DataField="Prep" HeaderText="Preparation" SortExpression="Prep" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
