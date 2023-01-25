using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.comfirm
{
    public partial class comfermation : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void get()
        {

            DateTime startDate = DateTime.Today;
            DateTime endDate = DateTime.Today.AddDays(1);
            
            var gg = from v in dp.orders
                     where v.comfirm == "1" && (v.com_date >= startDate && v.com_date < endDate)
                     select v;
            GridView1.DataSource = gg;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            get();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}