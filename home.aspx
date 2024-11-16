<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Telehealth_Hackathon2024.home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Valdosta Medicine Clinic</title>
    <style>
       
        body {
            background-image: url('images/background.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .top {
            background-color: #add8e6;
            padding: 20px;
            text-align: center;
        }

        .sign-in-button {
            font-size: 18px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            float: right;
        }

        .sign-in-button:hover {
            background-color: #2980b9;
        }

        .main-content, .extra-info {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            border: 3px solid #3498db;
            border-radius: 20px;
            padding: 20px;
            margin: 20px auto;
            width: 60%;
            max-width: 800px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h1, h2 {
            color: #3498db;
        }

        .info_title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #555;
        }

        .content, .content_info {
            font-size: 18px;
            color: #555;
        }

        .footer {
            position: relative;
            bottom: 0;
            width: 100%;
            background-color: white;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
        <div class="top"> 
            <asp:Button ID="signInBtn" runat="server" Text="Sign In" CssClass="sign-in-button" Style="float: right;" OnClick="signInBtn_Click" />
            <h1>Valdosta Medicine Clinic</h1>
        </div>

        <div class="main-content">
            <h2>Your Health, Our Priority</h2>
            <p class="content">Welcome to Valdosta Medicine Clinic! Sign in to connect with a doctor today.</p>
        </div>

        <div class="extra-info">
            <p class="info_title">Available Services:</p>
            <p class="content_info">Message doctors, Video call Support, Note records, etc.</p>
        </div>

 
        <div class="footer">
            <p>Located in Valdosta, Georgia.</p>
            <p>Questions? Call 229-201-9234</p>
        </div>
    </form>
</body>
</html>
