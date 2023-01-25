using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            DateTime startDate = DateTime.Today;
            DateTime endDate = DateTime.Today.AddDays(1);

            var query = from n in dp.Logins

                        where
                             (n.time >= startDate && n.time < endDate)
                        select n;

            GridView1.DataSource = query.ToList();
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                        
                        

        }
    }
}