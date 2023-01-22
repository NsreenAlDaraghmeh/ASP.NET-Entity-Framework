using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task22._1._2023
{
    public partial class admin : System.Web.UI.Page
    {
        Entities1 db = new Entities1 ();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var q = (from pd in db.Cities
                     join od in db.Customers on pd.CityId equals od.CityId
                     select new
                     {
                         od.CustomerId,
                         od.CustomerName,
                         od.Age,
                         pd.City1,
                         od.Phone,
                         od.Email,
                         od.Photo,

                     }).ToList();

            GridView1.DataSource = q;
            GridView1.DataBind();
            var count=(from pd in db.Customers select pd).Count();
            Label1.Text = count.ToString();

            var ct =db.Customers.ToList();
            var av=Convert.ToInt32( ct.Average(c => c.Age));
            Label2.Text = av.ToString();

            var ma=ct.Max(c => c.Age);
            Label3.Text = ma.ToString();


        }



        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;

            var txt = TextBox7.Text;

            var search = (from pd in db.Cities
                          join od in db.Customers on pd.CityId equals od.CityId
                          where od.CustomerName.Contains(txt)
                          select new
                          {
                              od.CustomerId,
                              od.CustomerName,
                              od.Age,
                              pd.City1,
                              od.Phone,
                              od.Email,
                              od.Photo,

                          }).ToList();
            GridView2.DataSource = search;
            GridView2.DataBind();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            GridView1.Visible = false;

            var txt = TextBox6.Text;
            var txtid=Convert.ToInt32(txt);

            var search = (from pd in db.Cities
                          join od in db.Customers on pd.CityId equals od.CityId
                          where od.CustomerId.Equals(txtid)
                          select new
                          {
                              od.CustomerId,
                              od.CustomerName,
                              od.Age,
                              pd.City1,
                              od.Phone,
                              od.Email,
                              od.Photo,

                          }).ToList();
            GridView2.DataSource = search;
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateCustomer.aspx");
        }
    }

 
    }

