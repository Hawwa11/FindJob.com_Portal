using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            con.Open();

        SqlCommand command = new SqlCommand();
        command.CommandText = "Select * from [User] where userName = @userName and pass = @pass";
        command.Parameters.AddWithValue("@userName", txtUserName.Text);
        command.Parameters.AddWithValue("@pass", txtPass.Text);
        command.Connection = con;
        SqlDataReader rd = command.ExecuteReader();

        if (rd.HasRows)
        {
            while(rd.Read())
            {
                
                Session["userName"] = rd[1].ToString();
                Response.Cookies["userId"].Value = rd[0].ToString();


                if (rd[2].ToString() == "1")
                {
                    Response.Redirect("User/HomePage.aspx");
                }
                else if (rd[2].ToString() == "0")
                    Response.Redirect("Admin/Dashboard.aspx");
                else
                    Response.Write("<script>alert('Incorrect Credentials!');window.location ='Login.aspx';</script>");
            }

        }
        else 
        {
            Response.Write("<script>alert('Incorrect Credentials!');</script>");
        }

            con.Close();
        }
   
}