using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Accounting
{
    public partial class StudentList : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
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
    }
}