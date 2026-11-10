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

    public partial class AdminAppointment : System.Web.UI.Page
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
            drpdept.ClearSelection();
            drpdoc.ClearSelection();
            txtname.Text = "";
            txteml.Text = "";
            txtpass.Text = "";
            txtdate.Text = "";
            txttime.Text = "";
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("Select * from Appointment_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("Select * from Appointment_tbl where Id = '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            drpdept.SelectedValue = ds.Tables[0].Rows[0]["Choose Department"].ToString();
            drpdoc.SelectedValue = ds.Tables[0].Rows[0]["Select Doctor"].ToString();
            txtname.Text = ds.Tables[0].Rows[0]["Your Name"].ToString();
            txteml.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            txtdate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["Date"]).ToString("yyyy-MM-dd");
            txttime.Text = ds.Tables[0].Rows[0]["Time"].ToString();
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
                fillgrid();
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                getcon();

                cmd = new SqlCommand("insert into Appointment_tbl([Choose Department],[Select Doctor],[Your Name],[Email],[Password],[Date],[Time]) values('" + drpdept.SelectedValue + "','" + drpdoc.SelectedValue + "','" + txtname.Text + "','" + txteml.Text + "','" + txtpass.Text + "','" + txtdate.Text + "','" + txttime.Text + "')", con);
                cmd.ExecuteNonQuery();

                Label1.Text = "Appointment Saved Successfully!";
            }
            else
            {
                getcon();

                cmd = new SqlCommand("update Appointment_tbl set [Choose Department] = '" + drpdept.SelectedValue + "',[Select Doctor] = '" + drpdoc.SelectedValue + "',[Your Name] = '" + txtname.Text + "',[Email] = '" + txteml.Text + "',[Date] = '" + txtdate.Text + "',[Time] = '" + txttime.Text + "' where Id = '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();

                Button1.Text = "Save";
                Label1.Text = "Appointment Updated Successfully!";
            }

            ClearForm();
            fillgrid();
            Label1.ForeColor = Color.Green;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                filldata();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                getcon();

                cmd = new SqlCommand("Delete from Appointment_tbl where Id = '" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();

                Label1.Text = "Appointment Deleted Successfully!";
                Label1.ForeColor = Color.Green;
            }
        }
    }
}
