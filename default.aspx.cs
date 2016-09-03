using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
using System.Reflection;
using System.Collections.Specialized;
using System.Net.Mime;
using System.Net;
using System.Collections;


// ************* Use ITP host and mail version  *************

public partial class homepage_ITP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {

            registration.Visible = false;
            regMessage.Visible = true;

            string title_name = DropDownList1.Text;
            string f_name = fname.Text;
            string l_name = lname.Text;
            string Company_name = CompanyName.Text;
            string Department_name = DepartmentName.Text;
            string Email_address = E_mail.Text;
            string Phone_number = phone.Text;
            string ext_no = ext_number.Text;

            string perfer_way_which = Perfer_way.Text;
            string perfer_time_when = Perfer_time.Text;

            string Address_where = Address_locate.Text;
            string Address_1where = Address_locate1.Text;
            string City_where = City_name.Text;
            string state_where = DropDownList2.Text;
            string Zipcode_where = Zipcode_number.Text;

            SqlConnection dbConnection = new SqlConnection("Data Source=.\\SQLEXPRESS,1433; integrated Security = true");

            try
            {
                dbConnection.Open();
                dbConnection.ChangeDatabase("Customer_System");
                string sqlQuery = " INSERT INTO Customer_info(title, First_Name, Last_Name, Company, Department, Email, Phone, ext, perfer_way, perfer_time, Address, Address_1, City, State, Zipcode) VALUES('" + title_name + "','" + f_name + "', '" + l_name + "', '" + Company_name + "', '" + Department_name + "', '" + Email_address + "', '" + Phone_number + "', '" + ext_no + "', '" + perfer_way_which + "', '" + perfer_time_when + "', '" + Address_where + "', '" + Address_1where + "', '" + City_where + "', '" + state_where + "', '" + Zipcode_where + "')";
                SqlCommand sqlCommand = new SqlCommand(sqlQuery, dbConnection);
                sqlCommand.ExecuteNonQuery();



                try
                {

                    SmtpClient client = new SmtpClient();
                    client.Port = 443;
                    client.Host = "mail.gigm.net";
                    client.EnableSsl = true;
                    client.Timeout = 10000;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("FDUWebMaster", "3944513chen");



                    SqlConnection dbConnection1 = new SqlConnection("Data Source=.\\SQLEXPRESS,1433; integrated Security = true");
                    dbConnection1.Open();
                    dbConnection1.ChangeDatabase("Customer_System");
                    string sqlQuery1 = "SELECT email_ID FROM Customer_info WHERE Email like '%" + Email_address + "%' ";
                    SqlCommand sqlCommand1 = new SqlCommand(sqlQuery1, dbConnection);
                    SqlDataReader idRecords = sqlCommand1.ExecuteReader();

                    if (idRecords.Read())
                    {
                        do
                        {
                            string body = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">";
                            body += "<HTML><HEAD><META http-equiv=Content-Type content=\"text/html; charset=iso-8859-1\">";
                            body += "</HEAD><BODY><DIV><FONT face=Arial size=6> ";
                            body += "Thank you for Registered IT for Professionals Customer System. </br></br>";
                            body += "Please click the link to active and confirm your registration. </br></br>";
                            body += "the link is:  </br></br>";

                            body += "http://itforpros.com/Product.aspx?=" + idRecords["email_ID"];
                            body += "</br>";
                            body += "</FONT></DIV></BODY></HTML>";

                            MailMessage mm = new MailMessage("info@itforpros.com", Email_address,
                             "Thank you for Registered IT for Professionals Customer System.", body);

                            
                            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                            ContentType mimeType = new System.Net.Mime.ContentType("text/html");
                            AlternateView alternate = AlternateView.CreateAlternateViewFromString(body, mimeType);
                            mm.AlternateViews.Add(alternate);
                            mm.IsBodyHtml = true;
                            client.Send(mm);
                           
                        } while (idRecords.Read());
                        Response.Write("</table>");
                        dbConnection1.Close();
                    }
                }
                catch
                {
                    
                }

                Response.Redirect("index.aspx");
                
                dbConnection.Close();
            }
            catch
            {
                regMessage.Text = "Connection is not available";
            }

        }

        else
        {
            registration.Visible = true;
            regMessage.Visible = false;
        }

    }



}
