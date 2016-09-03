using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            add.Visible = false;
            regMessage.Visible = true;

            string A_ID = Admin_ID.Text;
            string A_PW = Admin_Password.Text;
            string A_ML = Admin_mail.Text;
   
            regMessage.Text = "<table border=3 width=300 align=center style=font-size:large;background-color:white> <tr><td> NEW Admin ID  </td><td>" + A_ID + "</td></tr><tr><td> NEW Password  </td><td>" + A_PW + "</td></tr><tr><td> Admin E-mail </td><td>" + A_ML + "</td></tr><br/>";

            SqlConnection dbConnection = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");
                string sqlQuery = " INSERT INTO Admin VALUES ('" + A_ID + "', '" + A_PW + "', '" + A_ML + "') ";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection);

                sqlCommand.ExecuteNonQuery();
                
                Response.Redirect("Admin_manage.aspx");
                dbConnection.Close();
            }
            catch
            {
                regMessage.Text = "Connection is not available";

            }

        }
        else
        {
            add.Visible = true;
            regMessage.Visible = false;
        }

    }
}