using Prototype.Hope.Student;
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
    public partial class StudentDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string studentId = Request.QueryString["studentId"];
                if (!String.IsNullOrEmpty(studentId))
                {
                    LoadStudentDetails();
                }
            }
        }
        private void LoadStudentDetails()
        {
            string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=SIA_BILLING;Persist Security Info=True;User ID=sa;Password=123";
            string STUD = "SELECT * FROM Student WHERE student_id = @StudentId";
            string PAY = "SELECT * FROM Payment WHERE student_id = @StudentId";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(STUD, con);
                cmd.Parameters.AddWithValue("@StudentId", Request.QueryString["studentId"]);
                con.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    stud_name.Text = reader["name"].ToString();
                    grade_level.Text = reader["grade_level"].ToString();
                    stud_status.Text = reader["status"].ToString();
                    stud_home_add.Text = reader["address"].ToString();
                    stud_contact_no.Text = reader["contact_no"].ToString();
                    stud_email_add.Text = reader["email"].ToString();
                    ////PROFILE PIC
                    fth_name.Text = reader["father_name"].ToString();
                    fth_occupation.Text = reader["father_occupation"].ToString();
                    fth_contact_no.Text = reader["father_contact"].ToString();
                    fth_email_add.Text = reader["father_email"].ToString();
                    mth_name.Text = reader["mother_name"].ToString();
                    mth_occupation.Text = reader["mother_occupation"].ToString();
                    mth_contact_no.Text = reader["mother_contact"].ToString();
                    mth_email_add.Text = reader["mother_email"].ToString();
                    grd_name.Text = reader["guardian_name"].ToString();
                    grd_occupation.Text = reader["guardian_occupation"].ToString();
                    grd_contact_no.Text = reader["guardian_contact"].ToString();
                    grd_email_add.Text = reader["guardian_email"].ToString();
                }
            }
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(PAY, con);
                cmd.Parameters.AddWithValue("@StudentId", Request.QueryString["studentId"]);
                con.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    //schedule.Text = reader["schedule"].ToString();
                    //method.Text = reader["method"].ToString();
                    //tuition.Text = reader["tuition"].ToString();
                    //miscellaneous.Text = reader["miscellaneous"].ToString();
                    //total.Text = reader["total"].ToString();
                    //fee.Text = reader["schoolfee"].ToString();
                    //discount.Text = reader["discount_type"].ToString();
                    //percent.Text = reader["discount"].ToString();
                    //other.Text = reader["other_discount"].ToString();
                    //totaldiscount.Text = reader["discount_total"].ToString();
                    //fee.Text = reader["SCHOOLFEELIST"].ToString();
                    //totalfinal.Text = reader["final_total"].ToString();
                }
            }





        }




















        protected void editbttn_Click(object sender, EventArgs e)
        {

        }
        protected void savebttn_Click(object sender, EventArgs e)
        {

        }
    }
}