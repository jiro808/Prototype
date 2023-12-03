using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Prototype.Hope.Accounting
{
    public partial class StudentDetailEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the StudentId from the query string
            string student_id = Request.QueryString["StudentId"];
            if (!string.IsNullOrEmpty(student_id))
            {
                LoadStudentDetails(student_id);
            }
            else
            {
                // Handle the case where StudentId is not available
            }
        }
        private void LoadStudentDetails(string student_id)
        {
            string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
            string query = "SELECT name FROM Students WHERE StudentId = @StudentId";


            string stud_name = Request["stud_name"];


            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@StudentId", Request.QueryString["StudentId"]); // Assuming you pass the Student ID in query string

                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Assuming you have textboxes with ID's like txtName, txtGradeLevel, etc.
                        stud_name = reader["name"].ToString();
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle the exception
                }
            }
        }
    }
}