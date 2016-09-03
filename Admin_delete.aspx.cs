using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            delete.Visible = false;
            regMessage.Visible = true;

            string A_ID = DropDownList5.Text;
            string log = ""+Session["TextBox1"]+"" ;

            //   regMessage.Text = "<table border=3 width=300 align=center style=font-size:large;background-color:white> <tr><td> NEW Admin ID  </td><td>" + A_ID + "</td></tr><tr><td> NEW Password  </td><td>" + A_PW + "</td></tr><tr><td> Admin E-mail </td></tr><br/>";

            SqlConnection dbConnection = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");

                if (A_ID == log)
                {
                   
                    Response.Write("<center></br></br></br></br><p style='color:red'><strong>Incorrect ID or password.<strong></p></center>");

                    Response.Write("<center><a href='http://localhost:64011/Admin_manage.aspx'> BACK to Manage Page </a></center>");

                   // Response.Redirect("Admin_manage.aspx");
                }
                else
                {
                    string sqlQuery = " DELETE FROM Admin WHERE Admin_ID='" + A_ID + "'  ";
                    SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection);

                    sqlCommand.ExecuteNonQuery();

                    Response.Redirect("Admin_manage.aspx");
                    dbConnection.Close();
                }

            }

            catch
            {
                regMessage.Text = "Connection is not available";

            }

        }
        else
        {
            delete.Visible = true;
            regMessage.Visible = false;
        }

    }
}