using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (fULogo.HasFile)
        {
            Guid obj = Guid.NewGuid();
            string imagePath = "Images/" + obj.ToString() + fULogo.FileName;
            fULogo.PostedFile.SaveAs(Server.MapPath("~/Images/") + obj.ToString() + fULogo.FileName);
            SqlConnection con = new SqlConnection(); ;

            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
                con.Open();
                var sql = "Insert into [Company](companyID, compName, country, logo, companyDecs, email) Values(@id, @name, @country, @logo, @desc, @email)";
                using (var cmd = new SqlCommand(sql, con))
                {

                    cmd.Parameters.AddWithValue("@id", txtId.Text);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@country", dDCountry.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@logo", imagePath);
                    cmd.Parameters.AddWithValue("@desc", txtDesc.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);



                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('New Company Created Successfully!');window.location = 'AddCompany.aspx';</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('Error Please try Again!');</script>");
                    }

                }
            }
            catch (SqlException ex)
            {

                Response.Write("<script>alert('Company Code Already Exist! Please Enter Another.');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error Saving Record! Please Try Later!');</script>");
            }
            finally
            {
                con.Close();
            }
        }
        else Response.Write("<script>alert('Please Select an Image');</script>");
    }
}