using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Prototype.Models
{
    public class Function
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private string constr;
        private SqlDataAdapter sda;
        public Function() 
        {
            constr = "Data Source=DESKTOP-EOET84T\\MSSQLSERVER_PC;Initial Catalog=Prototype;User ID=sa;Password=123";
            con = new SqlConnection(constr);
            cmd = new SqlCommand();
            cmd.Connection = con;

        }

        public int setdata(string sql)
        {
            int cnt = 0;
            
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            cmd.CommandText = sql;
            cnt = cmd.ExecuteNonQuery();
            con.Close();

            return cnt;
        }

        public DataTable GetData(string query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(query,constr);
            sda.Fill(dt);
            return dt;
        }

    }
} 