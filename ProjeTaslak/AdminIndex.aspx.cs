using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTaslak
{
    public partial class AdminIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kulid = Request.QueryString["kid"].ToString();
            string kulad = Request.QueryString["usr"].ToString();
            Label1.Text = kulid;
            Label7.Text = kulad;
            Label6.Text = "Hoşgeldin  " + kulad;
            DataSet1TableAdapters.etkinlikTableAdapter dt = new DataSet1TableAdapters.etkinlikTableAdapter();
            Repeater1.DataSource = dt.EtkinlikKullanici(kulid);
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime tarih = new DateTime();

            DataSet1TableAdapters.etkinlikTableAdapter dt = new DataSet1TableAdapters.etkinlikTableAdapter();
            dt.EtkinlikEkle(Label1.Text,TextBox2.Text,TextBox3.Text,TextBox4.Text,TextBox5.Text);
            string a = Label1.Text;
            DataSet1TableAdapters.etkinlikTableAdapter t = new DataSet1TableAdapters.etkinlikTableAdapter();
            Repeater1.DataSource = t.EtkinlikKullanici(a);
            Repeater1.DataBind();
        }
    }
}