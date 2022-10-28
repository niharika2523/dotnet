using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BMS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataReader rdr = null;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='c:\users\niharika\documents\visual studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
             {
                 con.Open();
                 SqlCommand cmd = new SqlCommand("INSERT INTO Account (name, age, address, accountno,password, phone,email,dob) VALUES (@a,@b,@c,@d,@e,@f,@g,@h)", con);

                 cmd.Parameters.AddWithValue("a", TextBox1.Text);
                 cmd.Parameters.AddWithValue("b", TextBox2.Text);
                 cmd.Parameters.AddWithValue("c", TextBox5.Text);
                 cmd.Parameters.AddWithValue("d", TextBox7.Text);
                 cmd.Parameters.AddWithValue("e", TextBox4.Text);
                 cmd.Parameters.AddWithValue("f", TextBox8.Text);
                 cmd.Parameters.AddWithValue("g", TextBox10.Text);
                 cmd.Parameters.AddWithValue("h", TextBox9.Text);
                 cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("INSERT INTO Transactions (AccountNO, Type, Deposit, Withdraw, Balance) VALUES (@a,'New','0','0','0')", con);

                cmd2.Parameters.AddWithValue("a", TextBox7.Text);
                cmd2.ExecuteNonQuery();

                Session["accountno"] = TextBox7.Text;
                 Response.Redirect("login.aspx");
                 rdr = cmd.ExecuteReader();

                 con.Close();

             }
        }
    }
}