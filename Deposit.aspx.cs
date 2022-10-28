using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BMS
{
    public partial class Deposit : System.Web.UI.Page
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlDataReader rdr = null;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='c:\users\niharika\documents\visual studio 2015\Projects\BMS\BMS\App_Data\Bank.mdf';Integrated Security=True");
            {
                con.Open();
                
                SqlCommand cmd = new SqlCommand("SELECT Balance FROM Transactions WHERE AccountNo = @a", con);
                cmd.Parameters.AddWithValue("a", Session["accno"].ToString());
                int balance = (int)cmd.ExecuteScalar();
                cmd.ExecuteNonQuery();

                SqlCommand cmd2= new SqlCommand("INSERT INTO Transactions (AccountNO, Type, Deposit, Withdraw, Balance) VALUES (@a,'Deposit',@b,'0',@c)", con);

                cmd2.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd2.Parameters.AddWithValue("b", TextBox1.Text);
                balance = balance + int.Parse(TextBox1.Text);
                cmd2.Parameters.AddWithValue("c", balance);
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand("UPDATE Transactions SET Balance = @b WHERE AccountNO=@a AND Type='New'", con);

                cmd3.Parameters.AddWithValue("a", Session["accno"].ToString());
                cmd3.Parameters.AddWithValue("b", balance);
                
                cmd3.ExecuteNonQuery();

                Response.Redirect("home.aspx");
                rdr = cmd2.ExecuteReader();

                con.Close();

            }
        }
    }
}