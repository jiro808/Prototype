using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Hope.Student
{
    public partial class Payment : System.Web.UI.Page
    {

       // string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";
     


        protected void Page_Load(object sender, EventArgs e)
        {
          //  string studname = Request["stud_name"];

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string studname = Request["stud_name"];
            string gradelvl = Request["grade_level"];
            Response.Write("<script>alert('Hello, " + studname + "!');</script>");
            Response.Write("<script>alert('Hello, " + gradelvl + "!');</script>");
        }
    }
}