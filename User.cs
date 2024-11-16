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
        public List<Note> notes { get; set; }

        public User(string username, string password, int accessType)
        {
            Username = username;
            Password = password;
            AccessType = accessType;
        }

        public void addNote(string note, User issuer, User receiver)
        {
            Note newNote = new Note(issuer, receiver, note);
            notes.Add(newNote);
        }
    }
}