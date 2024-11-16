<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientpage.aspx.cs" Inherits="Telehealth_Hackathon2024.patientpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Patient Dashboard - Valdosta Medicine Clinic</title>
    <style>
        body {
            background-color: #add8e6;
        }
        .dashboard-container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .dashboard-container h2 {
            text-align: center;
        }
        .dashboard-section {
            margin-top: 20px;
        }
        .dashboard-section h3 {
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <h2>Valdosta Medicine</h2>
         <div class="dashboard-container">
            <h2>Welcome to Your Patient Dashboard</h2>
            <div class="dashboard-section">
                <h3>Upcoming Appointments</h3>
                <asp:GridView ID="appointmentsGridView" runat="server" CssClass="appointments-grid" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LoginID" HeaderText="LoginID" SortExpression="LoginID" />
                        <asp:BoundField DataField="PWord" HeaderText="PWord" SortExpression="PWord" />
                        <asp:BoundField DataField="AccessLevel" HeaderText="AccessLevel" SortExpression="AccessLevel" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:patients[1]ConnectionString %>" ProviderName="<%$ ConnectionStrings:patients[1]ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </div>
            <div class="dashboard-section">
                <h3>Medical Records</h3>
                <asp:Button ID="viewRecordsBtn" runat="server" Text="View Medical Records" CssClass="button" />
            </div>
            <div class="dashboard-section">
                <h3>Messages from Your Doctor</h3>
                <asp:Label ID="messagesLbl" runat="server" Text="You have no new messages." CssClass="messages-label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
