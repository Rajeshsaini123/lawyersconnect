using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class myMessages : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection("server=127.0.0.1;user=root;database=new_schema;password=kataria@1996;");

        protected void Page_Load(object sender, EventArgs e)
        {
            int msgTo = Convert.ToInt32(Session["id"]);
            if (msgTo == 0)
            {
                Session["login"] = "0";
                Response.Redirect("~/login.aspx");
            }

            string msgString = "select concat(r.First_Name, '  ' , r.Last_Name) fname, r.email email, m.msg msg from messages m join register r  where m.msgTo = " + msgTo + " and m.msgFrom = r.id";
            MySqlCommand cmd = new MySqlCommand(msgString, conn);

            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if(dt.DataSet != null)
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["id"] = 0;
            Response.Redirect("~/login.aspx");
        }
    }
}