using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            availableRooms
        }

        protected void ConfirmReservation_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("ReservationConfirmation.aspx");
            }
        }
    }
}