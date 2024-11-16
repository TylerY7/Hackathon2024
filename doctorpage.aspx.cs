using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telehealth_Hackathon2024
{
    public partial class doctorpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = UsersList.currentUser.Username;
            lblContact.Text = UsersList.currentUser.Username + "@gmail.com";
        }
    }
}