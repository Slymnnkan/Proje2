using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje2net
{
    public partial class SilmeSayfası : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet12TableAdapters.TBLADMINTableAdapter dt = new DataSet12TableAdapters.TBLADMINTableAdapter();
            dt.Kisisil(x);
            Response.Redirect("Veriler.Aspx");
        }
    }
}