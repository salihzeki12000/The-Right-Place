using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Booking : System.Web.UI.Page
    {
        string currentDate = DateTime.Now.ToString();


        protected void Page_Load(object sender, EventArgs e)
        {
            tbDate.Text = currentDate;
        }

        protected void tbDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SubmitSearch_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("SearchResults.aspx");
            }
        }
    }

}