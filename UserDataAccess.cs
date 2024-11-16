using System;
using System.Data.OleDb;

public class UserDataAccess
{
    // Define your connection string to the database here
    private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AccessDBConnectionString"].ConnectionString;

    // Check if a user with the provided email already exists in the database
    public bool UserExists(string email)
    {
        using (OleDbConnection conn = new OleDbConnection(connectionString))
        {
            conn.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE Email = ?";
            using (OleDbCommand cmd = new OleDbCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("?", email);
                int count = (int)cmd.ExecuteScalar();
                return count > 0; // Return true if user exists
            }
        }
    }

    // Add a new user to the database (email, password hash, and role)
    public bool AddUser(string email, string passwordHash, int role)
    {
        using (OleDbConnection conn = new OleDbConnection(connectionString))
        {
            conn.Open();
            string query = "INSERT INTO Users (Email, PasswordHash, Role) VALUES (?, ?, ?)";
            using (OleDbCommand cmd = new OleDbCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("?", email);
                cmd.Parameters.AddWithValue("?", passwordHash);
                cmd.Parameters.AddWithValue("?", role);
                return cmd.ExecuteNonQuery() > 0; // Return true if insert is successful
            }
        }
    }

    // Validate the user's credentials (check if the email and password match in the database)
    public bool ValidateUser(string email, string passwordHash)
    {
        using (OleDbConnection conn = new OleDbConnection(connectionString))
        {
            conn.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE Email = ? AND PasswordHash = ?";
            using (OleDbCommand cmd = new OleDbCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("?", email);
                cmd.Parameters.AddWithValue("?", passwordHash);
                int count = (int)cmd.ExecuteScalar();
                return count > 0; // Return true if the email and password match
            }
        }
    }

    // Get the user's role (0 for patient, 1 for doctor, etc.)
    public int GetUserRole(string email)
    {
        using (OleDbConnection conn = new OleDbConnection(connectionString))
        {
            conn.Open();
            string query = "SELECT Role FROM Users WHERE Email = ?";
            using (OleDbCommand cmd = new OleDbCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("?", email);
                object result = cmd.ExecuteScalar();
                return result != null ? Convert.ToInt32(result) : -1; // -1 indicates an error
            }
        }
    }
}
