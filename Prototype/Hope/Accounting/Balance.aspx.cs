using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Prototype.Hope.Accounting
{
    public partial class Balances : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                binddata();
            }

        }
        private void binddata()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
        connection.Open();
            string query = "SELECT OB.invoice_no, S.student_id, S.name, OB.date, OB.total, OB.due, OB.status FROM OverdueBalance AS OB INNER JOIN Student AS S ON OB.student_id = S.student_id  WHERE  OB.status LIKE @status";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (rblFilter.SelectedValue == "All")
                    {
                        command.Parameters.AddWithValue("@status", "%");
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@status", rblFilter.SelectedValue);
                    }

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Use parameterized query to avoid SQL injection
                string query = "SELECT OB.invoice_no, S.student_id, S.name, OB.date, OB.total, OB.due, OB.status FROM OverdueBalance AS OB INNER JOIN Student AS S ON OB.student_id = S.student_id  WHERE  S.student_id LIKE @studentid";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@studentid", TextBox1.Text);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        GridView2.DataSource = dt;
                        GridView2.DataBind();

                        // Set the GridView in edit mode for the first row (adjust as needed)
                        if (dt.Rows.Count > 0)
                        {
                            GridView2.EditIndex = 0;
                            GridView2.DataBind();  // Rebind to enter edit mode
                        }
                    }
                }
            }
        }
        protected void rblFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT OB.invoice_no, S.student_id, S.name, OB.date, OB.total, OB.due, OB.status FROM OverdueBalance AS OB INNER JOIN Student AS S ON OB.student_id = S.student_id  WHERE  OB.status LIKE @status";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // If "All" is selected, show all statuses
                    if (rblFilter.SelectedValue == "All")
                    {
                        command.Parameters.AddWithValue("@status", "%"); // Use '%' to match all statuses
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@status", rblFilter.SelectedValue);
                    }

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {

                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                            GridView2.DataSource = dt;
                            GridView2.DataBind();

                    }
                }
            }
        }
        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int invoice_no = int.Parse(GridView2.DataKeys[e.RowIndex].Value.ToString());
            DropDownList DropDown = (DropDownList)GridView2.Rows[e.RowIndex].FindControl("DropDownList1");
            updatestatus(invoice_no,DropDown.SelectedValue);
            GridView2.EditIndex = -1;
            binddata();

        }
        public void updatestatus(int invoice_no, string status)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Use parameterized query to avoid SQL injection
                string query = "UPDATE OverdueBalance SET [status] = @status WHERE invoice_no = @invoice_no";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@status", status);
                    command.Parameters.AddWithValue("@invoice_no", invoice_no);
                    command.ExecuteNonQuery();

                }
            }
        }
        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            if (GridView2.EditIndex == e.NewEditIndex)
            {
                // GridView is in edit mode, proceed with accessing the DropDownList
                DropDownList DropDown = (DropDownList)GridView2.Rows[e.NewEditIndex].FindControl("DropDownList1");
                // Rest of your code...
            }
            GridView2.EditIndex = e.NewEditIndex;
            binddata();
        }
        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            binddata();
        }
    }
}