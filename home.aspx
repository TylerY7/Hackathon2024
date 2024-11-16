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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top"> 
            <asp:Button ID="signInBtn" runat="server" Text="Sign In" PostBackUrl="signin.aspx" CssClass="sign-in-button" Style="float: right;" />
            <h1>Valdosta Medicine Clinic</h1>
        </div>
        <div class="main-content">
            <asp:Panel ID="infoPanel" runat="server" CssClass="info-panel">
                <h2>Your Health, Our Priority</h2>
                <p>Welcome to Valdosta Medicine Clinic, your trusted partner in healthcare. We provide comprehensive medical services to meet the needs of our community.</p>
            </asp:Panel>
           
        </div>
         <div class="footer">
            <p>Hello guys</p>
         </div>
    </form>
</body>
</html>
