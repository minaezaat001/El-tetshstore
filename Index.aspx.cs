using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace store
{

    public partial class Index : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void log() 
        {
            var lo = dp.users.FirstOrDefault(x => x.username   == TextBox1.Text);
            if (lo.kind=="Admin")
            {
                Response.Redirect("(0)admin/Admin.aspx");
            }

            else if (lo.kind == "Order taker")
            {
                Response.Redirect("order_taker/Test.aspx");
            }
            else if (lo.kind == "Comfermation")
            {
                Response.Redirect("comfirm/non-Confirmed.aspx");
            }
            else 
            {
                Label1.Text = "Username or passworssd is wrong";
            }
        }

        public void logdate() 
        {
            DateTime dd = DateTime.Now;
            string name = Session["username"].ToString();
            Login lof = new Login();
            lof.username = name;
            lof.time = dd;
            dp.Logins.AddObject(lof);
            dp.SaveChanges();

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            storeEntities dp = new storeEntities();
           
            user m =new user ();

            var select = from st in dp.users where st.username == TextBox1.Text && st.npassword == TextBox2.Text select st;
          
            
            //GridView1.DataBind();

            Session["username"] = TextBox1.Text;

            
            if (select.Any())
            {
                logdate();
                log();

               

            }
            else 
            {
                Label1.Text = "Username or password is wrong";
            }
            
            
        }
    }
}