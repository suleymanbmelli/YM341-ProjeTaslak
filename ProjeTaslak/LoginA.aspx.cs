using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProjeTaslak
{
    public partial class LoginA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-B7DRNID;Initial Catalog=deneme;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand kontrol = new SqlCommand("Select username,id from admin where username = @P1 AND password = @P2", baglan);
            kontrol.Parameters.AddWithValue("@P1", TextBox1.Text);
            kontrol.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader oku = kontrol.ExecuteReader();
            if (oku.Read())
            {
                int a = Convert.ToInt32(oku["id"]);
                string b = oku["username"].ToString();
                //int b = Convert.ToInt32(oku["admin_id"]);
                Response.Redirect("AdminIndex.aspx?kid=" + a + "&usr="+b);
            }
            else
            {
                Response.Write("Hatalı Veri Girişi!!");
            }
            baglan.Close();
        }
    }
}