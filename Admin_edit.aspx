<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_edit.aspx.cs" Inherits="Admin_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><form id="edit" runat="server">
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
                    Response.Write("Edit Admin "); 
                %>
             </div>
            <table>

                <tr><td>  Admin ID: </td><td> <asp:TextBox ID="Admin_ID" runat="server" Width="200" />
                    <asp:RequiredFieldValidator ID="A_ID_check" runat="server" ForeColor="Red" ErrorMessage="Cannot be empty!" ControlToValidate="Admin_ID" validationgroup="CHECKGroup" ></asp:RequiredFieldValidator>  </td></tr>
                                     
                
                <tr><td>  NEW Admin Password: </td><td><asp:TextBox ID="newAdmin_Password" runat="server" Width="200" />
                    <asp:RequiredFieldValidator ID="A_NPW_check" runat="server" ForeColor="Red" ErrorMessage="Cannot be empty!" ControlToValidate="newAdmin_Password" validationgroup="CHECKGroup" ></asp:RequiredFieldValidator>  </td></tr>
                                                 
                <tr><td>  NEW Admin E-mail: </td><td><asp:TextBox ID="newAdmin_Email" runat="server" Width="200" />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ForeColor="Red" 
3	            ErrorMessage="Error email address!" ControlToValidate="newAdmin_Email" Display="Dynamic"  
4	            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="A_NEM" runat="server" ForeColor="Red" ErrorMessage="Cannot be empty!" ControlToValidate="newAdmin_Email" validationgroup="CHECKGroup" ></asp:RequiredFieldValidator>  </td></tr>
                
            </table>
              

              <tr> <td></td><td> </br>

                  <asp:Button ID="Button1" runat="server" Text="EDIT" />  <asp:Button ID="Button2" runat="server" Text="MANAGE" PostBackUrl="~/Admin_manage.aspx" style="background-color:#FFFF00" />
                 </td> </tr>
                 <asp:Literal ID="regMessage" runat="server" Visible="false" />
              </form>
            
         </center>

</body>
</html>
