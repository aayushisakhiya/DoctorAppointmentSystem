using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medinova_masterproject
{
    public partial class Find_Doctor : System.Web.UI.Page
    {

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";


        void getcon()
        {
            con = new SqlConnection(S);
            con.Open();
        }

      
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into doctor([C_Department],[S_Doctor],[D_Name],[Specialization]) values('" + drpdept.SelectedValue + "','" + drpdoc.SelectedValue + "','" + txtname.Text + "','" + txtspecial.Text + "')", con);
            cmd.ExecuteNonQuery();
          

            drpdept.SelectedIndex = 0;
            drpdoc.SelectedIndex = 0;

            txtname.Text = "";
            txtspecial.Text = "";

            // Success Message
            Label1.Text = "Doctor Saved Successfully!";
            Label1.ForeColor = System.Drawing.Color.Green;
        }
    }
}