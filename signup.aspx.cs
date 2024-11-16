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
            string username = usernameTxt.Text.Trim();
            string password = passwordTxt.Text;
            string confirmPassword = confirmPasswordTxt.Text;

            if (password != confirmPassword)
            {
                // Passwords don't match
                messageLbl.Text = "Passwords do not match!";
                return;
            }

            //string passwordHash = HashPassword(password);


            // Check if email already exists in the database
            if (UsersList.UserExists(username))
            {
                messageLbl.Text = "User with this email already exists!";
            }
            else
            {
                if (UsersList.AddUser(username, password, 0)) // Role 0 for Patient
                {

                    Response.Redirect("login.aspx");
                }
                else
                {
                    messageLbl.Text = "Error during signup!";
                }
            }




        }

        //private string hashpassword(string password)
        //{
        //    using (var sha256 = system.security.cryptography.sha256.create())
        //    {
        //        byte[] hashedbytes = sha256.computehash(system.text.encoding.utf8.getbytes(password));
        //        return convert.tobase64string(hashedbytes);
        //    }
        //}
    }
}