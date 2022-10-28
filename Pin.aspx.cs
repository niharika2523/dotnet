using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BMS
{
    public partial class Pin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accno"] != null)
            {
                Label1.Text = Session["accno"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='c:\users\niharika\documents\visual studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();

                SqlCommand cmd3 = new SqlCommand("UPDATE Account SET password=@b WHERE AccountNO=@a ", con);

                cmd3.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd3.Parameters.AddWithValue("b", TextBox2.Text);

                cmd3.ExecuteNonQuery();
                con.Close();

            }
            Response.Redirect("home.aspx");
        }
    }
}