using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Data;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void lbFile_Click(object sender, EventArgs e)
    {

        int rowIndex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
        Label fileLocation = (Label)GridView2.Rows[rowIndex].FindControl("lbpath");
       
        string FilePath = Server.MapPath("../" + fileLocation.Text);
        WebClient User = new WebClient();
        Byte[] FileBuffer = User.DownloadData(FilePath);
        if (FileBuffer != null)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-length", FileBuffer.Length.ToString());
            Response.BinaryWrite(FileBuffer);

        }
    }
}