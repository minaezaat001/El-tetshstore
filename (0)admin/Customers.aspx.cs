using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class Customers : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void get() 
        {
            var w = from k in dp.orders
                    where k.cust_name == TextBox1.Text
                    select k;
            GridView1.DataSource = w.ToList();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            get();
        }
    }
}