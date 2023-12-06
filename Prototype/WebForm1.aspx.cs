using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Prototype
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a method to retrieve data from the database
                DataTable dt = GetDataFromDatabase();

                // Bind the data to the DropDownList
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "other_discount"; // Replace with the actual field name from your database
                DropDownList1.DataValueField = "other_discount"; // Replace with the actual field name from your database
                DropDownList1.DataBind();
                // Add additional options
                DropDownList1.Items.Insert(0, new ListItem("Approved", "Approved"));
                DropDownList1.Items.Insert(1, new ListItem("Declined", "Declined"));

                // Set the pre-selected value based on the data from the database
                if (dt.Rows.Count > 0)
                {
                    string preSelectedValue = dt.Rows[0]["other_discount"].ToString();
                    DropDownList1.SelectedValue = preSelectedValue;
                }
            }
        }

        private DataTable GetDataFromDatabase()
        {
            // Replace the connection string and query with your actual values
            string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
            string query = "SELECT other_discount FROM Payment";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        return dt;
                    }
                }
            }
        }

            
    }
}
