using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class param : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        try
        {

            con.Open();
            string query = "select count(*) from dbo.users where username= @uname and passwd =@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@uname", txtuser.Text));
            cmd.Parameters.Add(new SqlParameter("@pass", txtpass.Text));
            int cnt = int.Parse(cmd.ExecuteScalar().ToString());
            if (cnt > 0)
            {
                lbl_msg.Text = "Login successful";
            }
            else
            {
                lbl_msg.Text = "Invalid Username or password";
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
        con.Close();
    }
}
