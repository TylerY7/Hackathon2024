<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorpage.aspx.cs" Inherits="Telehealth_Hackathon2024.doctorpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Doctor Dashboard</title>
    <style>
        /* General Styles */
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
        }
        main {
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            gap: 20px;
        }

        /* Dashboard Panels */
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

        /* Notes List */
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

        /* Responsive */
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
    </header>
    <main>
        <!-- Profile Section -->
        <!-- Profile Section -->
        <asp:Panel ID="ProfilePanel" runat="server" CssClass="dashboard-panel">
            <h2>Doctor Profile</h2>
            <p>
                <strong>Username:</strong> 
                <asp:Label ID="lblUsername" runat="server" Text="Dr. Leslie Dawn"></asp:Label>
            </p>
            <p>
                <strong>Specialty:</strong> 
                <asp:Label ID="lblSpecialty" runat="server" Text="General Practitioner"></asp:Label>
            </p>
            <p>
                <strong>Contact:</strong> 
                <asp:Label ID="lblContact" runat="server" Text="leslie@example.com"></asp:Label>
            </p>
        </asp:Panel>


        <!-- Notes Section -->
        <div class="dashboard-panel notes-section">
            <h2>Notes</h2>
            <textarea id="noteInput" placeholder="Write a note..."></textarea>
            <button onclick="addNote()">Add Note</button>
            <ul class="notes-list" id="notesList">
                <!-- Notes will appear here -->
            </ul>
        </div>

        <!-- Appointments Section -->
        <div class="dashboard-panel">
            <h2>Appointments</h2>
            <ul>
                <li>John Doe - Nov 17, 2024, 10:00 AM</li>
                <li>Jane Smith - Nov 17, 2024, 11:30 AM</li>
                <li>Michael Brown - Nov 18, 2024, 9:00 AM</li>
            </ul>
        </div>
    </main>

    <script>
        // Function to Add Notes
        function addNote() {
            const noteInput = document.getElementById('noteInput');
            const notesList = document.getElementById('notesList');

            if (noteInput.value.trim() !== "") {
                const newNote = document.createElement('li');
                newNote.textContent = noteInput.value.trim();
                notesList.appendChild(newNote);
                noteInput.value = ""; // Clear input
            } else {
                alert("Note cannot be empty!");
            }
        }
    </script>
</body>
</html>
