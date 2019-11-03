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

       public partial class UserDetail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data source=DESKTOP-OU6QMCI\\SQLEXPRESS;initial catalog= userdetails;Integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }
        public void show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from details", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gv.DataSource = dt;
            gv.DataBind();
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into details(name, Emailid, password)values('" + Name.Text + "','"+Email.Text + "','"+Pass.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            show();

        }
    }
}