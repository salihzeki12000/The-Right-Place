using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckReserv_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //look up reservation on database
            }
        }

        protected void searchForReservation_Click(object sender, EventArgs e)
        {
            // Use entered confirmation number to lookup reservations
            string conf = tbConfirmationNumber.Text;

            DataView dv = new DataView();
            DataTable dt = new DataTable();

            string select = "select FName from Users Join Reservations r on users.UID = r.UID where r.ConfNumber = '" + conf + "'";
            getNameSource.SelectCommand = select;

            dv = getNameSource.Select(DataSourceSelectArguments.Empty) as DataView;
            dt = dv.ToTable();
            string first = dt.Rows[0]["FName"].ToString();


            //if user data exists, pull up information, if not, create user data object and set first name (SQL search param)
            if (Request.Cookies["UserData"] != null)
            {
                HttpCookie userData = Request.Cookies["UserData"];
                userData["FirstName"] = first;

                Response.Redirect("Cart.aspx");
            } else
            {
                HttpCookie userData = new HttpCookie("UserData");
                userData["FirstName"] = first;
                Response.Cookies.Add(userData);

                Response.Redirect("Cart.aspx");
            }

        }
    }
}