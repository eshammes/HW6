<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp; |
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="sql_recipeData" DefaultMode="Insert">
            
            <InsertItemTemplate>

                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName") %>' />
                        </td>
                    </tr>

                     <tr>
                        <td style="text-align:right;">
                            Submitted By
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("submittedBy") %>' />
                        </td>
                    </tr> 

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingred1TextBox" runat="server" Text='<%# Bind("Ingred1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Ingred2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #3
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingred3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingred4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingred5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Preparation
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Prep") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                        <asp:Button  ID="btn_insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                        </td> 

                    </tr>
                </table>
                
            </InsertItemTemplate>
            
        </asp:FormView>
    </form>
</body>
</html>
