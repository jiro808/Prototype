using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Student
{
    public partial class Payment : System.Web.UI.Page
    {

        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";

       // string studname3, gradelvl, status, address, contact, email, fthname, fthoccu, fthcontact, fthemail, mthname, mthoccu, mthcontact, mthemail, grdname, grdoccu, grdcontact, grdemail;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Set Full Payment as pre-selected
                RadioButtonList1.Items.FindByText("Full Payment").Selected = true;

            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tuitionValue = Request["tuition"];
            string miscellaneousValue = Request["miscellaneous"];
            string totalValue = Request["total"];
            string discountValue = Request["discount_percent"];
            string finaltotalValue = Request["total_final"];

            int tuitionInt;
            int miscellaneousInt;
            int totalInt;
            int discountInt;
            int finaltotalInt;

            int.TryParse(tuitionValue, out tuitionInt);           
            int.TryParse(miscellaneousValue, out miscellaneousInt);
            int.TryParse(totalValue, out totalInt);
            int.TryParse(discountValue, out discountInt);
            int.TryParse(finaltotalValue, out finaltotalInt);


            try
            {

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "INSERT INTO Student (name, grade_level, status, address, contact_no, email, father_name, father_occupation, father_contact, father_email, mother_name, mother_occupation, mother_contact, mother_email, guardian_name, guardian_occupation, guardian_contact, guardian_email) VALUES (@name, @grade_level, @status, @address, @contact_no, @email, @father_name, @father_occupation, @father_contact, @father_email, @mother_name, @mother_occupation, @mother_contact, @mother_email, @guardian_name, @guardian_occupation, @guardian_contact, @guardian_email); SELECT SCOPE_IDENTITY();";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        string studname = Request["stud_name"];
                        string gradelvl = Request["grade_level"];
                        string status = Request["stud_status"];
                        string address = Request["stud_home_add"];
                        string contact = Request["stud_contact_no"];
                        string email = Request["stud_email_add"];
                        string fthname = Request["fth_name"];
                        string fthoccu = Request["fth_occupation"];
                        string fthcontact = Request["fth_contact_no"];
                        string fthemail = Request["fth_email_add"];
                        string mthname = Request["mth_name"];
                        string mthoccu = Request["mth_occupation"];
                        string mthcontact = Request["mth_contact_no"];
                        string mthemail = Request["mth_email_add"];
                        string grdname = Request["grd_name"];
                        string grdoccu = Request["grd_occupation"];
                        string grdcontact = Request["grd_contact_no"];
                        string grdemail = Request["grd_email_add"];



                        command.Parameters.AddWithValue("@name", studname);
                        command.Parameters.AddWithValue("@grade_level", gradelvl);
                        command.Parameters.AddWithValue("@status", status);
                        command.Parameters.AddWithValue("@address", address);
                        command.Parameters.AddWithValue("@contact_no", contact);
                        command.Parameters.AddWithValue("@email", email);
                        command.Parameters.AddWithValue("@father_name", fthname);
                        command.Parameters.AddWithValue("@father_occupation", fthoccu);
                        command.Parameters.AddWithValue("@father_contact", fthcontact);
                        command.Parameters.AddWithValue("@father_email", fthemail);
                        command.Parameters.AddWithValue("@mother_name", mthname);
                        command.Parameters.AddWithValue("@mother_occupation", mthoccu);
                        command.Parameters.AddWithValue("@mother_contact", mthcontact);
                        command.Parameters.AddWithValue("@mother_email", mthemail);
                        command.Parameters.AddWithValue("@guardian_name", grdname);
                        command.Parameters.AddWithValue("@guardian_occupation", grdoccu);
                        command.Parameters.AddWithValue("@guardian_contact", grdcontact);
                        command.Parameters.AddWithValue("@guardian_email", grdemail);

                        int studentId = Convert.ToInt32(command.ExecuteScalar());


                        string query2 = "INSERT INTO Payment (schedule, method, tuition, miscellaneous, total, discount_type, discount,  final_total) VALUES (@schedule, @method, @tuition, @miscellaneous, @total, @discount_type, @discount, @final_total); SELECT SCOPE_IDENTITY();";
                        using (SqlCommand command2 = new SqlCommand(query2, connection))
                        {

                            string paymentschedule = RadioButtonList1.SelectedValue;
                            string paymentmethod = Request["payment_method"];
                            string discountoffer = Request["discount_offers"];


                            command2.Parameters.AddWithValue("@schedule", paymentschedule);
                            command2.Parameters.AddWithValue("@method", paymentmethod);
                            command2.Parameters.AddWithValue("@tuition", tuitionInt);
                            command2.Parameters.AddWithValue("@miscellaneous", miscellaneousInt);
                            command2.Parameters.AddWithValue("@total", totalInt);
                            command2.Parameters.AddWithValue("@discount_type", discountoffer);
                            command2.Parameters.AddWithValue("@discount", discountInt);
                            command2.Parameters.AddWithValue("@final_total", finaltotalInt);

                            int paymentId = Convert.ToInt32(command2.ExecuteScalar());



                            string query3 = "INSERT INTO Appointment (student_id, date, time) VALUES (@student_id, @date, @time)";
                            using (SqlCommand command3 = new SqlCommand(query3, connection))
                            {

                                string appointmentDate = Request["appointmentDate"];
                                string appointmentTime = Request["appointmentTime"];

                                command3.Parameters.AddWithValue("@student_id", studentId);
                                command3.Parameters.AddWithValue("@date", appointmentDate);
                                command3.Parameters.AddWithValue("@time", appointmentTime);
                                command3.ExecuteNonQuery();

                            }

                            string query4 = "INSERT INTO [Transaction] (date, student_id, payment_id) VALUES (@date, @student_id, @payment_id)";
                            using (SqlCommand command4 = new SqlCommand(query4, connection))
                            {
                                string appointmentDate = Request["appointmentDate"];
                                command4.Parameters.AddWithValue("@date", appointmentDate);
                                command4.Parameters.AddWithValue("@student_id", studentId);
                                command4.Parameters.AddWithValue("@payment_id", paymentId);
                                command4.ExecuteNonQuery();

                                Response.Write("<script>alert('Hello, " + studname + " Payment Registration Success!'); window.location.href='Dashboard.aspx';</script>");

                            }

                        }

                    }

                }

            }
            catch (Exception ex)
            {
                // Log the exception details (ex.Message) for debugging purposes
                // Display a user-friendly error message
                Response.Write("<script>alert('Registration failed: " + ex.Message + "');</script>");
            }

        }

    }

}