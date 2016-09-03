<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body >
   
     <table align="center">
            <tr>
                <td> <img src="ITP_logo.png" /> </td>
                <td>
                    <h2 style="text-align:center"> IT for Professionals </h2>
                    <h2 style="text-align:center"> Information Technology Specialist </h2>
                    <h1 style="text-align:center"> <b> Customer Registration System </b> </h1>
                </td>
            </tr>
          </table>
     <div align="center" style="line-height: 200% ; font-size: 35px ; font-family: cursive " >

       <% String First_Name =  Request.Form["fname"];
                    Response.Write("Hi ! " + First_Name + "<br/>");
                    Response.Write("<p> Thank you for Registered </br> IT for Professionals Customer System. </br>");
                    Response.Write("<p> We'll send you an e-mail to confirm your information. </br> Please check the mail and click the link to confirm. </br>");
                      //  <tr>  Thank you for Registered </br>  IT for Professionals Customer System. </tr>
                      //  <tr> We'll send you an e-mail to confirm your information. </br> Please check the mail and click the link to confirm. </tr>
                    
          %>     
</body>
</html>
