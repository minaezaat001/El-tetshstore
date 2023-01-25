using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.comfirm
{
    public partial class Product_in_stock : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void gv()
        {
            GridView1.DataSource = dp.products.ToList();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gv();
        }
    }
}