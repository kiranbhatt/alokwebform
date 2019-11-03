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
    public partial class Record : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data source=DESKTOP-OU6QMCI\\SQLEXPRESS;initial catalog=Record;Integrated security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }
public void Show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Rname", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gv.DataSource = dt;
            gv.DataBind();
        }
        protected void button_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Rname(Name,Salary)values('"+textname.Text+ "','" + textsalary.Text + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Show();
        }
    }
}