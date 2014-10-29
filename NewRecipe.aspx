<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe</title>
    <link rel="stylesheet" type="text/css" href ="~/stylesheet.css" />
    <style type="text/css">
        .auto-style3 {
            width: 112px;
        }
        .auto-style5 {
            width: 508px;
        }
    </style>
</head>
<body>
    <div class="header">Wicked Easy Recipes</div>
    <div class="header2">Using 5 Ingredients or Less!<br />
        <br />
    </div>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/contactform.aspx">Contact</asp:HyperLink>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipeData" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW6 %>" DeleteCommand="DELETE FROM [eshammes_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [eshammes_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [eshammes_HW6]" UpdateCommand="UPDATE [eshammes_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
&nbsp;
&nbsp;
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="sql_recipeData" DefaultMode="Insert" Height="363px" Width="677px" HorizontalAlign="center">
            
            <InsertItemTemplate>

                <table>
                        <tr>
                            <td class="right">
                                Recipe Name:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_Name") %>' Height="16px" />
                                <asp:RequiredFieldValidator ID="rfv_recipename" runat="server" ControlToValidate="TextBox1" ErrorMessage="You Must Enter a Recipe Name" CssClass="validationError"></asp:RequiredFieldValidator>
                                <td>
                                    
                                    &nbsp;</td>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Submitted By:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_By") %>' />
                                <asp:RequiredFieldValidator ID="rfv_author" runat="server" ControlToValidate="TextBox2" ErrorMessage="You Must Enter the Submitted By Name" CssClass="validationError"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Ingredient #1:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>' style="margin-left: 0px" />
                                <asp:RequiredFieldValidator ID="rfv_ingredient" runat="server" ControlToValidate="TextBox3" ErrorMessage="You Must Enter a Ingredient" CssClass="validationError"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                 Ingredient #2:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                 Ingredient #3:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                 Ingredient #4:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                 Ingredient #5:
                            </td>
                            <td class="left">
                                 <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Preparation:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Preparation") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="You Must Enter the Preparation" CssClass="validationError"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                                Notes:
                            </td>
                            <td class="left">
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Notes") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="right">
                               <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" Height="25px" Width="45px" /> 
                            </td>
                            
                            
                        </tr>
                    </table>

                
            </InsertItemTemplate>
            
        </asp:FormView>
    </form>
    <p class="footer"> © 2014 Software Development & Design</p>
</body>
</html>
