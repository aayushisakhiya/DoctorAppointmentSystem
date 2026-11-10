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

    public partial class AdminUsers : System.Web.UI.Page
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
            txtnm.Text = "";
            rdbgen.ClearSelection();
            txteml.Text = "";
            drpct.ClearSelection();
            txtadd.Text = "";
            txtmbl.Text = "";
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("Select * from Register_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("Select * from Register_tbl where Id = '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtnm.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            txteml.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            drpct.SelectedValue = ds.Tables[0].Rows[0]["City"].ToString();
            txtadd.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            txtmbl.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
            if (ds.Tables[0].Rows[0]["Gender"].ToString() == "Male")
            {
                rdbgen.SelectedValue = "Male";
            }
            else
            {
                rdbgen.SelectedValue = "Female";
            }
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
            getcon();

            cmd = new SqlCommand("update Register_tbl set Name = '" + txtnm.Text + "',Gender = '" + rdbgen.SelectedValue + "',Email = '" + txteml.Text + "',City = '" + drpct.SelectedValue + "',Address = '" + txtadd.Text + "',Mobile = '" + txtmbl.Text + "' where Id = '" + ViewState["id"] + "'", con);
            cmd.ExecuteNonQuery();

            ClearForm();
            fillgrid();
            pnledit.Visible = false;

            Label1.Text = "User Updated Successfully!";
            Label1.ForeColor = Color.Green;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                pnledit.Visible = true;
                filldata();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                getcon();

                cmd = new SqlCommand("Delete from Register_tbl where Id = '" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();

                Label1.Text = "User Deleted Successfully!";
                Label1.ForeColor = Color.Green;
            }
        }
    }
}
