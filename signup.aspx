<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Telehealth_Hackathon2024.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Sign Up - Valdosta Medicine Clinic</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style>
        body {
            background-color: #add8e6;
        }
        .signup-container {
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .signup-container h2 {
            text-align: center;
        }
        .signup-container .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-container .button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .signup-container .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
        </div>
    </form>
</body>
</html>
