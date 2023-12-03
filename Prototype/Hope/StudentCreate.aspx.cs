using Prototype.Hope.Student;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope
{
    public partial class StudentCreate : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string name = Request["name"];
            string email = Request["email"];
            string username = Request["username"];
            string password = Request["password"];
            string password2 = Request["password2"];

            // Check if passwords match
            if (password != password2)
            {
                // Passwords do not match, display an error message
                Response.Write("<script>alert('Passwords do not match.');</script>");
                return; // Exit the method, preventing further processing
            }

            // If passwords match, continue with the account creation logic

            string query = "INSERT INTO StudentAccount (name, email, username, password) VALUES (@name, @email, @username, @password)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    // Add parameters
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    // Open the connection
                    connection.Open();

                    // Execute the command
                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Check if the insert was successful
                    if (rowsAffected > 0)
                    {
                        // Display a success message or redirect to another page
                        Response.Write("<script>alert('Account created successfully.');</script>");
                    }
                    else
                    {
                        // Display an error message
                        Response.Write("<script>alert('Account creation failed.');</script>");
                    }
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}