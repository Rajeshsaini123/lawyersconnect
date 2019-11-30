using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text =="" || TextBox2.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Please entert Username or password')", true);
            }
            else
            {
                try
                {
                    string connStr = "server=127.0.0.1;user=root;database=new_schema;password=kataria@1996;";
                    MySqlConnection conn = new MySqlConnection(connStr);
                    conn.Open();

                    string login = "select id from register where Email = @Email and Password = @Password";
                    MySqlCommand cmd = new MySqlCommand(login, conn);
                    cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                    int id = Convert.ToInt32(cmd.ExecuteScalar());
                    if (id != 0)
                    {
                        Session["id"] = id;
                        Response.Redirect("~/profile.aspx");
                    }
                    else
                    {
                        Label3.Text = "Wrong username or password";
                    }
                    conn.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
            


        }
    }
}