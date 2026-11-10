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

    public partial class AdminDoctor : System.Web.UI.Page
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
            txtspecial.Text = "";
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("Select * from doctor", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("Select * from doctor where Id = '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            drpdept.SelectedValue = ds.Tables[0].Rows[0]["C_Department"].ToString();
            drpdoc.SelectedValue = ds.Tables[0].Rows[0]["S_Doctor"].ToString();
            txtname.Text = ds.Tables[0].Rows[0]["D_Name"].ToString();
            txtspecial.Text = ds.Tables[0].Rows[0]["Specialization"].ToString();
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

                cmd = new SqlCommand("insert into doctor([C_Department],[S_Doctor],[D_Name],[Specialization]) values('" + drpdept.SelectedValue + "','" + drpdoc.SelectedValue + "','" + txtname.Text + "','" + txtspecial.Text + "')", con);
                cmd.ExecuteNonQuery();

                Label1.Text = "Doctor Saved Successfully!";
            }
            else
            {
                getcon();

                cmd = new SqlCommand("update doctor set [C_Department] = '" + drpdept.SelectedValue + "',[S_Doctor] = '" + drpdoc.SelectedValue + "',[D_Name] = '" + txtname.Text + "',[Specialization] = '" + txtspecial.Text + "' where Id = '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();

                Button1.Text = "Save";
                Label1.Text = "Doctor Updated Successfully!";
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

                cmd = new SqlCommand("Delete from doctor where Id = '" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();

                Label1.Text = "Doctor Deleted Successfully!";
                Label1.ForeColor = Color.Green;
            }
        }
    }
}
