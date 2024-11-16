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
        .notes-section input,
        .notes-section textarea {
            width: 100%;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .notes-section textarea {
            height: 100px;
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
    </style>
</head>
<body>
    <header>
        <h1>Doctor Dashboard</h1>
        <button class="logout-btn" onclick="logout()">Logout</button>
    </header>
    <main>
        <!-- Profile Section -->
        <!-- Profile Section -->
        <asp:Panel ID="ProfilePanel" runat="server" CssClass="dashboard-panel">
            <h2>Doctor Profile</h2>
<<<<<<< Updated upstream
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
=======
            <p><strong>Name:</strong> Dr. <asp:Label ID="lblDoctorName" runat="server" Text=""></asp:Label></p>
            <p><strong>Specialty:</strong> General Practitioner</p>
            <p><strong>Contact:</strong> @example.com</p>
        </div>
>>>>>>> Stashed changes
        <div class="dashboard-panel notes-section">
            <h2>Notes</h2>
            <input type="text" id="patientNameInput" placeholder="Enter patient name..." />
            <textarea id="noteInput" placeholder="Write a note..."></textarea>
            <button onclick="addNote()">Add Note</button>
            <ul class="notes-list" id="notesList"></ul>
        </div>
        <div class="dashboard-panel">
            <h2>Appointments</h2>
            <ul>
                <li>Dave Gibson - Nov 17, 2024, 10:00 AM</li>
                <li>Brenda Livingston - Nov 17, 2024, 11:30 AM</li>
                <li>Amber Burnette - Nov 18, 2024, 9:00 AM</li>
            </ul>
        </div>
    </main>
    <script>
        function addNote() {
            const patientNameInput = document.getElementById('patientNameInput');
            const noteInput = document.getElementById('noteInput');
            const notesList = document.getElementById('notesList');

            if (patientNameInput.value.trim() === "" || noteInput.value.trim() === "") {
                alert("Both patient name and note are required!");
                return;
            }

            const newNote = document.createElement('li');
            newNote.textContent = `${patientNameInput.value.trim()} - ${noteInput.value.trim()}`;
            notesList.appendChild(newNote);

            patientNameInput.value = "";
            noteInput.value = "";
        }

        function logout() {
            window.location.href = "login.aspx";
        }
    </script>
</body>
</html>
