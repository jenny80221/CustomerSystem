<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>
<pre class="c" name="code">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><center>
    
    
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

       <form  id="C_Product" runat="server">
     <table style="text-align:center; font-size:large ">
                <h1>  Hi, <br /><br /> Thank you for registered IT for Professionals Customer System. </h1>
                <h1> What products are you interesting? (Please select at least one.)  </h1>        
        </table>
       <div > 
         

        <table style="font-size:x-large" >
            <tr><asp:Image ID="west_logo" runat="server" ImageUrl="west_logo.jpg" /> 
                    <asp:Image ID="cage_logo" runat="server" ImageUrl="cage_logo.jpg" width="160" /> 

               <asp:CheckBoxList ID="Product_List"  runat="server" Font-Size="X-Large" CellSpacing="20" >
                  <asp:ListItem Value="WT"> 1. WEST  :  Web-based Educational Score Tracker </asp:ListItem>
                   <asp:ListItem Value="CE"> 2. CAGE : Criminal Analysis and Gathering Engine </asp:ListItem>
                   <asp:ListItem Value="CR"> 2-1. CRTS : Case Record Tracking System </asp:ListItem>
                    <asp:ListItem Value="AR"> 2-2. ARTS : Adult Record Tracking System </asp:ListItem>
                    <asp:ListItem Value="JR"> 2-3. JRTS : Juvenile Record Tracking System </asp:ListItem>
                    <asp:ListItem Value="ER"> 2-4. ERTS : Evidence Record Tracking System </asp:ListItem>
                    <asp:ListItem Value="HR"> 2-5. HRTS : Human Record Tracking System <br /></asp:ListItem>
                   
                    <asp:ListItem Value="CS"> 3. Cloud Services  :  Microsoft Office 365 </asp:ListItem>
                    <asp:ListItem Value="IT"> 4. IT Security :  Networking Security is a major concern for corporate IT staffs. <br /></asp:ListItem>
                    <asp:ListItem Value="NW"> 5. Networking  :  Integrate into a seamless, high-speed networking infrastructure. <br /></asp:ListItem>
                    <asp:ListItem Value="IR"> 6. Intranet  :  Can supply the most powerful, cost-effective solutions to customize your Intranet. <br /></asp:ListItem>
                    <asp:ListItem Value="IE"> 7. Internet  :  Opening up a new perspective of communication,<br /> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  collaboration between consumers, businesses and trading partners.<br /> </asp:ListItem>
                    </asp:CheckBoxList></tr>
            
        
                <td><asp:Button ID="submit" runat="server" Text="Submit"  /> 
                   </td>
         </table>
            </div>
        
    </form><asp:Literal ID="regMessage" runat="server" Visible="false" /> </center>
</body>
</html>
