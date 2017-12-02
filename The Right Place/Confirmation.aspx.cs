using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Confirmation : System.Web.UI.Page
    {
        static string name;
        static string type;
        static string cap;
        static string first;
        static string last;
        static string email;
        static string phone;
        static string date;
        static string price;

        bool dataIsSet = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            done.Visible = false;
            ConfWarning.Visible = false;

            if (!IsPostBack)
            {
                HttpCookie roomData = Request.Cookies["RoomData"];
                HttpCookie userData = Request.Cookies["UserData"];

                name = roomData["RoomName"];
                type = roomData["RoomType"];
                cap = roomData["Capacity"];
                date = roomData["ResDate"];

                first = userData["FirstName"];
                last = userData["LastName"];
                email = userData["EmailAddress"];
                phone = userData["PhoneNumber"];


                FullName.Text = first + " " + last;
                EmailAdd.Text = email;
                PhoneNum.Text = phone;

                RoomName.Text = name;
                RoomType.Text = type;
                Capacity.Text = cap;
                ResDate.Text = date;

                
                switch (RoomType.Text)
                {
                    case "Board Room":
                        price = "100";
                        priceLabel.Text = "$" + price + " / Day";
                        return;
                    case "Presentation Room":
                        priceLabel.Text = "$" + price + " / Day";
                        price = "250";
                        return;
                    case "Banquet Hall":
                        price = "500";
                        priceLabel.Text = "$" + price + " / Day";
                        return;
                    case "Auditorium":
                        price = "1,000";
                        priceLabel.Text = "$" + price + " / Day";
                        return;
                    case "Ballroom":
                        price = "3,000";
                        priceLabel.Text = "$" + price + " / Day";
                        return;
                    case "Court Yard":
                        price = "2,500";
                        priceLabel.Text = "$" + price + " / Day";
                        return;
                }
                
               
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            string p1 = "insert into Users values (";
            string p2 = "'" + first + "', ";
            string p3 = "'" + last + "', ";
            string p4 = "'" + phone + "', ";
            string p5 = "'" + email + "'";
            string p6 = ");";

            string command = p1 + p2 + p3 + p4 + p5 + p6;
            updateDataSource.InsertCommand = command;
            updateDataSource.Insert();

            DataView dv = new DataView();
            DataTable dt = new DataTable();

            string select = "select UID from Users where FName = '" + first + "' and LName = '" + last + "'";
            updateDataSource.SelectCommand = select;

            dv = updateDataSource.Select(DataSourceSelectArguments.Empty) as DataView;
            dt = dv.ToTable();
            string UID = dt.Rows[0]["UID"].ToString();

            string selectRoom = "select RID from Rooms where RoomName = '" + name + "';";
            updateDataSource.SelectCommand = selectRoom;

            dv = updateDataSource.Select(DataSourceSelectArguments.Empty) as DataView;
            dt = dv.ToTable();
            string RID = dt.Rows[0]["RID"].ToString();

            Random rnd = new Random();
            int rand1 = rnd.Next(100, 1000);
            string conf = getConfirmation() + Convert.ToString(rand1);

            ConfNumber.Text = "Confirmation Number: " + conf;

            string tmpPrice = price;
            if (price.Contains(","))
            {
                tmpPrice = price.Replace(",", "");
            }

            string i1 = "insert into Reservations values (";
            string i2 = "'" + conf + "', ";
            string i3 = UID + ", ";
            string i4 = RID + ", ";
            string i5 = "'" + date.ToString() + "', ";
            string i6 = tmpPrice;
            string i7 = ");";

            string insertCMD = i1 + i2 + i3 + i4 + i5 + i6 + i7;
            updateDataSource.InsertCommand = insertCMD;
            updateDataSource.Insert();

            submit.Enabled = false;
            done.Visible = true;
            ConfWarning.Visible = true;
            
        }

        public string getConfirmation()
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            var stringChars = new char[3];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            return finalString;
        }

        protected void done_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}