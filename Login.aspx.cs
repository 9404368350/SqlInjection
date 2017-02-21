using System;
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
using System.Collections.Generic;


public partial class _Default : System.Web.UI.Page 
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
                string query = "select count(*) from dbo.users where username='" + txtuser.Text + "' and passwd ='" + txtpass.Text + "'";
                 if (RadioButton1.Checked == true)
              {
                SqlCommand cmd = new SqlCommand(query, con);
                int cnt = int.Parse(cmd.ExecuteScalar().ToString());
                if (cnt > 0)
                {
                    Response.Redirect("adminhome.aspx");
                }
                else
                {
                    lbl_msg.Text = "Invalid Username or password";
                    
                }
              }
                 else
                 {
                     string en_user, en_pass, query2;
                     en_user = Random4 .encrypt (txtuser .Text);
                     en_pass = Random4 .encrypt(txtpass.Text);
                     query2 ="select count(*) from dbo.encrypt_users where username ='"+en_user +"' and password='"+en_pass+"'";
                     SqlCommand cmd2= new SqlCommand (query2 ,con);
                       int cnt = int.Parse(cmd2.ExecuteScalar().ToString());
                       if (cnt > 0)
                      {
                          Response.Redirect("adminhome.aspx");
                      }
                      else
                      {
                       lbl_msg.Text = "Invalid Username or password";
                       string ip = Random4.GetLanIPAddress();
                           string query3="insert into dbo.ip values('"+ip+"')";
                           SqlCommand cmd4 = new SqlCommand(query3, con);
                           cmd4.ExecuteNonQuery();
                      }
                  }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            con.Close();
        }
    }
 

