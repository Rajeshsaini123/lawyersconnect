using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class WebForm5 : System.Web.UI.Page
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

            string msgString = "select concat(First_Name, '  ' , Last_Name) fName, Type_Of_Lawyer, id from register where id != " + msgTo;
            MySqlCommand cmd = new MySqlCommand(msgString, conn);

            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (dt.DataSet != null)
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["id"] = 0;
            Response.Redirect("~/login.aspx");
        }
    }
}