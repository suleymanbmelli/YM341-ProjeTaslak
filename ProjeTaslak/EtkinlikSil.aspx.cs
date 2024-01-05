using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTaslak
{
    public partial class EtkinlikSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            int y = Convert.ToInt32(Request.QueryString["kid"].ToString());
            string z = Request.QueryString["usr"].ToString();
            DataSet1TableAdapters.etkinlikTableAdapter dt = new DataSet1TableAdapters.etkinlikTableAdapter();
            dt.EtkinlikSil(x);
            Response.Redirect("AdminIndex.aspx?kid=" + y + "&usr="+z);
        }
    }
}