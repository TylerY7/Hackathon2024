<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Telehealth_Hackathon2024.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Valdosta Medicine</title>
    <style>
         body {
            background-color: #add8e6;
        }
          .top {
            background-color: white;
            padding: 20px;
            text-align: center;
        }
        .login-container {
            width: 300px;
            margin: 100px auto;
            padding: 30px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            border-radius: 8px;
        }
        .login-container h2 {
            text-align: center;
        }
        .login-container .button {
            width: 100%;
            margin-top: 10px;
        }
        .login-container .create-account {
            display: block;
            margin-top: 15px;
            text-align: center;
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
            <asp:Label ID="usernameLbl" runat="server" Text="Username: " AssociatedControlID="usernameTxt"></asp:Label>
            <asp:TextBox ID="usernameTxt" runat="server" CssClass="input-field"></asp:TextBox>
            <br /><br />
            <asp:Label ID="passwordLbl" runat="server" Text="Password: " AssociatedControlID="passwordTxt"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <br /><br />
            <asp:Button ID="loginBtn" runat="server" Text="Sign in" OnClick="loginBtn_Click" CssClass="button" />
             <div class="create-account">
                <a href="signup.aspx">Create an Account</a>
            </div>
         </div>
    </form>
</body>
</html>
