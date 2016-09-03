<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ITP Customers System</title>
  
</head>
<body>
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
   
    <form  id="C_registration" runat="server" >
    
    <div>
            <table align="center" style="line-height: 200%"> 
                <tr>
                    <td> </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Customer SystemConnectionString %>" SelectCommand="SELECT [title] FROM [title]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" AppendDataBoundItems="True">
                            <asp:ListItem Value="0"> ( Select ) </asp:ListItem>
                        </asp:DropDownList></td></tr>
                <tr><td><font color="red">*</font></td><td>First Name: </td><td><asp:TextBox ID="fname" runat="server" Width="200" />
                   <asp:RequiredFieldValidator ID="FN_check" runat="server" ForeColor="Red" ErrorMessage="Cannot be empty!" ControlToValidate="fname"></asp:RequiredFieldValidator>  </td></tr>
                
                <tr><td><font color="red">*</font></td><td>Last Name:</td><td><asp:TextBox ID="lname" runat="server" Width="200" />
                   <asp:RequiredFieldValidator ID="LN_check" runat="server" ForeColor="Red" ErrorMessage="Cannot be empty!" ControlToValidate="lname"></asp:RequiredFieldValidator>  </td></tr>
                
                <tr><td><font color="red">*</font></td><td>Company/agency:</td><td><asp:TextBox ID="CompanyName" runat="server" Width="200" />
                   <asp:RequiredFieldValidator ID="Com_check" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Cannot be empty!" ControlToValidate="CompanyName"></asp:RequiredFieldValidator>  </td></tr>
           
                <tr><td></td><td>  Department: </td><td><asp:TextBox ID="DepartmentName" runat="server" Width="200"/> </td></tr> 
                <tr><td><font color="red">*</font></td><td> E-mail: </td><td><asp:TextBox ID="E_mail" runat="server" Width="200" />
                
               
                </asp:TextBox><asp:RegularExpressionValidator 
	            ID="RegularExpressionValidator1" runat="server"  
	            ErrorMessage="Error email address!" ControlToValidate="E_mail" Display="Dynamic"  
	            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                    <asp:RequiredFieldValidator ID="mail_check" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Cannot be empty!" ControlToValidate="E_mail"></asp:RequiredFieldValidator></td></tr>


                <tr><td><font color="red">*</font></td><td> Phone (Example:2019999999) </td><td><asp:TextBox ID="phone" runat="server" Width="200" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="phone" ErrorMessage="Please input correct number!" Display="Dynamic" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="phone_check" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Cannot be empty!" ControlToValidate="phone"></asp:RequiredFieldValidator>  </td></tr>
                                                                                            

                <tr><td></td><td> ext </td><td><asp:TextBox ID="ext_number" runat="server" Width="200" /></td></tr>
                
                <tr><td><font color="red">*</font></td>
                    <td>Perfer which contacted way:
                    </td>
                    <td><asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Customer SystemConnectionString %>" SelectCommand="SELECT [perfer_way] FROM [Perfer_way]"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="Perfer_way" runat="server" DataSourceID="SqlDataSource4" DataTextField="perfer_way" DataValueField="perfer_way" AppendDataBoundItems="true"> </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Must select one!" ControlToValidate="perfer_way" ></asp:RequiredFieldValidator>
                    </td></tr>
             
         <tr>
            <td><font color="red">*</font></td>
            <td>
                    What time you perfer to contact:
            </td>
            <td><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Customer SystemConnectionString %>" SelectCommand="SELECT * FROM [Perfer_time]"></asp:SqlDataSource>
                <asp:RadioButtonList ID="Perfer_time" runat="server" DataSourceID="SqlDataSource2" DataTextField="perfer_time" DataValueField="perfer_time" AppendDataBoundItems="True" /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="Must select one!" ControlToValidate="perfer_time"></asp:RequiredFieldValidator>  </td></tr>       
         


        <tr><td></td><td> Address </td><td><asp:TextBox ID="Address_locate" runat="server" Width="200" /></td></tr>
        <tr><td></td><td> </td><td><asp:TextBox ID="Address_locate1" runat="server" Width="200" /></td></tr>
        <tr><td></td><td> City </td><td><asp:TextBox ID="City_name" runat="server" Width="200" /></td></tr>

        <tr><td></td><td> State </td><td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Customer SystemConnectionString %>" SelectCommand="SELECT * FROM [States]"></asp:SqlDataSource>
              <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="States" DataValueField="States" AppendDataBoundItems="True">
                <asp:ListItem Value="0"> ( Select ) </asp:ListItem> </asp:DropDownList>  
            </td></tr>
 
        <tr><td></td><td> Zipcode </td><td><asp:TextBox ID="Zipcode_number" runat="server" Width="200" /></td></tr>
        
       <tr><td></td><td></td><td><asp:Button ID="register" runat="server" Text="Submit"  />
           </td></tr>
   
            </table>
    </div>
     
    </form>
    <asp:Literal ID="regMessage" runat="server" Visible="false" /> 

    
  
</body>
</html>
