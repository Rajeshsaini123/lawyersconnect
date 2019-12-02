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
            int a = Convert.ToInt32(Session["id"]);
            if (a == 0)
            {
                Session["login"] = "0";
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
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
                        Label1.Text = Convert.ToString(data["first_name"]) + Convert.ToString(data["last_name"]);
                        Label2.Text = Convert.ToString(data["email"]);
                        Label3.Text = Convert.ToString(data["type_of_lawyer"]);
                        Label4.Text = Convert.ToString(data["dsp"]);
                        userID.Value = Convert.ToString(data["id"]);
                    }

                    conn.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string userToId = Convert.ToString(Request["id"]);
                String fromid= Session["id"].ToString();

                int a = Convert.ToInt32(Session["id"]);
                conn.Open();

                string insertSql = "insert into messages(msgFrom, msgTo, msg) value (@msgFrom, @msgTo, @msg)";

                MySqlCommand cmd = new MySqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@msg", msg.Text);
                cmd.Parameters.AddWithValue("@msgTo", userToId);
                cmd.Parameters.AddWithValue("@msgFrom", fromid);
                int loginRows = Convert.ToInt32(cmd.ExecuteNonQuery());

                msg.Text = string.Empty;

                if (loginRows == 1)
                    Label5.Text = "Message Sent";
                else
                    Label5.Text = "Something went wrong!!!";

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}