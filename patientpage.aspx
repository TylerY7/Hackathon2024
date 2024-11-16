<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientpage.aspx.cs" Inherits="Telehealth_Hackathon2024.patientpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Dashboard</title>
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
        .button {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .button:hover {
            background-color: #2980b9;
        }
        #cameraModal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        #cameraModal video {
            max-width: 90%;
            max-height: 90%;
            border: 5px solid white;
            border-radius: 10px;
        }
        #cameraModal .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: red;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <h1>Patient Dashboard</h1>
        <button class="logout-btn" onclick="logout()">Logout</button>
    </header>
    <main>
        <div class="dashboard-panel">
            <h2>Medical Records</h2>
            <p>Access and manage your medical records here.</p>
        </div>
        <div class="dashboard-panel">
            <h2>Start Video</h2>
            <button class="button" onclick="openCamera()">Open Camera</button>
        </div>
        <div class="dashboard-panel">
            <h2>Messages from Your Doctor</h2>
            <asp:Label ID="messagesLbl" runat="server" Text="You have no new messages." CssClass="messages-label"></asp:Label>
        </div>
    </main>
    <div id="cameraModal">
        <video id="cameraStream" autoplay></video>
        <button class="close-btn" onclick="closeCamera()">Close</button>
    </div>
    <script>
        let videoStream;

        function openCamera() {
            const cameraModal = document.getElementById('cameraModal');
            const video = document.getElementById('cameraStream');
            cameraModal.style.display = 'flex';
            navigator.mediaDevices.getUserMedia({ video: true })
                .then((stream) => {
                    videoStream = stream;
                    video.srcObject = stream;
                })
                .catch((err) => {
                    alert('Error accessing camera: ' + err.message);
                    cameraModal.style.display = 'none';
                });
        }

        function closeCamera() {
            const cameraModal = document.getElementById('cameraModal');
            const video = document.getElementById('cameraStream');
            if (videoStream) {
                videoStream.getTracks().forEach((track) => track.stop());
                videoStream = null;
            }
            cameraModal.style.display = 'none';
            video.srcObject = null;
        }

        function logout() {
            window.location.href = "login.aspx";
        }
    </script>
</body>
</html>
