using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectt1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection("server=127.0.0.1;user=root;database=new_schema;password=kataria@1996;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();

                string insertQuery = "insert into register(First_Name,Last_Name,Email,Password,Gender,Days,Month,Year,Type_Of_Lawyer) values (@First_Name,@Last_Name,@Email,@Password,Gender, @Day, @Month, @Year, @Type_Of_Lawyer)";
                MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@First_Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Last_Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Month", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Day", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@Year", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@Gender", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@Type_Of_Lawyer", DropDownList5.SelectedValue);


                cmd.ExecuteNonQuery();

                Label9.Text = "Registeration Successful";


                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }


        }
    }
}