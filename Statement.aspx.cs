using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BMS
{
    public partial class Statement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accno"] != null)
            {
                Label1.Text = Session["accno"].ToString();
            }
            SqlDataReader rdr = null;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='c:\users\niharika\documents\visual studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Transactions WHERE AccountNo = @a", con);
                cmd.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd.ExecuteNonQuery();
                rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                con.Close();
            }


            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}