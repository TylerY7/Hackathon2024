using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Telehealth_Hackathon2024
{
    public class Note
    {
        public Note(User issuer, User patient, string noteInfo)
        {
            this.issuer = issuer;
            this.patient = patient;
            this.noteInfo = noteInfo;
        }

        public User issuer { get; set; }
        public User patient { get; set; }
        public string noteInfo { get; set; }
    }
}