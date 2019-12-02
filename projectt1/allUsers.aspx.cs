using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
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
            int a = Convert.ToInt32(Session["id"]);
            if (a == 0)
            {
                Session["login"] = "0";
                Response.Redirect("~/login.aspx");
            }
            
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["id"] = 0;
            Response.Redirect("~/login.aspx");
        }
    }
}