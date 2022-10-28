using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BMS
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\Niharika\Documents\Visual Studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM Account WHERE accountno=@a", con);
                cmd.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("DELETE FROM Transactions WHERE accountno=@a", con);
                cmd2.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd2.ExecuteNonQuery();

                con.Close();
            }
            Response.Redirect("Register.aspx");
        }
    }
}