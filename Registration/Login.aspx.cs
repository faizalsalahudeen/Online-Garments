using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Registration
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = true;
            HyperLink1.Visible = false;
            
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = LENOVO\\SQLEXPRESS; Initial Catalog = userregcs; Integrated Security = True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from register where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text +"'",con );
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                
                Session["username"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                Button2.Visible = true;
                HyperLink1.Visible = false;
                ///Label1.Text = "Login Successfull!";
                //Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Login Unsuccessfull!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}