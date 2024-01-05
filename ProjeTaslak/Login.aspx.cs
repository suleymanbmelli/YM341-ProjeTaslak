using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Threading;

namespace ProjeTaslak
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-B7DRNID;Initial Catalog=deneme;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand kontrol = new SqlCommand("Select id,admin_id,username from kullanici where username = @P1 AND password = @P2", baglan);
            kontrol.Parameters.AddWithValue("@P1", TextBox1.Text);
            kontrol.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader oku = kontrol.ExecuteReader();
            if (oku.Read())
            {
                int a = Convert.ToInt32(oku["id"]);
                int b = Convert.ToInt32(oku["admin_id"]);
                string c = oku["username"].ToString();
                Response.Redirect("WebForm1.aspx?kid=" + a + "&aid="+ b +"&usr="+c); ;
            }
            else
            {
                Response.Write("Hatalı Veri Girişi!!");
            }
            baglan.Close();
        }
    }
}