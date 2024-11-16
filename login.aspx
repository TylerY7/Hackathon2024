<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Telehealth_Hackathon2024.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Valdosta Medicine</title>
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

        .login-container {
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

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
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

        .create-account {
            margin-top: 15px;
            font-size: 14px;
        }

        .create-account a {
            color: #3498db;
            text-decoration: none;
        }

        .create-account a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
        <div class="top">
            <h1>Valdosta Medicine Clinic</h1>
        </div>

        <div class="login-container">
            <h2>Login</h2>
            <asp:Label ID="usernameLbl" runat="server" Text="Username:" AssociatedControlID="usernameTxt"></asp:Label>
            <asp:TextBox ID="usernameTxt" runat="server" CssClass="input-field"></asp:TextBox>
            <br />
            <asp:Label ID="passwordLbl" runat="server" Text="Password:" AssociatedControlID="passwordTxt"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <br />
            <asp:Button ID="loginBtn" runat="server" Text="Sign in" OnClick="loginBtn_Click" CssClass="button" />
            <div class="create-account">
                <a href="signup.aspx">Create an Account</a>
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
