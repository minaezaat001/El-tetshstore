using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class Login_name : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string na= TextBox1.Text;
           var q = from s in dp.Logins
                   where s.username == na
                   select s;
           GridView1.DataSource = q;
           GridView1.DataBind();

        }
    }
}