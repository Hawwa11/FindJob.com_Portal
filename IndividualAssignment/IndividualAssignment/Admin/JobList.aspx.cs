using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_JobList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();

        TableCell jobID = GridView2.Rows[e.RowIndex].Cells[0];

        SqlCommand command = new SqlCommand("SELECT * FROM Application WHERE jobID = '" + jobID.Text + "'", con);
        SqlDataReader rd = command.ExecuteReader();
        if (rd.HasRows)
        {
            Response.Write("<script>alert('Error! Job Cannot be Deleted As Its Used in an Application Record.');</script>");
            e.Cancel = true;
        }
    }
}