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
        public double selectedDate;
        public int numberOfGuests;

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
                int day = Convert.ToInt32(tbDate.Text.Substring(0, 2));
                int month = Convert.ToInt32(tbDate.Text.Substring(3, 2));
                int year = Convert.ToInt32(tbDate.Text.Substring(6, 4));
                DateTime date = new DateTime(year, month, day);

                selectedDate = ConvertToUnixTimestamp(date);

                if (Convert.ToInt32(tbGuestTotal.Text) > 0)
                {
                    numberOfGuests = Convert.ToInt32(tbGuestTotal.Text);
                }


                
                Response.Redirect("SearchResults.aspx");
            }
        }

        public static DateTime ConvertFromUnixTimestamp(double timestamp)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            return origin.AddSeconds(timestamp);
        }

        public static double ConvertToUnixTimestamp(DateTime date)
        {
            DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            TimeSpan diff = date.ToUniversalTime() - origin;
            return Math.Floor(diff.TotalSeconds);
        }
    }

}