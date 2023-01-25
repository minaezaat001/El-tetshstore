using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.comfirm
{
    public partial class Confirmed_date : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void tirm2()
        {
            DateTime d1 = Convert.ToDateTime(TextBox1.Text);
            DateTime d2 = Convert.ToDateTime(TextBox2.Text).AddDays(1);

            var query = from n in dp.orders

                        where n.comfirm=="1" &&
                             (n.com_date >= d1 && n.com_date < d2)
                        select n;

            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        } 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;

            tirm2();


        }
    }
}