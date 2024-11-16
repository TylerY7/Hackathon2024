<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Telehealth_Hackathon2024.signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up - Valdosta Medicine Clinic</title>
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

        .signup-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            border: 3px solid #3498db;
            border-radius: 20px;
            padding: 30px;
            margin: 20px auto;
            width: 400px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h1, h2 {
            color: #3498db;
        }

        .signup-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #2980b9;
        }

        .message {
            margin-top: 15px;
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <div class="top">
            <h1>Valdosta Medicine Clinic</h1>
        </div>
        <div class="signup-container">
            <h2>Create an Account</h2>
            <asp:Label ID="usernameLbl" runat="server" Text="Username:" AssociatedControlID="usernameTxt"></asp:Label>
            <asp:TextBox ID="usernameTxt" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:Label ID="emailLbl" runat="server" Text="Email:" AssociatedControlID="emailTxt"></asp:Label>
            <asp:TextBox ID="emailTxt" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:Label ID="passwordLbl" runat="server" Text="Password:" AssociatedControlID="passwordTxt"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <asp:Label ID="confirmPasswordLbl" runat="server" Text="Confirm Password:" AssociatedControlID="confirmPasswordTxt"></asp:Label>
            <asp:TextBox ID="confirmPasswordTxt" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <asp:Button ID="signupBtn" runat="server" Text="Sign Up" OnClick="signupBtn_Click" CssClass="button" />
            <asp:Label ID="messageLbl" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
