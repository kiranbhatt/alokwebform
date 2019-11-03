using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication5
{
    public partial class Detail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-OU6QMCI\\SQLEXPRESS; initial catalog=Detail; integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }
        public void show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Name", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable da = new DataTable();
            sda.Fill(da);
            con.Close();
            GridView.DataSource = da;
            GridView.DataBind();
            

        }
        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Name(fname,lname,Salary)values('"+txt_fname.Text+"','"+txt_lname.Text+"','"+salary.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            show();
        }
    }
}