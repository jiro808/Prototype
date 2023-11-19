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
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string sqlQuery = "SELECT [date], [student_id], [mode_of_payment], [student_name], [tuition_fee], [miscellaneuos], [amount], [discount], [type], [school_fee], [total_amount], [downpayment], [schedule_of_fees], [payment_status] FROM [Transaction_Report]";

                using (SqlCommand cmd = new SqlCommand(sqlQuery, conn))
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
                    query = "SELECT * FROM Transaction_Report";
                }
                else
                {
                    query = "SELECT * FROM Transaction_Report WHERE mode_of_payment = @mode_of_payment";
                }

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (filterValue != "All")
                    {
                        command.Parameters.AddWithValue("@mode_of_payment", filterValue);
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
                    query = "SELECT * FROM Transaction_Report";
                }
                else
                {
                    query = "SELECT * FROM Transaction_Report WHERE schedule_of_fees = @schedule_of_fees";
                }

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (filterValue != "All")
                    {
                        command.Parameters.AddWithValue("@schedule_of_fees", filterValue);
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