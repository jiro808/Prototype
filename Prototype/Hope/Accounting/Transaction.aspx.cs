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
    public partial class Transaction : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                binddata();
            }
        }
        private void binddata()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT [Transaction].date, Student.student_id, Student.name, Payment.method, Payment.tuition, Payment.miscellaneous, Payment.total, Payment.discount, Payment.discount_type, Payment.schoolfee, Payment.final_total, Payment.downpayment, Payment.schedule, [Transaction].status FROM [Transaction] INNER JOIN Student ON [Transaction].student_id = Student.student_id INNER JOIN Payment ON [Transaction].payment_id = Payment.payment_id";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                  
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int student_id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            DropDownList DropDown = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            updatestatus(student_id, DropDown.SelectedValue);
            GridView1.EditIndex = -1;
            binddata();

        }
        public void updatestatus(int student_id, string status)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "UPDATE OverdueBalance SET [status] = @status WHERE student_id = @trans";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@status", status);
                    command.Parameters.AddWithValue("@trans", student_id);
                    command.ExecuteNonQuery();

                }
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            if (GridView1.EditIndex == e.NewEditIndex)
            {
                DropDownList DropDown = (DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("DropDownList1");
            }
            GridView1.EditIndex = e.NewEditIndex;
            binddata();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            binddata();
        }
    }
}