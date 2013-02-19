using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Response.Write(Request.UserAgent + "<br>");
        Response.Write(Request.UserHostAddress + "<br>");
        Response.Write(Request.UserLanguages[0] + "<br>");
        Response.Write(Request.Browser.Browser + "<br>");
        Response.Write(Request.Browser.IsMobileDevice + "<br>");
        Response.Write(Request.Browser.Version + "<br>");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["apuConnectionString"].ToString()))
        {
            SqlCommand cmd = new SqlCommand("SELECT count(*) FROM PublicacionWeb", cn);
            cn.Open();
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            rdr.Read();
            Response.Write(rdr[0].ToString()); //read a value
        }
    }
}
