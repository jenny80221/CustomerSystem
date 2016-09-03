using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class Admin_view : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        

            prof.Visible = true;
            SqlConnection dbConnection1 = new SqlConnection("Data Source=.Web\\SQLEXPRESS; integrated Security = true");
            try
            {
                dbConnection1.Open();
                dbConnection1.ChangeDatabase("Customer_System");
                string q1 = search1.Text;
                string sqlQuery;

                if (q1 == "FN")
                {
                    sqlQuery = "SELECT * from Customer_info WHERE First_Name like '%" + search.Text + "%'";
                }
                else
                if (q1 == "LN")
                {
                    sqlQuery = "select * from Customer_info WHERE Last_Name like '%" + search.Text + "%'";
                }
                else
                if (q1 == "COM")
                {
                    sqlQuery = "select * from Customer_info WHERE Company like '%" + search.Text + "%'";
                }
                else
                if (q1 == "EM")
                {
                    sqlQuery = "select * from Customer_info WHERE Email like '%" + search.Text + "%'";
                }
                else
                if (q1 == "PN")
                {
                    sqlQuery = "select * from Customer_info WHERE Phone like '%" + search.Text + "%'";
                }
                else
                if (q1 == "PW")
                {
                    sqlQuery = "select * from Customer_info WHERE perfer_way like '%" + search.Text + "%'";
                }
                else
                if (q1 == "PT")
                {
                    sqlQuery = "select * from Customer_info WHERE perfer_time like '%" + search.Text + "%'";
                }
                else
                if (q1 == "CI")
                {
                    sqlQuery = "select * from Customer_info WHERE City like '%" + search.Text + "%'";
                }
                else
                if (q1 == "ST")
                {
                    sqlQuery = "select * from Customer_info WHERE State like '%" + search.Text + "%'";
                }
                
                else
                { sqlQuery = null ; }

                SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection1);
                SqlDataReader studentRecords = sqlCommand.ExecuteReader();

                if (studentRecords.Read())
                {


                    Response.Write("<table border=3 width=300 align=center style=font-size:large;background-color:white><tr><td> Title </td><td> First Name </td><td> Last Name </td><td> Company </td><td> Department </td><td> Email </td><td> Phone </td><td> ext </td><td> perfer_way </td><td> Perfer Time </td><td> Address </td><td> Address1 </td><td> City </td><td> State </td><td> Zipcdoe </td><td> Note </td><td> Product </td></tr>");
                    do
                    {

                        Response.Write("<tr><td>" + studentRecords["title"] + "</td><td>" + studentRecords["First_name"] + "</td><td>" + studentRecords["Last_name"] + "</td><td>" + studentRecords["Company"] + "</td><td>" + studentRecords["Department"] + "</td><td>" + studentRecords["Email"] + "</td><td>" + studentRecords["Phone"] + "</td><td>" + studentRecords["ext"] + "</td><td>" + studentRecords["perfer_way"] + "</td><td>" + studentRecords["perfer_time"] + "</td><td>" + studentRecords["Address"] + "</td><td>" + studentRecords["Address_1"] + "</td><td>" + studentRecords["City"] + "</td><td>" + studentRecords["State"] + "</td><td>" + studentRecords["Zipcode"] + "</td><td>" + studentRecords["Note"] + "</td><td>" + studentRecords["Product"] + "</td></tr>");


                    } while (studentRecords.Read());
                    Response.Write("</table>");
                    dbConnection1.Close();
                }

            }


            catch
            {

            }
          prof.Visible = false;

        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}