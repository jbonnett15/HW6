<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-small;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Font-Bold="True" Height="16px" ReadOnly="True" style="margin-left: 28px" Width="172px" Font-Size="Medium">Wicked Easy Recipies
</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" Font-Bold="False" Height="16px" ReadOnly="True" style="margin-left: 0px" Width="169px">Using 5 Ingredients or Less!</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/NewRecipe.aspx">New Recipie</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Small" ForeColor="Black" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
   
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW6] WHERE ([RecipeName] = @RecipeName)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Jbonnett_HW6] WHERE [RecipeName] = @original_RecipeName AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND (([Ingredient_2] = @original_Ingredient_2) OR ([Ingredient_2] IS NULL AND @original_Ingredient_2 IS NULL)) AND (([Ingredient_3] = @original_Ingredient_3) OR ([Ingredient_3] IS NULL AND @original_Ingredient_3 IS NULL)) AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))" InsertCommand="INSERT INTO [Jbonnett_HW6] ([RecipeName], [Author], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Prep], [Notes]) VALUES (@RecipeName, @Author, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Prep, @Notes)" UpdateCommand="UPDATE [Jbonnett_HW6] SET [Author] = @Author, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Prep] = @Prep, [Notes] = @Notes WHERE [RecipeName] = @original_RecipeName AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND (([Ingredient_2] = @original_Ingredient_2) OR ([Ingredient_2] IS NULL AND @original_Ingredient_2 IS NULL)) AND (([Ingredient_3] = @original_Ingredient_3) OR ([Ingredient_3] IS NULL AND @original_Ingredient_3 IS NULL)) AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeName" QueryStringField="RecipeName" Type="String" />
            </SelectParameters>
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
    
    </div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RecipeName" DataSourceID="SqlDataSource1" Height="50px" Width="334px" style="margin-left: 74px">
        <Fields>
            <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" ReadOnly="True" SortExpression="RecipeName" />
            <asp:BoundField DataField="Author" HeaderText="Submitted By" SortExpression="Author" />
            <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient 1" SortExpression="Ingredient_1" />
            <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient 2" SortExpression="Ingredient_2" />
            <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient 3" SortExpression="Ingredient_3" />
            <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient 4" SortExpression="Ingredient_4" />
            <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient 5" SortExpression="Ingredient_5" />
            <asp:BoundField DataField="Prep" HeaderText="Prep" SortExpression="Prep" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <p class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;2015 MSCI:3300 Software Design &amp; Development</p>

    </form> 
</body>
</html>
