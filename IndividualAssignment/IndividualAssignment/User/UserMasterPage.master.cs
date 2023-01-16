using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    string userID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userId"] != null)
        {
            userID = Request.Cookies["userId"].Value.ToString();

            

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            con.Open();

            SqlCommand command = new SqlCommand();
            command.CommandText = "Select * from [User] where userID='" + userID + "'";
            command.Connection = con;
            SqlDataReader rd = command.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {

                    if (rd[2].ToString() != "1")
                    {
                        btnRegPro.Text = "Register";
                        btnLog.Text = "Login";
                        imgUser.Visible = false;
                        lbUser.Text = "";
                        Session["userName"] = "";
                    }
                    else
                    {
                        btnRegPro.Text = "Profile";
                        btnLog.Text = "Logout";
                       
                        if (Session["userName"] == null)
                        {
                            Session["userName"] = rd[1].ToString();
                        }
                        lbUser.Text = Session["userName"].ToString();
                    }
                    

                   
                }
            }
           
        
       

        }
        else
        {
            btnRegPro.Text = "Register";
            btnLog.Text = "Login";
            imgUser.Visible = false;

        }

    }

    protected void lbRegProfile_Click(object sender, EventArgs e)
    {
        if(btnRegPro.Text == "Profile")
        {
            Response.Redirect("Profile.aspx");
        }
        else
        {
            Response.Redirect("Register.aspx");
        }

    }

    protected void lbLogInOut_Click(object sender, EventArgs e)
    {
        if (btnLog.Text == "Login")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            Session.Abandon();
            Response.Redirect("../Login.aspx");
        }
    }
}
