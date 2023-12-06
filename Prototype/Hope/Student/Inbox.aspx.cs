using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Student
{
    public partial class Inbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // You can add server-side code here to load email data, e.g., from a database
                // For demonstration purposes, we'll add a sample email item to the list
                LoadSampleEmails();
            }
        }

        private void LoadSampleEmails()
        {
            // Sample email data
            List<EmailItem> emails = new List<EmailItem>
            {
                new EmailItem
                {
                    Subject = "New Student Appointment Schedule Pending Approval",
                    Sender = "John Doe",
                    Date = DateTime.Now,
                    Body = "We hope this message finds you well. Thank you for choosing Hope Integrated School for your education...",
                    IsRead = false
                },
                // Add more email items as needed
            };

            // Bind the email data to the ListView control
            EmailListView.DataSource = emails;
            EmailListView.DataBind();
        }

        // You can define additional methods and event handlers as needed for your functionality

        // Define a class to represent an email item
        public class EmailItem
        {
            public string Subject { get; set; }
            public string Sender { get; set; }
            public DateTime Date { get; set; }
            public string Body { get; set; }
            public bool IsRead { get; set; }
        }
    }
}