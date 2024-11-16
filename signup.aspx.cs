using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telehealth_Hackathon2024
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupBtn_Click(object sender, EventArgs e)
        {
            string email = emailTxt.Text.Trim();
            string password = passwordTxt.Text;
            string confirmPassword = confirmPasswordTxt.Text;

            if (password != confirmPassword)
            {
                // Passwords don't match
                messageLbl.Text = "Passwords do not match!";
                return;
            }

            string passwordHash = HashPassword(password);

            UserDataAccess userData = new UserDataAccess();

            // Check if email already exists in the database
            if (userData.UserExists(email))
            {
                messageLbl.Text = "User with this email already exists!";
            }
            else
            {
                if (userData.AddUser(email, passwordHash, 0)) // Role 0 for Patient
                {

                    Response.Redirect("patientaccount.aspx");
                }
                else
                {
                    messageLbl.Text = "Error during signup!";
                }
            }




        }

        private string HashPassword(string password)
        {
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(hashedBytes);
            }
        }
    }
}