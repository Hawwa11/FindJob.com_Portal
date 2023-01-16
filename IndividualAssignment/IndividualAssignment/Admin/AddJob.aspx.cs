using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddJob : System.Web.UI.Page
{
    String jType = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DateTime time = DateTime.Now;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
        try
        {
            con.Open();
            var sql = "Insert into [Job](title, description, companyID, postedDate, jobType, salary, requirements, experience) " +
                "Values(@tt, @desc, @cID, @pd, @jt, @sal, @req, @exp)";
            using (var cmd = new SqlCommand(sql, con))
            {

                cmd.Parameters.AddWithValue("@tt", txtTitle.Text);
                cmd.Parameters.AddWithValue("@desc", txtDesc.Text);
                cmd.Parameters.AddWithValue("@cID", ddComID.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@pd", time.ToString("yyyy-MM-dd"));
                cmd.Parameters.AddWithValue("@jt", rbType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@sal", Double.Parse(txtSalary.Text));
                cmd.Parameters.AddWithValue("@req", txtReq.Text);
                cmd.Parameters.AddWithValue("@exp", int.Parse(txtExp.Text));



                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('New Job Post Created Successfully!');window.location = 'AddJob.aspx';</script>");

                }
                else
                {
                    Response.Write("<script>alert('Error Please try Again!');</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error Please try Again!');</script>");
        }
        finally
        {
            con.Close();
        }
          

        }

   
}