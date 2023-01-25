using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class rej_orders : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void get()
        {

            var gg = from v in dp.orders
                     where v.comfirm == "2" 
                     select v;
            GridView1.DataSource = gg;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            get();
        }
    }
}