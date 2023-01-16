using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_JobDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
    String jID;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con.Open();
        jID = Request.QueryString["jID"];
        SqlCommand command;
        SqlDataReader rd;
        if (Request.Cookies["userId"] != null)
        {
            String userID = Request.Cookies["userId"].Value.ToString();

            command = new SqlCommand("SELECT * FROM Application WHERE userID = '" + userID + "' and jobID = '" + jID + "'", con);
            rd = command.ExecuteReader();

            if (rd.HasRows)
            {
                btnApply.Text = "Applied";
            }
            else
            {
                btnApply.Text = "Apply Now";
            }
            rd.Close();
        }


         command = new SqlCommand("SELECT j.title, j.description, j.companyID, j.jobType, j.postedDate, j.salary, j.requirements, j.experience, c.compName, c.logo, c.country, c.companyDecs, c.email FROM Job j, Company c WHERE j.jobID = '" + jID + "' and j.companyID = c.companyID", con);
         rd = command.ExecuteReader();

        if (rd.HasRows)
        {
            while (rd.Read())
            {
                lblTitle.Text = rd[0].ToString();
                lblDesc.Text = rd[1].ToString();
                lblType.Text = rd[3].ToString();
                lblPostDate.Text = rd.GetDateTime(4).ToString("yyyy-MM-dd");
                lblSalary.Text = rd[5].ToString();
                lblReqs.Text = rd[6].ToString();
                lblExp.Text = rd[7].ToString();
                lblCompany.Text = rd[8].ToString();
                Image1.ImageUrl = "../" + rd[9].ToString();
                lblCountry.Text = rd[10].ToString();
                lblCompDesc.Text = rd[11].ToString();
                lblEmail.Text = rd[12].ToString();

            }
        }
        rd.Close();
    }


    protected void btnApply_Click(object sender, EventArgs e)
    {
        if (btnApply.Text == "Applied")
        {
            Response.Write("<script>alert('Already Applied To this Job!');</script>");
        }
        else
        {
            if (Session["userName"].ToString() != "")
            {

                jID = Request.QueryString["jID"];
                String userID = Request.Cookies["userId"].Value.ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
                con.Open();
                var sql = "Insert into [Application](jobID, userID, applyDate, status) Values(@jobID, @userID, @applyDate, @status)";
                using (var cmd = new SqlCommand(sql, con))
                {

                    cmd.Parameters.AddWithValue("@jobID", jID);
                    cmd.Parameters.AddWithValue("@userID", userID);
                    cmd.Parameters.AddWithValue("@applyDate", DateTime.Now.ToString("yyyy-MM-dd"));
                    cmd.Parameters.AddWithValue("@status", "New");




                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Applied to Job Successfully');window.location = 'JobDetails.aspx?jID=" + jID + "';</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('Error Please try Again!');</script>");
                    }
                    con.Close();


                }
            }
            else
            {
                Response.Write("<script>alert('Please Login to Apply for Job!');</script>");
            }
        }

    }

}