<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_delete.aspx.cs" Inherits="Admin_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><form id="delete" runat="server">
     <center> 
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

            <div align="center" style="line-height: 200% ; font-size: 30px ; font-family: cursive " >
                <%
                    Response.Write("<p> ==User Management== <br/> ");
                    Response.Write("Delete Old Admin "); 
                %>
             
          
         <table border="1" style="font-size:x-large">
                   
             
            <tr><td> Admin ID:  </td><td>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Customer_SystemConnectionString %>" SelectCommand="SELECT Admin_ID FROM [Admin]"></asp:SqlDataSource>
              <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="Admin_ID" DataValueField="Admin_ID" AppendDataBoundItems="True" Width="200" Height="40" Font-Size="Large" >
                <asp:ListItem Value="0"> ( Select ) </asp:ListItem> </asp:DropDownList>  
            </td></tr>
            
        </table>
               <td></td><td> </br> <asp:Button ID="Button1" runat="server" Text="DELETE" validationgroup="CHECKGroup" />
        
                  <asp:Button ID="Button2" runat="server" Text="MANAGE" PostBackUrl="~/Admin_manage.aspx" style="background-color:#FFFF00"/></td>

                <asp:Literal ID="regMessage" runat="server" Visible="false" />
                
              </form>
          
         </div>
         </center>
    
</body>
</html>
