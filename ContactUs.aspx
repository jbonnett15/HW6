<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
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
   
  
    
        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        
<% If Not IsPostBack Then%>
         


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" style="margin-left: 134px" Width="261px"  ></asp:TextBox>
         <asp:Label ID="lbl_email" runat="server" CssClass="confirmSent"></asp:Label>
         <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="153px" style="margin-left: 132px" Width="270px"  ></asp:TextBox>
        
        
        
        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

     <asp:Label ID="confirmSent" runat="server" CssClass="confirmSent" />
        <!-- End your 'If' statement. -->
        <%End If%>
        <asp:Label ID="lbl_message" runat="server" CssClass="confirmSent"></asp:Label>

        <br />
        
        
        
        <asp:Button ID="sendMail" runat="server" Text="Send" style="margin-left: 214px" Width="57px" />

        

     



        

     

        <br />
        
    <span class="auto-style1"> © 2015 MSCI:3300 Software Design &amp; Development</span>
    </form>
</body>
</html>
