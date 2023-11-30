﻿using System;
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

            if (!IsPostBack)
            {
                // Set Full Payment as pre-selected
                RadioButtonList1.Items.FindByText("Full Payment").Selected = true;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
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

                string paymentschedule = RadioButtonList1.SelectedValue;
                string paymentmethod = Request["payment_method"];
                string tuitionValue = Request["tuition"];
                string miscellaneousValue = Request["miscellaneous"];
                string totalValue = Request["total"];
                string discountoffer = Request["discount_offers"];
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

                string appointmentDate = Request["appointmentDate"];
                string appointmentTime = Request["appointmentTime"];

                DateTime.TryParse(appointmentDate, out DateTime originalDate);
                DateTime dueDate = originalDate.AddMonths(6);
                string resultDueDate = dueDate.ToString();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    connection.Open();
                    string queryCount = "SELECT COUNT(*) FROM Appointment WHERE date = @date";
                    using (SqlCommand countCommand = new SqlCommand(queryCount, connection))
                    {
                        countCommand.Parameters.AddWithValue("@date", appointmentDate);

                        int existingAppointments = (int)countCommand.ExecuteScalar();

                        if (existingAppointments < 10 && DateTime.Parse(appointmentDate) >= DateTime.Now)
                        {

                            string STUD = "INSERT INTO Student VALUES (@name, @grade_level, @status, @address, @contact_no, @email, @father_name, @father_occupation, @father_contact, @father_email, @mother_name, @mother_occupation, @mother_contact, @mother_email, @guardian_name, @guardian_occupation, @guardian_contact, @guardian_email); SELECT SCOPE_IDENTITY();";
                            using (SqlCommand command = new SqlCommand(STUD, connection))

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

                                string PAY = "INSERT INTO Payment (schedule, method, tuition, miscellaneous, total, schoolfee, discount_type, discount,  final_total, downpayment) VALUES (@schedule, @method, @tuition, @miscellaneous, @total, @schoolfee, @discount_type, @discount, @final_total, @downpayment); SELECT SCOPE_IDENTITY();";
                                using (SqlCommand command2 = new SqlCommand(PAY, connection))
                                {

                                    command2.Parameters.AddWithValue("@schedule", paymentschedule);
                                    command2.Parameters.AddWithValue("@method", paymentmethod);
                                    command2.Parameters.AddWithValue("@tuition", tuitionInt);
                                    command2.Parameters.AddWithValue("@miscellaneous", miscellaneousInt);
                                    command2.Parameters.AddWithValue("@total", totalInt);
                                    command2.Parameters.AddWithValue("@schoolfee", 9100);
                                    command2.Parameters.AddWithValue("@discount_type", discountoffer);
                                    command2.Parameters.AddWithValue("@discount", discountInt);
                                    command2.Parameters.AddWithValue("@final_total", finaltotalInt);
                                    command2.Parameters.AddWithValue("@downpayment", 5000);

                                    int paymentId = Convert.ToInt32(command2.ExecuteScalar());

                                    string TRA = "INSERT INTO [Transaction] VALUES (@date, @student_id, @payment_id, @status)";
                                    using (SqlCommand command3 = new SqlCommand(TRA, connection))
                                    {

                                        command3.Parameters.AddWithValue("@date", appointmentDate);
                                        command3.Parameters.AddWithValue("@student_id", studentId);
                                        command3.Parameters.AddWithValue("@payment_id", paymentId);
                                        if (paymentschedule == "Partial Payment")
                                        {
                                            command3.Parameters.AddWithValue("@status", "Pending");
                                        }
                                        else if (paymentschedule == "Full Payment")
                                        {
                                            command3.Parameters.AddWithValue("@status", "Pending");
                                        }
                                        command3.ExecuteNonQuery();

                                    }
                                }

                                string APP = "INSERT INTO Appointment VALUES (@student_id, @date, @time, @action)";
                                using (SqlCommand commandAPP = new SqlCommand(APP, connection))
                                {
                                    commandAPP.Parameters.AddWithValue("@student_id", studentId);
                                    commandAPP.Parameters.AddWithValue("@date", appointmentDate);
                                    commandAPP.Parameters.AddWithValue("@time", appointmentTime);
                                    commandAPP.Parameters.AddWithValue("@action", "Pending");
                                    commandAPP.ExecuteNonQuery();
                                }

                                string ODB = "INSERT INTO OverdueBalance VALUES (@student_id, @date, @total, @due, @status)";
                                using (SqlCommand command4 = new SqlCommand(ODB, connection))
                                {
                                    command4.Parameters.AddWithValue("@student_id", studentId);
                                    command4.Parameters.AddWithValue("@date", appointmentDate);
                                    command4.Parameters.AddWithValue("@total", finaltotalInt);

                                    if (paymentschedule == "Partial Payment")
                                    {
                                        command4.Parameters.AddWithValue("@due", resultDueDate);
                                        command4.Parameters.AddWithValue("@status", "Pending");
                                    }
                                    else if (paymentschedule == "Full Payment")
                                    {
                                        command4.Parameters.AddWithValue("@due", appointmentDate);
                                        command4.Parameters.AddWithValue("@status", "Pending");
                                    }

                                    command4.ExecuteNonQuery();
                                }
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Hello, " + studname + " Please Retry and select another Appointment Date either its already full or that day is passed'); window.location.href='Payment.aspx';</script>");
                        }
                    }

                    Response.Write("<script>alert('Hello, " + studname + " Payment Registration Success!'); window.location.href='Dashboard.aspx';</script>");
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