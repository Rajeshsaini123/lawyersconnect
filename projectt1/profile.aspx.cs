using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class WebForm1 : System.Web.UI.Page
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
            if (!IsPostBack) { 
                try
                {
                    conn.Open();

                    string login = "select address,dsp from register where id = " + a;
                    MySqlCommand cmd = new MySqlCommand(login, conn);


                    MySqlDataReader data = cmd.ExecuteReader();
                    while (data.Read())
                    {
                        TextBox1.Text = Convert.ToString(data["address"]);
                        desc.Text = Convert.ToString(data["dsp"]);
                    }

                    conn.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string s = TextBox1.Text;

        }


        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {
       
                    String iddddd = Session["id"].ToString();
                    Console.WriteLine("==========================" + iddddd);
                    int a = Convert.ToInt32(Session["id"]);
                    conn.Open();



                    string insertSql = "update register set address = @address, dsp = @description where id = " + a;

                    MySqlCommand cmd = new MySqlCommand(insertSql, conn);
                    cmd.Parameters.AddWithValue("@address", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@description", desc.Text);
                    int loginRows = Convert.ToInt32(cmd.ExecuteNonQuery());

                    if (loginRows == 1)
                        Label1.Text = "Update successful!!!";
                    else
                        Label1.Text = "Something went wrong!!!";

                    conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}