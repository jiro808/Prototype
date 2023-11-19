using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace Prototype.Hope.Accounting
{
    public partial class Annoucement : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }       
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string title = textbox.Text.Trim();
            string message = TextBox2.Text.Trim();
            string audience = TextBox1.Text.Trim();

            if (!string.IsNullOrEmpty(title) && !string.IsNullOrEmpty(message) && !string.IsNullOrEmpty(audience))
                using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Announcement VALUES (@title, @message, @audience)", con))
                {
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@message", message);
                    cmd.Parameters.AddWithValue("@audience", audience);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                    Response.Write("<script>alert('Announcement Successful');</script>");
                    ClearInputs();
                }
            else
            {
                Response.Write("<script>alert('Please fill in all required fields.');</script>");
            }
        }
        private void ClearInputs()
        {
            textbox.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}