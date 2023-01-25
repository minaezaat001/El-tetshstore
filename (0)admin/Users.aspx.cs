using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store._0_admin
{
    public partial class Users : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();

        public void gv ()
        {
            
                GridView1.DataSource = dp.users.ToList();
                GridView1.DataBind();
        }
        public void clear() 
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                gv();
            
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;
            
           
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            user u = new user();
            u.name = TextBox1.Text;
            u.phone = TextBox2.Text;
            u.username = TextBox3.Text;
            u.npassword = TextBox4.Text;
            u.kind = DropDownList1.SelectedValue;
            dp.users.AddObject(u);
            dp.SaveChanges();
           

            gv();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button3.Visible= true;
            Button1.Visible = false;
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            Label7.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[5].ToString(); ;
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Label7.Text);
            var uuser = (from u in dp.users
                        where u.userid == x
                        select u).First();

            uuser.name = TextBox1.Text;
            uuser.phone = TextBox2.Text;
            uuser.username = TextBox3.Text;
            uuser.npassword = TextBox4.Text;
            uuser.kind = DropDownList1.SelectedValue;

            dp.SaveChanges();
            gv();

            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
            clear();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            int l = Convert.ToInt16(Label7.Text);
            var duser = (from i in dp.users
                         where i.userid == l
                         select i).First();

            dp.DeleteObject(duser);
            dp.SaveChanges();
            gv();

            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
            clear();

        }
        
    }
}