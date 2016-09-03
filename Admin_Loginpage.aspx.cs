using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;

public partial class Admin_Loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");
                string admin = "SELECT * FROM Admin WHERE Admin_ID = '" + TextBox1.Text + "' AND Admin_Password = '"
                    + TextBox2.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(admin, dbConnection);
                SqlDataReader curAdmin = sqlCommand.ExecuteReader();
                if (curAdmin.Read())
                {
                    Session["TextBox1"] = curAdmin["Admin_ID"].ToString();
                    
                    Response.Redirect("Admin_view.aspx");
                }
                else
                    badLogin.Text = "<p style='color:red'><strong>Incorrect ID or password.<strong></p>";
            }
            catch
            {
                Response.Write("unable to connect to database");
            }
            dbConnection.Close();
        }

    }
    }
