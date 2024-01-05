using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTaslak
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kulid = Request.QueryString["kid"].ToString();
            string adid = Request.QueryString["aid"].ToString();
            string usrad = Request.QueryString["usr"].ToString();
            Label1.Text = "Hoşgeldiniz " + usrad + " Size Ait Etkinlikler";

            DataSet1TableAdapters.etkinlikTableAdapter dt = new DataSet1TableAdapters.etkinlikTableAdapter();
            Repeater1.DataSource = dt.EtkinlikKullanici(adid);
            Repeater1.DataBind();
        }
    }
}