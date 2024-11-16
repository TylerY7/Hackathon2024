<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorpage.aspx.cs" Inherits="Telehealth_Hackathon2024.doctorpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #3498db;
            color: white;
            padding: 15px 20px;
            text-align: center;
            position: relative;
        }
        header h1 {
            margin: 0;
        }
        .logout-btn {
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
            background-color: white;
            color: #3498db;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        }
        .logout-btn:hover {
            background-color: #e0e0e0;
        }
        main {
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            gap: 20px;
        }
        .dashboard-panel {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            flex: 1;
            min-width: 300px;
        }
        .dashboard-panel h2 {
            margin-top: 0;
            color: #3498db;
        }
        .notes-section textarea {
            width: 100%;
            height: 100px;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            font-size: 14px;
            resize: none;
        }
        .notes-section button {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .notes-section button:hover {
            background-color: #2980b9;
        }
        .notes-list {
            margin-top: 20px;
            padding: 0;
            list-style: none;
        }
        .notes-list li {
            background: #f4f4f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 10px;
            padding: 10px;
        }
        .message-section textarea {
            width: 100%;
            height: 80px;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            font-size: 14px;
            resize: none;
        }
        .message-section button {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .message-section button:hover {
            background-color: #2980b9;
        }
        @media (max-width: 768px) {
            main {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Doctor Dashboard</h1>
        <button class="logout-btn" onclick="logout()">Logout</button>
    </header>
    <main>
        <div class="dashboard-panel">
            <h2>Doctor Profile</h2>
            <p><strong>Name:</strong> Dr. </p>
            <p><strong>Specialty:</strong> General Practitioner</p>
            <p><strong>Contact:</strong> @example.com</p>
        </div>
        <div class="dashboard-panel notes-section">
            <h2>Notes</h2>
            <textarea id="noteInput" placeholder="Write a note..."></textarea>
            <button onclick="addNote()">Add Note</button>
            <ul class="notes-list" id="notesList"></ul>
        </div>
        <div class="dashboard-panel">
            <h2>Appointments</h2>
            <ul>
                <li>Dave Gibson - Nov 17, 2024, 10:00 AM</li>
                <li>Brenda Livingston - Nov 17, 2024, 11:30 AM</li>
                <li>Sharon Cummings - Nov 18, 2024, 9:00 AM</li>
            </ul>
        </div>
        <div class="dashboard-panel message-section">
            <h2>Message Patients</h2>
            <asp:Label ID="messagesLbl" runat="server" Text="You have no new messages." CssClass="messages-label"></asp:Label>
        </div>
    </main>
    <script>
        function addNote() {
            const noteInput = document.getElementById('noteInput');
            const notesList = document.getElementById('notesList');
            if (noteInput.value.trim() !== "") {
                const newNote = document.createElement('li');
                newNote.textContent = noteInput.value.trim();
                notesList.appendChild(newNote);
                noteInput.value = "";
            } else {
                alert("Note cannot be empty!");
            }
        }

        function sendMessage() {
            const messageInput = document.getElementById('messageInput');
            if (messageInput.value.trim() !== "") {
                alert("Message sent to the patient: " + messageInput.value.trim());
                messageInput.value = "";
            } else {
                alert("Message cannot be empty!");
            }
        }

        function logout() {
            window.location.href = "login.aspx";
        }
    </script>
</body>
</html>
