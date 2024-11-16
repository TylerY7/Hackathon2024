using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telehealth_Hackathon2024
{
    public partial class login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            UsersList.AddUser("DrBanks", "banks01", 1);
            UsersList.AddUser("DrYoung", "young01", 1);
            UsersList.AddUser("Leslie", "leslie01", 0);
            UsersList.AddUser("Easton", "easton01", 0);

        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {

            string enteredUsername = usernameTxt.Text.Trim(); 
            string enteredPassword = passwordTxt.Text.Trim(); 

            var user = UsersList.GetUser(enteredUsername);

            if (user != null && user.Password == enteredPassword)
            {
                switch (user.AccessType)
                {
                    case 0: // Patient
                        Response.Redirect("patientpage.aspx");
                        break;
                    case 1: // Doctor
                        Response.Redirect("doctorpage.aspx");
                        break;
                }
            }
            else
            {
                // Display error if username or password doesn't match
                lblError.Text = "Invalid username or password. Please try again.";
            }
        }

    }
}