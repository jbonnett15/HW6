<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditRecipe.aspx.vb" Inherits="Default2" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [Jbonnett_HW6] WHERE [RecipieID] = @original_RecipieID AND (([RecipieName] = @original_RecipieName) OR ([RecipieName] IS NULL AND @original_RecipieName IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND [Ingredient_2] = @original_Ingredient_2 AND [Ingredient_3] = @original_Ingredient_3 AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))" InsertCommand="INSERT INTO [Jbonnett_HW6] ([RecipieID], [RecipieName], [Author], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Prep], [Notes]) VALUES (@RecipieID, @RecipieName, @Author, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Prep, @Notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW6]" UpdateCommand="UPDATE [Jbonnett_HW6] SET [RecipieName] = @RecipieName, [Author] = @Author, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Prep] = @Prep, [Notes] = @Notes WHERE [RecipieID] = @original_RecipieID AND (([RecipieName] = @original_RecipieName) OR ([RecipieName] IS NULL AND @original_RecipieName IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Ingredient_1] = @original_Ingredient_1) OR ([Ingredient_1] IS NULL AND @original_Ingredient_1 IS NULL)) AND [Ingredient_2] = @original_Ingredient_2 AND [Ingredient_3] = @original_Ingredient_3 AND (([Ingredient_4] = @original_Ingredient_4) OR ([Ingredient_4] IS NULL AND @original_Ingredient_4 IS NULL)) AND (([Ingredient_5] = @original_Ingredient_5) OR ([Ingredient_5] IS NULL AND @original_Ingredient_5 IS NULL)) AND (([Prep] = @original_Prep) OR ([Prep] IS NULL AND @original_Prep IS NULL)) AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_RecipieID" Type="Int32" />
                <asp:Parameter Name="original_RecipieName" Type="String" />
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
                <asp:Parameter Name="RecipieID" Type="Int32" />
                <asp:Parameter Name="RecipieName" Type="String" />
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
                <asp:Parameter Name="RecipieName" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="original_RecipieID" Type="Int32" />
                <asp:Parameter Name="original_RecipieName" Type="String" />
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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="RecipieID" DataSourceID="SqlDataSource1" DefaultMode="Edit" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="RecipieID" HeaderText="RecipieID" ReadOnly="True" SortExpression="RecipieID" />
                <asp:BoundField DataField="RecipieName" HeaderText="RecipieName" SortExpression="RecipieName" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient 1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient 2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient 3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient 4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient 5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="Prep" HeaderText="Prep" SortExpression="Prep" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:Button ID="Button1" runat="server" Text="Edit" />
    </form>
    <p>
        <span class="auto-style1">© 2015 MSCI:3300 Software Design &amp; Development</span></p>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
