using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.order_taker
{
    public partial class Test : System.Web.UI.Page
    {
        public void clear() 
        {
            
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
        }


        storeEntities dp = new storeEntities();
        public void neworder()
        {
            
            order oo = new order();
          
            dp.orders.AddObject(oo);
            dp.SaveChanges();
            
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DropDownList2.DataSource = dp.products.ToList();
                DropDownList2.DataValueField = "name";
                DropDownList2.DataBind();
                DropDownList4.Enabled = false;
                
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            neworder();
            
            clear();
            
        }

       

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "aramex")
            {
                DropDownList4.Enabled = true;

            }

            else { DropDownList4.Enabled = false; }
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a = DropDownList2.SelectedValue;
            var lo = dp.products.FirstOrDefault(x => x.name == a);

            TextBox4.Text = lo.price.Value.ToString();
            TextBox10.Text = lo.price.Value.ToString();
        }

        protected void DropDownList2_TextChanged(object sender, EventArgs e)
        { 
          
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int xa =  Convert.ToInt32( TextBox4.Text);
            int y =   Convert.ToInt32 (DropDownList4.SelectedValue);
            string a = DropDownList2.SelectedValue;
            var lo = dp.products.FirstOrDefault(x => x.name == a);
            int xx = Convert.ToInt32(lo.price.Value);
            int yy = Convert.ToInt32(DropDownList1.SelectedValue);

            int zzz = xx * yy;
            int da = Convert.ToInt32(TextBox4.Text);
            //TextBox4.Text = (zzz).ToString();

            TextBox4.Text = (zzz+ y).ToString();
        } 

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a = DropDownList2.SelectedValue;
            var lo = dp.products.FirstOrDefault(x => x.name == a);
            int xx = Convert.ToInt32(lo.price.Value);
                int yy = Convert.ToInt32(DropDownList1.SelectedValue);

                  int zzz = xx * yy;
                int da = Convert.ToInt32(TextBox4.Text);
                TextBox4.Text = (zzz).ToString();
        }
    }
}