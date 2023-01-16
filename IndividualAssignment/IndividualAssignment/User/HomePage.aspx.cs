using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class User_HomePage : System.Web.UI.Page
{
    StringBuilder sb = new StringBuilder(); 
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
    SqlCommand command;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
      
        command = new SqlCommand("SELECT j.jobID, j.title, j.jobType, j.salary, c.compName, c.logo, c.country FROM Job j, Company c WHERE j.companyID = c.companyID", con);
        rd = command.ExecuteReader();
        
        if (rd.HasRows)
        {
            while(rd.Read())
            {
                
                sb.Append("<div class='single-job-items mb-30 mx-auto'>");
                sb.Append("<div class='job-items'>");
                sb.Append("<div class='company-img'>");

                sb.Append("<a href='#'><img src='../"+ rd[5].ToString() + "' width='100'></a></div>");
                sb.Append("<div class='job-tittle job-tittle2'><a href='#'>");
                sb.Append("<h4>"+ rd[1].ToString() + "</h4></a>");

                sb.Append("<ul><li>"+ rd[4].ToString() + "</li>");
                sb.Append("<li><i class='fas fa-map-marker-alt'></i>" + rd[6].ToString() + "</li>");
                sb.Append("<li>" + rd[2].ToString() + "</li>");
                sb.Append("<li>$"+ rd[3].ToString() + "</li></ul></div></div>");

                sb.Append("<div class='items-link items-link2 f-right'><a href='JobDetails.aspx?jID="+ rd[0] +"'>View Details</a></div></div>");
               
            }

        }

        PlaceHolder1.Controls.Add(new Literal { Text = sb.ToString() });
        rd.Close();
    }

    

    
}