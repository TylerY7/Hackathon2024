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

        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            // Get the entered username and password from the form fields
            string enteredUsername = usernameTxt.Text.Trim(); // Assuming you have a TextBox for the username
            string enteredPassword = passwordTxt.Text.Trim(); // Assuming you have a TextBox for the password

            // Check if the user exists in the list
            var user = UsersList.GetUser(enteredUsername);

            if (user != null && user.Password == UsersList.HashPassword(enteredPassword))
            {
                // User found, redirect based on their AccessType
                switch (user.AccessType)
                {
                    case 0: // Patient
                        Response.Redirect("patientpage.aspx");
                        break;
                    //case 1: // Doctor
                        //Response.Redirect("doctorpage.aspx");
                        //break;
                   // case 2: // Admin
                        //Response.Redirect("adminpage.aspx");
                        //break;
                    //default:
                        // Fallback for unknown access types
                        //lblError.Text = "Unknown access type!";
                       //break;
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