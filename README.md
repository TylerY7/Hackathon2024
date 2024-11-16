# Hackathon2024
Valdosta Medicine (a fictional clinic) has realized that they need a telehealth system to
connect with patients. They need to be able to send and receive messages with patients. They
want to allow patients to be able to sign up for a patient account to their telehealth app. They
also want separate higher level accounts for their doctors.
They would like to be able to jot down and share notes for each patient within this app.
Only the doctor accounts would need access to the note taking feature, but patient accounts
could also be allowed to record notes. Patient accounts should not be able to access notes
taken by their doctor(s) and vice versa.
Their ideal version of this app would include video calls, but they’ll be satisfied with just a
messaging app for now. This is something that they only want if everything else is already done.
They are in desperate need of this system, so they’re willing to accept command line
applications if necessary (Web apps, mobile apps, command line, or however else you may
wish to implement this application will be accepted).
#Summary and Details:
You are creating a telehealth application with patient and doctor accounts that can
communicate with each other via messaging and time permitting video calls.
#Patient Accounts:
● Anyone can create a patient account
○ Alternatively you can have an admin account that handles creating all
patient/doctor accounts if you prefer
● Can start conversations with doctor accounts
● Cannot start conversations with other patients
#Doctor Accounts:
● Creating this type of account must be restricted somehow, for example:
○ An admin account that handles creating all doctor accounts
○ A set of credentials is required when creating
○ Any other method you’d like to prevent outsiders from creating a doctor
account
● Can start conversations with patients
● Can start conversations with other doctors
● Can record and access notes
#Desired features from most to least important:
● Messaging between 2 people (with or without account types)
● Multiple messaging threads allowing a doctor to be in communication with multiple
patients
● Separate account types for doctors and patients
● The ability to take and view notes for a patient account when using a doctor’s account
○ Ideal version would allow a doctor to see their own notes in one section and any
notes by other doctors in another section
● Group messaging
● Video call support (We’re not expecting this one, but props if you get it!)
#Rules:
● If you can find existing API/framework/toolkit/etc. to help facilitate creating this app then
you are free to use it
● A.I. generated code is banned, if caught your team will be disqualified
● You may add any bonus features you’d like. For example:
○ Search functionality to help find old messages
○ The ability to attach files to messages
○ A nurse level account with different permissions
○ Previews of web pages when links are sent
