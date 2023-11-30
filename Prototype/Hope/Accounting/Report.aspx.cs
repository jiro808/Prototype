using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Util;

namespace Prototype.Hope.Accounting
{
    public partial class Report : System.Web.UI.Page
    {
        //string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                //string sqlQuery = "SELECT [date], [student_id], [mode_of_payment], [student_name], [tuition_fee], [miscellaneuos], [amount], [discount], [type], [school_fee], [total_amount], [downpayment], [schedule_of_fees], [payment_status] FROM [Transaction_Report]";
                //string sqlQuery = "SELECT A.date AS AppointmentDate, S.student_id, S.student_name, P.method, P.tuition, P.miscellaneous, P.total, P.discount, P.discount_type, P.final_total, P.downpayment, P.schedule_of_fees FROM Appointment A JOIN Student S ON A.student_id = S.student_id JOIN Payment P ON S.student_id = P.student_id;";

                string query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.CommandType = CommandType.Text;

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        ReportRepeater.DataSource = dataTable;
                        ReportRepeater.DataBind();
                    }
                }
            }
        }
        private DataTable GetFilteredData(string filterValue)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT * FROM Transaction_Report WHERE student_id LIKE '%' + @FilterValue + '%' OR student_name LIKE '%' + @FilterValue + '%'";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FilterValue", filterValue);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        return dataTable;
                    }
                }
            }
        }
        protected void search_Click(object sender, EventArgs e)
        {
            string filterValue = TextBox1.Text.Trim();
            DataTable filteredData = GetFilteredData(filterValue);
            ReportRepeater.DataSource = filteredData;
            ReportRepeater.DataBind();
        }
        protected void rblFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = rblFilter.SelectedValue;

            DataTable filteredData = GetFilteredData2(selectedValue);

            ReportRepeater.DataSource = filteredData;
            ReportRepeater.DataBind();
        }
        private DataTable GetFilteredData2(string filterValue)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query;
                if (filterValue == "All")
                {
                    query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id";
                }
                else
                {
                    query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id WHERE Payment.method = @method";
                }

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (filterValue != "All")
                    {
                        command.Parameters.AddWithValue("@method", filterValue);
                    }

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        return dataTable;
                    }
                }
            }
        }
        protected void rbl_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = RadioButtonList1.SelectedValue;

            DataTable filteredData = GetFilteredData3(selectedValue);

            ReportRepeater.DataSource = filteredData;
            ReportRepeater.DataBind();
        }
        private DataTable GetFilteredData3(string filterValue)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query;
                if (filterValue == "All")
                {
                    query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id";
                }
                else
                {
                    query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id WHERE Payment.schedule = @schedule";
                }

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (filterValue != "All")
                    {
                        command.Parameters.AddWithValue("@schedule", filterValue);
                    }

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        return dataTable;
                    }
                }
            }
        }
    }
}