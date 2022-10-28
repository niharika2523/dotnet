using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BMS
{
    public partial class Balance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accno"] != null)
            {
                Label1.Text = Session["accno"].ToString();
            }

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='c:\users\niharika\documents\visual studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT Balance FROM Transactions WHERE AccountNo = @a", con);
                cmd.Parameters.AddWithValue("a", Session["accno"].ToString());
                int balance = (int)cmd.ExecuteScalar();
                cmd.ExecuteNonQuery();

                Label2.Text = balance.ToString();
                con.Close();
            }

            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}