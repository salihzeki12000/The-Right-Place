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
        string selectedDate;
        HttpCookie roomData = new HttpCookie("RoomData");

        protected void Page_Load(object sender, EventArgs e)
        {
            availableRooms.SelectCommand = "";
        }

        protected void tbDate_TextChanged(object sender, EventArgs e)
        {
            lblAvailableRooms.Text = tbDate.Text;
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

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
    
                //Begin search for available days
                selectedDate = tbDate.Text;
                lblAvailableRooms.Text = selectedDate;
               
                string command = "SELECT DISTINCT Rooms.RID, Rooms.capacity, Rooms.RoomType, Rooms.RoomName FROM Rooms LEFT JOIN Reservations AS r ON Rooms.RID = r.RID WHERE (r.ResDate <> '" + selectedDate + "') OR (r.ResDate IS NULL)";
                availableRooms.SelectCommand = command;

                // Bind found data to source
                roomsList.DataSourceID = "";
                roomsList.DataSource = availableRooms;
                roomsList.DataBind();
                
            }
        }

        protected void roomsList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // Get data to set in cookie
            roomsList.SelectedIndex = e.Item.ItemIndex;
            string name = ((Label)roomsList.SelectedItem.FindControl("RoomNameLabel")).Text;
            string type = ((Label)roomsList.SelectedItem.FindControl("RoomTypeLabel")).Text;
            string capacity = ((Label)roomsList.SelectedItem.FindControl("capacityLabel")).Text;
            
            roomData.Values["RoomName"] = name;
            roomData.Values["RoomType"] = type;
            roomData.Values["Capacity"] = capacity;
            roomData.Values["ResDate"] = lblAvailableRooms.Text;
            roomData.Expires = DateTime.Now.AddMinutes(5.0);

            Response.Cookies.Add(roomData);
            
            Response.Redirect("Registration.aspx");

        }
    }

}