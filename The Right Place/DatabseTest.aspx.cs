using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Right_Place
{
    public partial class DatabseTest : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                tbEmail.CssClass = "alert alert-success form-control";
                tbFirstName.CssClass = "alert alert-success form-control";
                tbLastName.CssClass = "alert alert-success form-control";
                peopleList.DataBind();
            }
        }

        protected void nameSubmit_Click(object sender, EventArgs e)
        {
            sqlUpdatePeople.Insert();
            
        }
    }
}