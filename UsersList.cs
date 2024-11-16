using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Telehealth_Hackathon2024
{
    public static class UsersList
    {
        public static List<User> Users = new List<User>();

        public static bool AddUser(string username, string password, int accessType)
        {
            // Check if the user already exists
            var existingUser = Users.FirstOrDefault(u => u.Username == username);
            if (existingUser == null)
            {
                Users.Add(new User(username, password, accessType));
                return true;
            }
            return false;
        }

        public static User GetUser(string username)
        {
            return Users.FirstOrDefault(u => u.Username == username);
        }

        public static bool UserExists(string username)
        {
            return Users.Any(u => u.Username == username);
        }

        public static void ClearUsers()
        {
            Users.Clear();
        }
    }
}