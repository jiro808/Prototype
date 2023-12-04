using Prototype.Hope.Student;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "swal('Are you sure?', '', 'warning');", true);
            // ScriptManager.RegisterStartupScript(this,GetType(),"alert", "swal('Are you sure?', 'Registration Complete', 'success').then(function() { window.location.href = 'Dashboard.aspx'; });", true);
            //<a href="StudentLogin.aspx">StudentLogin.aspx</a>

            string script = @"swal({   title: 'Are you Sure?',
                                        text: '',
                                        icon: 'warning',
                                        buttons: {cancel: 'Cancel',confirm: 'OK',},}).then((isConfirmed) => {
                                        if (isConfirmed) {window.location.href = 'StudentLogin.aspx'; } else {}});";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", script, true);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string email = Request.Form["email"];
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            // Check if the username already exists
            if (IsUsernameExists(username))
            {
                // Handle the situation where the username already exists
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Error', 'Username already exists.', 'error');", true);
                return;
            }

            // Continue with the insertion
            string query = "INSERT INTO StudentAccount (name, email, username, password) VALUES (@name, @email, @username, @password)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    connection.Open();
                    cmd.ExecuteNonQuery();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('Success', 'Account created successfully.', 'success');", true);
                }
            }
        }

        private bool IsUsernameExists(string username)
        {
            // Check if the username already exists in the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM StudentAccount WHERE username = @username", connection))
                {
                    cmd.Parameters.AddWithValue("@username", username);

                    int count = (int)cmd.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}