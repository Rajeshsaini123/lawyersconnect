using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection("server=127.0.0.1;user=root;database=new_schema;password=kataria@1996;");
        protected void Page_Load(object sender, EventArgs e)
        {
               try
                {
                    conn.Open();

                    string userNameId = Convert.ToString(Request["id"]);

                    string info = "select * from register where id = " + userNameId;
                    MySqlCommand cmd = new MySqlCommand(info, conn);


                    MySqlDataReader data = cmd.ExecuteReader();
                    while (data.Read())
                    {
                        Label1.Text = Convert.ToString(data["first_name"]);
                        Label1.Text = Convert.ToString(data["last_name"]);
                        Label2.Text = Convert.ToString(data["email"]);
                        Label3.Text = Convert.ToString(data["gender"]);
                        Label4.Text = Convert.ToString(data["password"]);
                        Label5.Text = Convert.ToString(data["days"]);
                        Label6.Text = Convert.ToString(data["type_of_lawyer"]);
                        Label7.Text = Convert.ToString(data["address"]);
                        Label8.Text = Convert.ToString(data["dsp"]);
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