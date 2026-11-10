using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace medinova_masterproject
{

    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";


        void getcon()
        {
            con = new SqlConnection(S);
            con.Open();
        }

        void ClearForm()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            getcon();

            cmd = new SqlCommand("insert into Contact_tbl([Your Name],[Your Email],[Subject],[Message]) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "')", con);
            cmd.ExecuteNonQuery();
            ClearForm();

            lblMessage.Text = "Message sent successfully.";
            lblMessage.ForeColor = Color.Green;
        }
    }
}