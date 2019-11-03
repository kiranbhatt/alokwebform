using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication5
{
    public partial class FirstLastName : System.Web.UI.Page
    {
        readonly string connection = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        readonly SqlConnection con;

        public FirstLastName()
        {
            con = new SqlConnection(connection);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Show();
                Clear();
            }
           
        }
        public void Show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from FirstLastNameF", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gv.DataSource = dt;
            gv.DataBind();
        }

         private void Clear()
        {
            fname.Text = "";
            lname.Text = "";
            salary.Text = "";
            btnInsert.Text = "Insert";
     }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (btnInsert.Text == "Insert")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert Into FirstLastNameF(FirstName,LastName,Salary)values('" + fname.Text + "','" + lname.Text + "','" + salary.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Clear();
                Show();
            }
            else if (btnInsert.Text == "Update")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Update FirstLastNameF set FirstName='" + fname.Text + "',LastName='" + lname.Text + "',Salary='" + salary.Text + "' where FId='" + ViewState["Value"] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Clear();
                Show();
            }

        }
        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Del")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete from FirstLastNameF where FId=" + e.CommandArgument, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Show();
            }
            else if (e.CommandName == "Ed")
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from FirstLastNameF where FId = " + e.CommandArgument, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                fname.Text = dt.Rows[0]["FirstName"].ToString();
                lname.Text = dt.Rows[0]["LastName"].ToString(); ;
                salary.Text = dt.Rows[0]["Salary"].ToString(); ;
                btnInsert.Text = "Update";
                ViewState["Value"] = e.CommandArgument;
            }
        }
    }
}