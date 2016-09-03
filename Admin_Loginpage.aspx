<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Loginpage.aspx.cs" Inherits="Admin_Loginpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body style="height: 336px">
    
    <center style="height: 134px">
        <form id="loginForm" runat="server">
        <table>
            <tr>
                <td class="auto-style1"> <img src="ITP_logo.png" /> </td>
                <td class="auto-style1">
                    <h2 style="text-align:center"> IT for Professionals </h2>
                    <h2 style="text-align:center"> Information Technology Specialist </h2>
                    <h1 style="text-align:center"> <b> Customer Registration System </b> </h1>
                </td>
            </tr>
          </table>
        <br />
         
            
     <div>
         <table>   <center><h2> == Admin Login == </h2></center>
    
        <tr><td><asp:Label ID="Label1" runat="server" Text="Admin ID:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td></tr>
   
            <br />
        <tr><td><asp:Label ID="Label2" runat="server" Text="Admin Password:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td></tr>
            
        </table><br /> 
            
          <asp:Literal ID="badLogin" runat="server"></asp:Literal>
          <asp:Button ID="button1" runat="server" Text="LOGIN" />

                </div>

        </form> 
    </center>
</body>
</html>
