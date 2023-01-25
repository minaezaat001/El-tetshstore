using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace store.comfirm
{
    public partial class Non_Confirmed : System.Web.UI.Page
    {
        storeEntities dp = new storeEntities();
        public void get() 
        {
            var gg = from v in dp.orders
                     where v.comfirm == null
                     select v;
            GridView1.DataSource = gg;
            GridView1.DataBind();
        }

        public void don() 
        {
            int id = Convert.ToInt16(GridView1.SelectedRow.Cells[1].Text);
            DateTime da = DateTime.Today; 

           var dd = (from c in dp.orders
                     where c.ID == id
                    select c).First();
           dd.com_date = da;
           dd.comfirm = "1";
           dd.transcost = Convert.ToInt16( TextBox2.Text);
           dd.ftotal = Convert.ToInt32(TextBox3.Text);
           dp.SaveChanges();

           
        }
        public void dono() 
        {
            int id2 = Convert.ToInt16(GridView1.SelectedRow.Cells[1].Text);
            

            var dd = (from c in dp.orders
                      where c.ID == id2
                      select c).First();
            DateTime da = DateTime.Today; 
            dd.com_date = da;
            dd.comfirm = "2";
            dd.note2 = TextBox1.Text;
            
            dp.SaveChanges();


        }
        public void updatestock()
        {
            string ds = GridView1.SelectedRow.Cells[6].Text;
            string y = GridView1.SelectedRow.Cells[8].Text;

            int w = Convert.ToInt32(y);
            var kok = (from d in dp.products
                       where d.name == ds
                       select d).First();
            kok.qut = kok.qut - w;

            dp.SaveChanges();




        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            get();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Label1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[9].Text;
            TextBox3.Text=GridView1.SelectedRow.Cells[10].Text;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dono();
            get();
            TextBox1.Text = "";
            Label1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updatestock();
            don();
            get();
            
            TextBox1.Text = "";
            Label1.Text = "";
        }
    }
}