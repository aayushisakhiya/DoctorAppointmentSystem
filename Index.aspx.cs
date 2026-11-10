using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medinova_masterproject
{
    public partial class Index : System.Web.UI.Page
    {

        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Index page load
            }
        }

        //protected void bttnapp_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Appointment.aspx");
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Find DoctorA.aspx");
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Find Doctor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Appointment.aspx");
        }

        //protected void Button2_Click1(object sender, EventArgs e)
        //{

        //}
    }
}