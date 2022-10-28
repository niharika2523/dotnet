using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BMS
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\Niharika\Documents\Visual Studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Account WHERE accountno=@a AND password=@b ",con);
                cmd.Parameters.AddWithValue("a", TextBox1.Text);
                cmd.Parameters.AddWithValue("b", TextBox2.Text);
                cmd.ExecuteNonQuery();
                
                cmd.ExecuteNonQuery();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Succeeded!!!');</script>", false);
                    Session["accno"] = TextBox1.Text;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed!!!');</script>", false);

                }
                
                con.Close();


            }
        }
    }
}