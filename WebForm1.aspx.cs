using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-OU6QMCI\\SQLEXPRESS;Initial Catalog=Kiran;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView();
        }

        public void GridView()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from student", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
              
                gv.DataSource = ds;
                gv.DataBind();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        protected void Textbutton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student (Name,Age,City,Class)values('" + Textname.Text + "','" + Textage.Text + "','" + Textcity.Text + "','" + Textclass.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView();
        }


    }
}