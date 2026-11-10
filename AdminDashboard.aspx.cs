using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medinova_masterproject
{

    public partial class AdminDashboard : System.Web.UI.Page
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

        void fillcount()
        {
            getcon();

            cmd = new SqlCommand("select count(*) from Appointment_tbl", con);
            lblapp.Text = cmd.ExecuteScalar().ToString();

            cmd = new SqlCommand("select count(*) from Contact_tbl", con);
            lblcnt.Text = cmd.ExecuteScalar().ToString();

            cmd = new SqlCommand("select count(*) from Register_tbl", con);
            lblusr.Text = cmd.ExecuteScalar().ToString();

            cmd = new SqlCommand("select count(*) from doctor", con);
            lbldct.Text = cmd.ExecuteScalar().ToString();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            getcon();
            if (!IsPostBack)
            {
                fillcount();
            }
        }
    }
}
