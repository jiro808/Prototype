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
     


        protected void Page_Load(object sender, EventArgs e)
        {
          //  string studname = Request["stud_name"];

        }

        protected void Button1_Click(object sender, EventArgs e)
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
            string selectedGrade = RadioButtonList1.SelectedValue;
            string paymentmethod = Request["payment_method"];
            //NEED COMPUTATION BASED ON USER DETAILS (grade lvl, student status, discount) other fees
            string tuition = Request["tuition"];
            string miscellaneous = Request["miscellaneous"];
            string total = Request["total"];
            string discountoffer = Request["discount_offers"];
            string discountpercent = Request["discount_percent"];
            string additionaldiscount= Request["additional_discount"];
            string totaldiscount= Request["total_discount"];
            string appointmentDate = Request["appointmentDate"];
            string appointmentTime = Request["appointmentTime"];

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO Student (name, grade_level, status, address, contact_no, email, father_name, father_occupation, father_contact, father_email, mother_name, mother_occupation, mother_contact, mother_email, guardian_name, guardian_occupation, guardian_contact, guardian_email) VALUES (@name, @grade_level, @status, @address, @contact_no, @email, @father_name, @father_occupation, @father_contact, @father_email, @mother_name, @mother_occupation, @mother_contact, @mother_email, @guardian_name, @guardian_occupation, @guardian_contact, @guardian_email); SELECT SCOPE_IDENTITY();";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
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

                    string query2 = "INSERT INTO Payment (schedule, method, tuition, miscellaneous, total, discount_type, discount, other_discount, final_total) VALUES (@schedule, @method, @tuition, @miscellaneous, @total, @discount_type, @discount, @other_discount, @final_total);";

                    using (SqlCommand command2 = new SqlCommand(query2, connection))
                    {
                        command2.Parameters.AddWithValue("@schedule", selectedGrade);
                        command2.Parameters.AddWithValue("@method", paymentmethod);
                        command2.Parameters.AddWithValue("@tuition", tuition);
                        command2.Parameters.AddWithValue("@miscellaneous", miscellaneous);
                        command2.Parameters.AddWithValue("@total", total);
                        command2.Parameters.AddWithValue("@discount_type", discountoffer);
                        command2.Parameters.AddWithValue("@discount", discountpercent);
                        command2.Parameters.AddWithValue("@other_discount", additionaldiscount);
                        command2.Parameters.AddWithValue("@final_total", totaldiscount);

                        int rowsAffected2 = command2.ExecuteNonQuery();

                        if (rowsAffected2 > 0)
                        {
                            string query3 = "INSERT INTO Appointment (student_id, date, time) VALUES (@student_id, @date, @time);";

                            using (SqlCommand command3 = new SqlCommand(query3, connection))
                            {
                                command3.Parameters.AddWithValue("@student_id", studentId);
                                command3.Parameters.AddWithValue("@date", appointmentDate);
                                command3.Parameters.AddWithValue("@time", appointmentTime);

                                int rowsAffected3 = command3.ExecuteNonQuery();

                                if (rowsAffected3 > 0)

                                {
                                    Response.Write("<script>alert('Hello, " + studname + " Payment Registration Success!');</script>");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Hello, " + studname + " Payment Registration failed!');</script>");
                                }
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Hello, " + studname + " Payment Registration failed!');</script>");
                        }
                    }
                }
            }
        }
    }
}