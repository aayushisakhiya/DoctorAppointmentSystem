using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace medinova_masterproject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;

        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(S);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text) || !string.IsNullOrEmpty(TextBox2.Text))
            {
                cmd = new SqlCommand("select count(*) from Register_tbl where Email=@Email and Password=@Password", con);
                cmd.Parameters.AddWithValue("Email", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("Password", TextBox2.Text);

                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["admin"] = TextBox1.Text;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Email or Password.";
                }
            }
        }

    }

}