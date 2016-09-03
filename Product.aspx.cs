using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;


public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            C_Product.Visible = false;
            regMessage.Visible = true;

            string s = string.Empty;

            for (int i = 0; i < Product_List.Items.Count; i++)
            {
                if (Product_List.Items[i].Selected)
                {
                    s += Product_List.Items[i].Value + ",";
                  //  Label4.Text = "'" + s + "' ";
                }
            }
            
            string a = Request.Url.Query;
            StringBuilder b = new StringBuilder(a);
            b.Replace("?=", "");

            string c= ""+b+"";


            SqlConnection dbConnection = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
               
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");
                
           //     regMessage.Text = "'" + s + "'"+ "'" + b + "'" + "" + c + "";

                string sqlQuery = "UPDATE Customer_info SET Product ='" + s + "' , approved='y'  WHERE email_ID ='" + c + "' ";
                    
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection);
                sqlCommand.ExecuteNonQuery();
                
                 regMessage.Text = "<center> <h1> Hi ! <br/></h1> <center> <h1> Thank you for Registered </br> IT for Professionals Customer System. </br></h1> <center><h1> We will contact you shortly. </br></h1>";

                // regMessage.Text = "successfully added to system!";
                dbConnection.Close();

            }
            catch
            {
                regMessage.Text = "Connection is not available";
            }
        }

        else
        {
            C_Product.Visible = true;
            regMessage.Visible = false;
        }
    }



}
        
  