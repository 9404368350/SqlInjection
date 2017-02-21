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

public partial class Default2 : System.Web.UI.Page
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
            string en_user, en_pass;
            en_user = Random4.encrypt(txtuser.Text);
            en_pass = Random4.encrypt(txtpass.Text);
            con.Open();
            string query = "insert into dbo.register(fname,lname,username,passwd,accno,acctype,branch_name) values('" + fname.Text + "','" + Lname.Text + "','" + txtuser.Text + "','" + txtpass.Text + "','" + accno.Text + "','" + acctype.Text + "','" + Branchname.Text + "')";
            string query1 = "insert into dbo.users(username,passwd) values('"+txtuser .Text+"','"+txtpass .Text+"')";
            string query2 = "insert into dbo.encrypt_users(username,password) values('"+en_user +"','"+en_pass +"')";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        con.Close();
        Response.Redirect("Login.aspx");
    }
    
}
