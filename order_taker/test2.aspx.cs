using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.order_taker
{
    public partial class test2 : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void get() 
        {
            DateTime startDate = DateTime.Today;
            DateTime endDate = DateTime.Today.AddDays(1);
            
            string name = Session["username"].ToString() ;
            var gg = from x in dp.orders
                     where x.agent_name == name && (x.orderdate >= startDate && x.orderdate < endDate)
                     select x;
            GridView1.DataSource = gg.ToList();
            GridView1.DataBind();

        }
        

            

        protected void Page_Load(object sender, EventArgs e)
        {

            get();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}