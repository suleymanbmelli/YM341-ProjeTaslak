using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTaslak
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataSet1TableAdapters.etkinlikTableAdapter dt = new DataSet1TableAdapters.etkinlikTableAdapter();
            Repeater1.DataSource = dt.EtkinlikTBL();
            Repeater1.DataBind();
        }
    }
}