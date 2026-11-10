using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace medinova_masterproject
{

    public partial class appointment : System.Web.UI.Page
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


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillgrid();
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into Appointment_tbl(Choose Department,Select Doctor,Your Name,Email,Password,Date,Time) values('" + drpdept.SelectedValue + "','" + drpdoc.SelectedValue + "','" + txtname.Text + "','" + txteml.Text + "','" + txtpass.Text + "','" + txtdate.Text + "','" + txttime.Text + "')", con);
            cmd.ExecuteNonQuery();
            ClearForm();
            fillgrid();

            Label1.Text = "Appointment Successfully Done!";
            Label1.ForeColor = Color.Green;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Find Doctor.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Read More.aspx");
        }

        protected void drpdoc_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}



//        //void Gridview()
//        //{
//        //    using (SqlConnection con = new SqlConnection(S))
//        //    {
//        //        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Appointment_tbl", con);
//        //        DataSet ds = new DataSet();
//        //        da.Fill(ds);
//        //        GridView1.DataSource = ds;
//        //        //GridView1.DataBind();
//        //    }
//        //}

//        void ClearForm()
//        {
//            drpdept.ClearSelection();
//            drpdoc.ClearSelection();
//            txtname.Text = "";
//            txteml.Text = "";
//            txtpass.Text = "";
//            txtdate.Text = "";
//            txttime.Text = "";
//            ViewState["EditId"] = null;
//            Button1.Text = "Save";
//        }

//        protected void btnSave_Click(object sender, EventArgs e)
//        {
//            if (!Page.IsValid)
//            {
//                return;
//            }

//            using (SqlConnection con = new SqlConnection(S))
//            {
//                con.Open();
//                SqlCommand cmd;

//                if (ViewState["EditId"] == null)
//                {
//                    // Insert new appointment
//                    cmd = new SqlCommand(
//                       "INSERT INTO Appointment_tbl ([Choose Department], [Select Doctor], [Your Name], [Email], [Password], [Date], [Time]) " +
//            "VALUES (@dept, @doc, @nm, @eml, @pass, @dt, @tm)", con);

//                }
//                else
//                {
//                    // Update existing appointment
//                    cmd = new SqlCommand(
//                        "UPDATE doctor SET s_department=@dept, s_doctor=@doc, Name=@nm, " +
//                        "Email=@eml, Date=@dt, Time=@tm WHERE Id=@id", con);
//                    cmd.Parameters.AddWithValue("@id", ViewState["EditId"]);
//                }

//                cmd.Parameters.AddWithValue("@dept", drpdept.SelectedValue);
//                cmd.Parameters.AddWithValue("@doc", drpdoc.SelectedValue);
//                cmd.Parameters.AddWithValue("@nm", txtname.Text.Trim());
//                cmd.Parameters.AddWithValue("@eml", txteml.Text.Trim());
//                cmd.Parameters.AddWithValue("@pass", txtpass.Text.Trim());
//                cmd.Parameters.AddWithValue("@dt", txtdate.Text.Trim());
//                cmd.Parameters.AddWithValue("@tm", txttime.Text.Trim());

//                cmd.ExecuteNonQuery();
//            }

//            lblMessage.Text = "Appointment saved successfully.";
//            lblMessage.CssClass = "d-block mt-3 text-center text-success";

//            ClearForm();
//            Gridview();
//        }

//        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
//        //{
//        //    int id = Convert.ToInt32(e.CommandArgument);

//        //    if (e.CommandName == "cmd_edt")
//        //    {
//        //        using (SqlConnection con = new SqlConnection(S))
//        //        {
//        //            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Apointment_tbl WHERE Id=@id", con);
//        //            da.SelectCommand.Parameters.AddWithValue("@id", id);
//        //            DataSet ds = new DataSet();
//        //            da.Fill(ds);

//        //            if (ds.Tables[0].Rows.Count > 0)
//        //            {
//        //                DataRow row = ds.Tables[0].Rows[0];
//        //                drpdept.SelectedValue = row["s_department"].ToString();
//        //                drpdoc.SelectedValue = row["s_doctor"].ToString();
//        //                txtname.Text = row["Name"].ToString();
//        //                txteml.Text = row["Email"].ToString();
//        //                txtpass.Text = row["Password"].ToString();
//        //                txtdate.Text = row["Date"].ToString();
//        //                txttime.Text = row["Time"].ToString();

//        //                ViewState["EditId"] = id;
//        //                Button1.Text = "Update";
//        //            }
//        //        }
//        //    }
//        //    else if (e.CommandName == "cmd_delete")
//        //    {
//        //        using (SqlConnection con = new SqlConnection(S))
//        //        {
//        //            con.Open();
//        //            SqlCommand cmd = new SqlCommand("DELETE FROM Apointment_tbl WHERE Id=@id", con);
//        //            cmd.Parameters.AddWithValue("@id", id);
//        //            cmd.ExecuteNonQuery();
//        //        }

//        //        lblMessage.Text = "Appointment deleted.";
//        //        lblMessage.CssClass = "d-block mt-3 text-center text-warning";
//        //        Gridview();
//        //    }
//        //}

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            if (!Page.IsValid)
//            {
//                return;
//            }

//            using (SqlConnection con = new SqlConnection(S))
//            {
//                con.Open();

//                SqlCommand cmd = new SqlCommand(
//                    "INSERT INTO Appointment_tbl ([Choose Department], [Select Doctor], [Your Name], [Email], [Password], [Date], [Time]) " +
//                    "VALUES (@dept, @doc, @nm, @eml, @pass, @dt, @tm)", con);

//                cmd.Parameters.AddWithValue("@dept", drpdept.SelectedValue);
//                cmd.Parameters.AddWithValue("@doc", drpdoc.SelectedValue);
//                cmd.Parameters.AddWithValue("@nm", txtname.Text.Trim());
//                cmd.Parameters.AddWithValue("@eml", txteml.Text.Trim());
//                cmd.Parameters.AddWithValue("@pass", txtpass.Text.Trim());
//                cmd.Parameters.AddWithValue("@dt", txtdate.Text.Trim());
//                cmd.Parameters.AddWithValue("@tm", txttime.Text.Trim());

//                cmd.ExecuteNonQuery();
//            }

//            Label1.Text = "Appointment Successfully Done!";
//            Label1.CssClass = "d-block mt-3 text-center text-success";

//            ClearForm();
//        }
//    }
//}