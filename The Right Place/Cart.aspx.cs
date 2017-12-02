using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameLabel.Visible = false;

            // If user exists already, update page to show Reservations, if any
            if (Request.Cookies["UserData"] != null)
            {
                HeaderLabel.Text = "Your Reservations";

                HttpCookie userData = Request.Cookies["UserData"];
                nameLabel.Text = userData["FirstName"].ToString();

                string p1 = "select sum(Price) as 'Total Price' from Reservations r join Users u on r.UID = u.UID join Rooms ro on r.RID = ro.RID ";
                
                string p2 = "where u.FName = '";
                string p3 = nameLabel.Text + "';";

                string command = p1 + p2 + p3;

                // Update data source command
                TotalPriceGrabber.SelectCommand = command;
                
                DataView dv = new DataView();
                DataTable dt = new DataTable();

                dv = TotalPriceGrabber.Select(DataSourceSelectArguments.Empty) as DataView;
                dt = dv.ToTable();
                string total = dt.Rows[0]["Total Price"].ToString();

                TotalPrice.Text = "$" + total;

            } else
            {
                CartDataList.Visible = false;
            }
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            // Complete order
            Response.Redirect("Home.aspx");
        }
    }
}