using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class User_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
    string userID;
    String path = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            btnUpdate.Text = "Edit";
            con.Open();
            userID = Request.Cookies["userId"].Value.ToString();

            SqlCommand command = new SqlCommand("SELECT * FROM [User] WHERE userID =" + userID, con);
            SqlDataReader rd = command.ExecuteReader();


            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    txtUserName.Text = rd[1].ToString();
                    txtfName.Text = rd[3].ToString();
                    txtMobile.Text = rd[5].ToString();
                    txtEmail.Text = rd[6].ToString();
                    txtAddress.Text = rd[7].ToString();
                    txtDob.Text = rd.GetDateTime(8).ToString("yyyy-MM-dd");
                    path = rd[9].ToString();

                }
            }
            rd.Close();
        }
        

    }

    protected void lbEditUpdate_Click(object sender, EventArgs e)
    {
        if (btnUpdate.Text == "Edit")
        {
            txtUserName.ReadOnly = false;
            txtfName.ReadOnly = false;
            txtMobile.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtAddress.ReadOnly = false;
            txtDob.ReadOnly = false;
            fUResume.Visible = true;
            lbFile.Visible = false;
            btnUpdate.Text = "Update";
       
        }
        else if (btnUpdate.Text == "Update")
        {
            con.Open();
            userID = Request.Cookies["userId"].Value.ToString();
            string resume = "";
            
            if (fUResume.HasFile)
             {
                 Guid obj = Guid.NewGuid();
                 resume = "Images/" + obj.ToString() + fUResume.FileName;
                 fUResume.PostedFile.SaveAs(Server.MapPath("~/Images/") + obj.ToString() + fUResume.FileName);
             }

                 SqlCommand command = new SqlCommand("UPDATE [User] SET userName = '" + txtUserName.Text + "', fullName = '" + txtfName.Text +
                 "', mobileNo = '" + txtMobile.Text + "', email = '" + txtEmail.Text + "', address = '" + txtAddress.Text + 
                 "', dob = '" + txtDob.Text + "', resume = '" + resume + "' Where userID = '" + userID + "'", con);
            int i = command.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Profile Updated Successfully');window.location = 'Profile.aspx';</script>");

            }
            else
            {
                Response.Write("<script>alert('Error Please try Again!');</script>");
            }
            con.Close();

           

        }
    }

    protected void lbFile_Click(object sender, EventArgs e)
    {
        con.Open();
        userID = Request.Cookies["userId"].Value.ToString();

        SqlCommand command = new SqlCommand("SELECT resume FROM [User] WHERE userID =" + userID, con);
        SqlDataReader rd = command.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                
                path = rd[0].ToString();

            }
        }
        rd.Close();

        if (path != "")
        {
            string fileLocation = path;
            string FilePath = Server.MapPath("../" + fileLocation);
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);

            }
        }
        else Response.Write("<script>alert('No Resume Uploaded Yet!');</script>");
    

}
}