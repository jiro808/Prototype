using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.Views.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        string connectionString = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}