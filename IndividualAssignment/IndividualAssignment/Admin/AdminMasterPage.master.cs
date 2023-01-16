using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
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
                    if(rd[2].ToString() != "0")
                    {
                        Response.Redirect("../Login.aspx");
                    }
                    if (Session["userName"] == null)
                    {
                        Session["userName"] = rd[1].ToString();
                    }
                    
                }
            }

            lbUser.Text = Session["userName"].ToString();

        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
    }

    protected void lbLogInOut_Click(object sender, EventArgs e)
    {
        
            Session.Abandon();
            Response.Redirect("../Login.aspx");
        
    }
}
