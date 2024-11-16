using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Telehealth_Hackathon2024
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public int AccessType { get; set; } // Access Type: 0 for patient, 1 for doctor

        public User(string username, string password, int accessType)
        {
            Username = username;
            Password = password;
            AccessType = accessType;
        }
    }
}