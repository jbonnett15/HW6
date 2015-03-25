<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />

</head>
    <body>
        <form id="form1" runat="server" style="background-color: tan">
   
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jbonnett_HW6]"></asp:SqlDataSource>
        <br />
&nbsp;
        <div style="margin-left: 120px; width: 295px;">
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AutoGenerateColumns="False" DataKeyNames="RecipeName" DataSourceID="SqlDataSource1" PageSize="1000" Width="281px" Height="135px">
                <Columns>
                    <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" ReadOnly="True" SortExpression="RecipeName" />
                    <asp:BoundField DataField="Author" HeaderText="Submitted By" SortExpression="Author" />
                    <asp:HyperLinkField DataNavigateUrlFields="RecipeName" DataNavigateUrlFormatString="RecipeDetails.aspx?RecipeName={0}" Text="Select" ShowHeader="False" />
                </Columns>
            </asp:GridView>
        </div>
        <br />
        <span class="auto-style1"> © 2015 MSCI:3300 Software Design &amp; Development</span></form>
</body>
</html>
