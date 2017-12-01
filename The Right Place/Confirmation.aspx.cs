using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class Confirmation : System.Web.UI.Page
    {
        string name;
        string type;
        string cap;
        string first;
        string last;
        string email;
        string phone;
        string date;

        bool dataIsSet = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserData"] != null && Request.Cookies["RoomData"] != null)
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

                    dataIsSet = true;

                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            string p1 = "insert into Users values (";
            string p2 = "'" + first + "',";
            string p3 = "'" + last + "',";
            string p4 = "'" + email + "',";
            string p5 = "'" + phone + "'";
            string p6 = ");";

            string command = p1 + p2 + p3 + p4 + p5 + p6;
            updateDataSource.InsertCommand = command;
            updateDataSource.Insert();

            string select = "select UID from Users where FName = '" + first + "' and LName = '" + last + "'";
            updateDataSource.SelectCommand = select;

            DataView dv = new DataView();
            DataTable dt = new DataTable();

            dv = updateDataSource.Select(DataSourceSelectArguments.Empty) as DataView;
            dt = dv.ToTable();

            string UID = dt.Rows[0]["UID"].ToString();

            Label1.Text = UID;

        }
    }
}