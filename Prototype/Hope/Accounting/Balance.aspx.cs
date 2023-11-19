using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Prototype.Hope.Accounting
{
    public partial class Balances : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {

           


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string filterValue = TextBox1.Text.Trim();
          
            SqlDataSource1.SelectCommand = "SELECT * FROM Balance WHERE student_id LIKE '%' + @FilterValue + '%' OR student_name LIKE '%' + @FilterValue + '%'";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("FilterValue", filterValue);
            GridView1.DataBind();
        }
        protected void rblFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string filterValue = rblFilter.SelectedValue;
            if (filterValue == "All")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Balance";
            }
            else
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Balance WHERE status = @Status";
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("Status", filterValue);
            }
            GridView1.DataBind();
        }



    }
}