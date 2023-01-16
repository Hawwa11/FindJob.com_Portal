using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {

            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();


            con.Open();

            var sql = "INSERT INTO [User](userName, userRole, fullName, pass, mobileNo, email, address, dob) VALUES(@uN, @uR, @fN, @pass, @mN, @email, @add, @dob)";
            using (var cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@uN", txtUserName.Text);
                cmd.Parameters.AddWithValue("@uR", 1);
                cmd.Parameters.AddWithValue("@fN", txtfName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                cmd.Parameters.AddWithValue("@mN", txtMobile.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@add", txtAddress.Text);
                cmd.Parameters.AddWithValue("@dob", txtDob.Text);

            
                int i = cmd.ExecuteNonQuery();

                if (i != 0)
                {
                
                    Response.Write("<script>alert('User registered successfully!');window.location = '../Login.aspx';</script>");

                }
                else
                {
                    Response.Write("<script>alert('Sorry Registration Failed! Please Try Later!');</script>");

                }
            }
        }
        catch (SqlException ex)
        {

            Response.Write("<script>alert('Username Already Exist! Please Try Another.');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Sorry Registration Failed! Please Try Later!');</script>");
        }
        finally
        {
            con.Close();
        }

    }
    
       
   
}