using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Accounting
{
    public partial class Calendar : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCalendar();
            }
        }
        private void BindCalendar()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Fetch data from the database
                SqlCommand cmd = new SqlCommand("SELECT * FROM Appointment", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                // Store the DataTable in the ViewState to access it later
                ViewState["Appointments"] = dt;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            // Check if ViewState contains the DataTable
            if (ViewState["Appointments"] != null)
            {
                DataTable dt = (DataTable)ViewState["Appointments"];

                int appointmentCount = 0;

                foreach (DataRow row in dt.Rows)
                {
                    DateTime appointmentDate = Convert.ToDateTime(row["date"]);

                    if (e.Day.Date == appointmentDate.Date)
                    {
                        appointmentCount++;
                    }
                }

                if (appointmentCount > 0)
                {
                    // Set the background color based on the appointment count
                    if (appointmentCount >= 1 && appointmentCount <= 3)
                    {
                        e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#ACF3AE");
                    }
                    else if (appointmentCount >= 4 && appointmentCount <= 6)
                    {
                        e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#FA6B84");
                    }
                    else
                    {
                        e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#C43D5A");
                    }

                    // Create a label to display the appointment count
                    Label countLabel = new Label();
                    countLabel.Text = appointmentCount.ToString();
                    countLabel.ForeColor = System.Drawing.Color.Black; // Set the text color
                    countLabel.Font.Bold = true;
                    // Add the label to the right side of the cell
                    e.Cell.Controls.Add(countLabel);
                    countLabel.Style.Add("position", "relative");
                    countLabel.Style.Add("top", "25%"); // Adjust the top position as needed
                    countLabel.Style.Add("left", "20%"); // Adjust the left position as needed
                    countLabel.Style.Add("transform", "translate(-50%, -50%)"); // Center the label within the cell

                }

                e.Day.IsSelectable = false; // Disable the underline for the day
            }
        }
    }
}