using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje2net
{
    public partial class Veriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet12TableAdapters.TBLADMINTableAdapter dt = new DataSet12TableAdapters.TBLADMINTableAdapter();
            Repeater1.DataSource = dt.AdminListesi();
            Repeater1.DataBind();
        }
    }
}