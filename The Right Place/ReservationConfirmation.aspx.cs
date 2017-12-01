using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class ReservationConfirmation : System.Web.UI.Page
    {
        string name;
        string type;
        string cap;
        string first;
        string last;
        string email;
        string phone;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["FirstName"] != null && Session["RoomName"] != null)
                {
                    name = Session["RoomName"].ToString();
                    type = Session["RoomType"].ToString();
                    cap = Session["Capacity"].ToString();

                    first = Session["first"].ToString();
                    last = Session["last"].ToString();
                    email = Session["email"].ToString();
                    phone = Session["phone"].ToString();

                    FullName.Text = first + " " + last;
                    Email.Text = email;
                    Phone.Text = phone;

                    Name.Text = name;
                    Type.Text = type;
                    Capacity.Text = cap;
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}