using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = LENOVO\\SQLEXPRESS; Initial Catalog = userregcs; Integrated Security = True") ;
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Register" + "(Fname,Lname,Email,Gender,Address,Phone,Password) values (@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password)", con);
            cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
            cmd.ExecuteNonQuery(); 
            con.Close();
            Label1.Text = "Registered Successfully";
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
    
    
    
    
    
    
