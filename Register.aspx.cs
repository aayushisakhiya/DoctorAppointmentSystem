using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//new namespace
using System.Data.SqlClient;//for connection
using System.Data;//for DAta set
using System.Configuration;//for Connection String

namespace medinova_masterproject
{
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con;//for connection
        SqlCommand cmd;//for  insert,update,delete
        SqlDataAdapter da;//for container
        DataSet ds;//for select
        String fnm;//for file upload
                   // string S = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        string S = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\Administrator\\Downloads\\files (1)\\medinova-masterproject\\medinova-masterproject\\medinova-masterproject\\App_Data\\Database1.mdf\";Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            gridfill();

        }
        void getcon()
        {
            con = new SqlConnection(S);
            con.Open();
        }
        void gridfill()
        {
            getcon();
            da = new SqlDataAdapter("select*from Register_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        //void imageUpload()
        //{
        //  if (FileUpload1.HasFile) 
        //    { 
        //        fnm = "images/" + FileUpload1.FileName;
        //        FileUpload1.SaveAs(Server.MapPath(fnm)); 
        //    } 
        //    else 
        //    { 
        //        fnm = ""; 
        //    }
        //}

        void imageUpload()
        {
            if (FileUpload1.HasFile)
            {
                string folderPath = Server.MapPath("~/images/");

                if (!System.IO.Directory.Exists(folderPath))
                {
                    System.IO.Directory.CreateDirectory(folderPath);
                }

                string fileName = System.IO.Path.GetFileName(FileUpload1.FileName);

                fnm = "images/" + fileName;

                FileUpload1.SaveAs(System.IO.Path.Combine(folderPath, fileName));
            }
            else
            {
                fnm = "";
            }
        }



        void clear()
        {
            txtnm.Text = "";
            rdbgen.ClearSelection();
            txteml.Text = "";
            drpct.ClearSelection();
            txtadd.Text = "";
            txtmbl.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                getcon();
                gridfill();
                imageUpload();
                cmd = new SqlCommand("insert into Register_tbl(Name,Gender,Email,Password,City,Address,Mobile,Image)values('" + txtnm.Text + "','" + rdbgen.SelectedValue + "','" + txteml.Text + "','" + txtpass.Text + "','" + drpct.SelectedValue + "','" + txtadd.Text + "','" + txtmbl.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                //Insert
            }
            else
            {
                getcon();
                cmd = new SqlCommand("update Register_tbl set Name = '" + txtnm.Text + "',Gender = '" + rdbgen.SelectedValue + "',Email = '" + txteml.Text + "',Password = '" + txtpass.Text + "',City ='" + drpct.SelectedValue + "',Address = '" + txtadd.Text + "',Mobile = '" + txtmbl.Text + "'where Id ='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                gridfill();
                clear();
                Button1.Text = "Save";
            }

            if (!(String.IsNullOrEmpty(txtnm.Text)) && !(String.IsNullOrEmpty(txtpass.Text)))
            {
                cmd = new SqlCommand("Select Count(*)from Register_tbl" + "where Email='" + txtnm.Text + "'and" + "Password ='" + txtpass.Text + "'", con);
                int i = Convert.ToInt16(cmd.ExecuteScalar());

                if (i > 0)
                {
                    //Session["admin"] = txtpass.Text;
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("Invaild Email or Password");
                }
            }
        }

        protected void cmd_edt(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                filldata();//Paring
            }
            else
            {
                //Delete
                getcon();
                cmd = new SqlCommand("Delete from Register_tbl WHERE Id = '" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                gridfill();
                //Response.Write("Deleted Done.....");
            }
        }

        void filldata()
        {
            //Paring
            getcon();
            da = new SqlDataAdapter("Select *from Register_tbl where ID = '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
            txteml.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            txtpass.Text = ds.Tables[0].Rows[0][4].ToString();
            drpct.SelectedValue = ds.Tables[0].DataSet.Tables[0].Rows[0]["City"].ToString();
            txtadd.Text = ds.Tables[0].Rows[0][6].ToString();
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
    }
}
