using System;
using System.Web.UI;

namespace medinova_masterproject
{
    public partial class Logout : System.Web.UI.Page
    {
        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear all session data
            Session.Clear();
            Session.Abandon();
        }
    }
}