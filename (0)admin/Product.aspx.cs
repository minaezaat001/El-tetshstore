using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class Product : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void gv() 
        {
            GridView1.DataSource = dp.products.ToList();
            GridView1.DataBind();
        }
        public void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
            gv();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            product mm = new product();
            mm.name = TextBox1.Text;
            mm.price = Convert.ToDecimal( TextBox2.Text);
            mm.qut = Convert.ToInt32( TextBox3.Text);
            dp.products.AddObject(mm);
            dp.SaveChanges();
            gv();
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button3.Visible = true;
            Button1.Visible = false;

            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
            Label4.Text = GridView1.SelectedRow.Cells[1].Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Label4.Text);

            var pro = (from u in dp.products
                       where u.id_product == x
                       select u).First();
            pro.name = TextBox1.Text;
            pro.price = Convert.ToInt32(TextBox2.Text);
            pro.qut = Convert.ToInt32( TextBox3.Text);
            dp.SaveChanges();
            gv();
            clear();
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int v = Convert.ToInt32(Label4.Text);
            var dele = (from x in dp.products
                        where x.id_product == v
                        select x).First();

            dp.DeleteObject(dele);
                dp.SaveChanges();
             clear();
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;

        }
    }
}