using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Views.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string sqlQuery = "SELECT TOP 4 * FROM [Transaction_Report] ORDER BY [date] DESC";

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
    }

}