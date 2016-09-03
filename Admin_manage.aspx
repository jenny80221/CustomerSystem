<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_manage.aspx.cs" Inherits="Admin_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                    Response.Write("All User ID "); 
                %>
             </div>
       
        <table>
         
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" ReadOnly="True" SortExpression="Admin_ID" />
                     <asp:BoundField DataField="Admin_Password" HeaderText="Admin_Password" SortExpression="Admin_Password" />
                     <asp:BoundField DataField="Admin_email" HeaderText="Admin_email" SortExpression="Admin_email" />
                 </Columns>
                 <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Customer_SystemConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
              </br>

              <asp:Button ID="Button1" runat="server" Text="EDIT" PostBackUrl="~/Admin_edit.aspx" />
              <asp:Button ID="Button2" runat="server" Text="ADD" PostBackUrl="~/Admin_add.aspx" />
              <asp:Button ID="Button3" runat="server" Text="DELETE" PostBackUrl="~/Admin_delete.aspx" />
            
            </br></br>
               <asp:Button ID="Button4" runat="server" Text="VIEW" PostBackUrl="~/Admin_view.aspx" style="background-color:#FFFF00" />

              </table>

        </center> 
    </form>
</body>
</html>
