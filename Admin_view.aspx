<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_view.aspx.cs" Inherits="Admin_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 11px;
            width: 88px;
        }
    </style>
</head>
<body>
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
   
        <br />
    <div>
    
    </div>

        <asp:Literal ID="std" runat="server" Visible="false"></asp:Literal><br /><br />
    <form id="search_form" runat="server">
        Search customer: 
           
          
           
          <asp:DropDownList ID="search1" runat="server"  >
                <asp:ListItem Value="0"> ( Select ) </asp:ListItem>
                <asp:ListItem Value="FN"> First Name </asp:ListItem>
                <asp:ListItem Value="LN"> Last Name </asp:ListItem>
                <asp:ListItem Value="COM"> Company </asp:ListItem>
                <asp:ListItem Value="EM"> E-mail </asp:ListItem>
                <asp:ListItem Value="PN"> Phone Number </asp:ListItem>
                <asp:ListItem Value="PW"> Perfer Way </asp:ListItem>
                <asp:ListItem Value="PT"> Perfer Time </asp:ListItem>
                <asp:ListItem Value="CI"> City </asp:ListItem>
                <asp:ListItem Value="ST"> State </asp:ListItem>

          </asp:DropDownList> 
        


        <asp:TextBox ID="search" runat="server"/>
        <asp:Button ID="search_button" runat="server" Text="SEARCH" />

    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1"  AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Customers_NO" HeaderText="Customers_NO" SortExpression="Customers_NO" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="ext" HeaderText="ext" SortExpression="ext" />
                <asp:BoundField DataField="perfer_way" HeaderText="perfer_way" SortExpression="perfer_way" />
                <asp:BoundField DataField="perfer_time" HeaderText="perfer_time" SortExpression="perfer_time" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Address_1" HeaderText="Address_1" SortExpression="Address_1" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Customer_SystemConnectionString %>" SelectCommand="SELECT * FROM [Customer_info]"></asp:SqlDataSource>
 
        <asp:Literal ID="prof" runat="server" Visible="false"></asp:Literal><br /><br />
        

        <asp:Button ID="Button2" runat="server" Text="MANAGE" PostBackUrl="~/Admin_manage.aspx" style="background-color:#FFFF00"/>
           </form>
        </center> 
</body>
</html>
