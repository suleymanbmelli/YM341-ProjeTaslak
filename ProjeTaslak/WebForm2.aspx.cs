using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTaslak
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = DateTime.Now.ToString();
            string trh = "29.06.2000";
            string trhc = trh[0].ToString() + trh[1].ToString();
            TextBox1.Text = trhc;
        }
    }
}