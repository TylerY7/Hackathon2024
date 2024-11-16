using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telehealth_Hackathon2024
{
    public partial class doctorpage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
 
        }
<<<<<<< Updated upstream

        // Load messages into the chat window
        private void LoadMessages()
        {
            chatWindow.InnerHtml = ""; // Clear chat window

            foreach (var message in _currentPatient.Messages)
            {
                string senderStyle = message.Sender == "Doctor" ? "doctor-message" : "patient-message";
                chatWindow.InnerHtml += $"<div class='{senderStyle}'><strong>{message.Sender}:</strong> {message.Content} <small>{message.TimeStamp:HH:mm}</small></div>";
            }
        }

        // Handle sending a message
        protected void SendMessageButton_Click(object sender, EventArgs e)
        {
            string messageContent = messageInput.Value.Trim();

            if (string.IsNullOrWhiteSpace(messageContent))
            {
                errorMessage.InnerText = "Message cannot be empty!";
                return;
            }

            // Add the message to the patient's messages
            _currentPatient.Messages.Add(new Message
            {
                Sender = "Doctor",
                Content = messageContent,
                TimeStamp = DateTime.Now
            });

            // Reload the chat and clear the input field
            LoadMessages();
            messageInput.Value = string.Empty;
            lblUsername.Text = UsersList.currentUser.Username;
            lblContact.Text = UsersList.currentUser.Username + "@gmail.com";
        }
    }
=======
       }
>>>>>>> Stashed changes
}