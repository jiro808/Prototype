using System;
using System.Data.SqlClient;

namespace Prototype
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    // Load data from the database and set the pre-selected value for the dropdown
                    string firstOptionValue = GetFirstOptionValueFromDatabase();

                    // Check if the value is one of the valid options before setting it
                    if (ddlStatus.Items.FindByValue(firstOptionValue) != null)
                    {
                        ddlStatus.SelectedValue = firstOptionValue;
                    }
                    else
                    {
                        // Handle the case where the retrieved value is not a valid option
                        // You may want to provide a default or handle it as appropriate for your application
                        // For now, just printing a message to the console
                        Console.WriteLine($"Invalid value '{firstOptionValue}' retrieved from the database.");
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception (log it, display an error message, etc.)
                    // For simplicity, this example just prints the error to the console
                    Console.WriteLine("Error: " + ex.Message);
                }
            }
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle the dropdown selection change if needed
            // This method will be called when the user changes the selection
        }

        private string GetFirstOptionValueFromDatabase()
        {
            string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string sql = "SELECT TOP 1 other_discount FROM Payment";

                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return reader["other_discount"].ToString();
                        }
                    }
                }
            }

            return string.Empty;
        }
    }
}
