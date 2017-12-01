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
        string RoomName;
        string RoomType;
        string Capacity;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string first = FirstName.Text;
                string last = LastName.Text;
                string email = Email.Text;
                string phone = Phone.Text;

                //Session["first"] = first;
                //Session["last"] = last;
                //Session["email"] = email;
                //Session["phone"] = phone;

                HttpCookie userData = new HttpCookie("UserData");
                userData.Values["FirstName"] = first;
                userData.Values["LastName"] = last;
                userData.Values["EmailAddress"] = email;
                userData.Values["PhoneNumber"] = phone;
                userData.Expires = DateTime.Now.AddMinutes(5.0);

                Response.Cookies.Add(userData);
                
                Response.Redirect("Confirmation.aspx");

            }
        }
    }
}