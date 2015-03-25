<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
        
    
    
        
</head>
<body>
    <form id="form2" runat="server" style="background-color: tan">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Font-Bold="True" Height="16px" ReadOnly="True" style="margin-left: 28px" Width="172px" Font-Size="Medium" CssClass="tan">Wicked Easy Recipies
</asp:TextBox >
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" style="background-color: tan" BorderStyle="None" Font-Bold="False" Height="16px" ReadOnly="True" Width="169px">Using 5 Ingredients or Less!</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/NewRecipe.aspx">New Recipie</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
   
        <br />
   
    <div style="margin-left: 120px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" InsertCommand="INSERT INTO [Jbonnett_HW6] ([RecipeName], [Author], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Prep], [Notes]) VALUES (@RecipeName, @Author, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Prep, @Notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW6]" DeleteCommand="DELETE FROM [Jbonnett_HW6] WHERE [RecipeName] = @original_RecipeName AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND (([Ingredient_2] = @original_Ingredient_2) OR ([Ingredient_2] IS NULL AND @original_Ingredient_2 IS NULL)) AND (([Ingredient_3] = @original_Ingredient_3) OR ([Ingredient_3] IS NULL AND @original_Ingredient_3 IS NULL)) AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))" UpdateCommand="UPDATE [Jbonnett_HW6] SET [Author] = @Author, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Prep] = @Prep, [Notes] = @Notes WHERE [RecipeName] = @original_RecipeName AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND (([Ingredient_2] = @original_Ingredient_2) OR ([Ingredient_2] IS NULL AND @original_Ingredient_2 IS NULL)) AND (([Ingredient_3] = @original_Ingredient_3) OR ([Ingredient_3] IS NULL AND @original_Ingredient_3 IS NULL)) AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_RecipeName" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_Ingredient_1" Type="String" />
                <asp:Parameter Name="original_Ingredient_2" Type="String" />
                <asp:Parameter Name="original_Ingredient_3" Type="String" />
                <asp:Parameter Name="original_Ingredient_4" Type="String" />
                <asp:Parameter Name="original_Ingredient_5" Type="String" />
                <asp:Parameter Name="original_Prep" Type="String" />
                <asp:Parameter Name="original_Notes" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="original_RecipeName" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_Ingredient_1" Type="String" />
                <asp:Parameter Name="original_Ingredient_2" Type="String" />
                <asp:Parameter Name="original_Ingredient_3" Type="String" />
                <asp:Parameter Name="original_Ingredient_4" Type="String" />
                <asp:Parameter Name="original_Ingredient_5" Type="String" />
                <asp:Parameter Name="original_Prep" Type="String" />
                <asp:Parameter Name="original_Notes" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:FormView ID="FormView1" runat="server" CssClass="GridView" DataKeyNames="RecipeName" DataSourceID="SqlDataSource1" DefaultMode="Insert">
           
            <InsertItemTemplate>
                <table>
                    <tr>
                       <td style="text-align:right;" class="auto-style2">
                            Recipie Name:
                        </td>
                        <td style="text-align:left" class="auto-style2">
                            <asp:TextBox ID="tb_RecipeName" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td class="validationError">
                            <asp:RequiredFieldValidator ID="rfv_RecipeName" runat="server" ErrorMessage="Enter a Recipe Name" CssClass="validationError" ControlToValidate="tb_RecipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>                       
                       <td style="text-align:right;">
                            Author :
                       </td> 
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_Author" runat="server" Text='<%# Bind("Author") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfv_Author" runat="server" ErrorMessage="Enter Your Name" CssClass="validationError" ControlToValidate="tb_Author"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                           
                    <tr>
                         <td style="text-align:right;">
                        Ingredient_1:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="tb_Ingredient1" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>
                         <td>
                            <asp:RequiredFieldValidator ID="rfv_ingredient" runat="server" ErrorMessage="Enter atleast one ingredient" CssClass="validationError" ControlToValidate="tb_Ingredient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                       <td style="text-align:right;">
                             Ingredient_2:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="Ingredient_2TextBox" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                              Ingredient_3: 
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="Ingredient_3TextBox" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                             Ingredient_4:  
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="Ingredient_4TextBox" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                             Ingredient_5:
                        </td>
                        <td style="text-align:left">
                           <asp:TextBox ID="Ingredient_5TextBox" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                             Prep:
                        </td>
                        <td style="text-align:left">
                             <asp:TextBox ID="PrepTextBox" runat="server" Text='<%# Bind("Prep") %>' />
                        </td>
                          <td>
                            <asp:RequiredFieldValidator ID="rfv_preperation" runat="server" ErrorMessage="Enter Preperation Method" CssClass="validationError" ControlToValidate="PrepTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                            Notes:
                        </td>
                        <td style="text-align:left">
                             <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                    </tr>
                     <tr>
                       <td style="text-align:right;">
                            <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:left">
                             <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
        </asp:FormView>
        
    
    </div>
   
  <span class="auto-style1"> © 2015 MSCI:3300 Software Design &amp; Development</span>
     </form>
   
    
</body>
</html>
