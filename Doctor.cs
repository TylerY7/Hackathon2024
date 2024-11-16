

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Telehealth_Hackathon2024
{
    public class Doctor
    {
        public int DoctorId { get;set;}
        public string Name {get;set;}

    public Doctor(int doctorId, string name)
    {
        doctorId = doctorId;
        Name=name;
    }
    public void WriteNote(Patient p , string noteContent)
    {
        if (patientpage ==null)
            throw new ArgumentNullException(nameof(patient), "Patient can't be null,");
            var newNote = new Note
            { 
                Create = noteContent,
                TimeStamp = DateTime.Now
            };
            p.Notes.Add(newNote);
    }

    }

    public class Note
    {
        public string Create { get;set;}
        public DateTime TimeStamp {get; set;}
    }
    public class Patient
    {
        public List<Notes> Notes { get; set; } = new List<Note>();
    }
}
