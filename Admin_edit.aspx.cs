using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            edit.Visible = false;
            regMessage.Visible = true;

            string A_ID = Admin_ID.Text;
           
            string A_NPW = newAdmin_Password.Text;
            string A_NEM = newAdmin_Email.Text;
            

            SqlConnection dbConnection = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");
                string sqlQuery = "UPDATE Admin SET Admin_Password= '"+ A_NPW +"', Admin_email='"+A_NEM+"' WHERE Admin_ID='" + A_ID + "' ";
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
            edit.Visible = true;
            regMessage.Visible = false;
        }

    }
}