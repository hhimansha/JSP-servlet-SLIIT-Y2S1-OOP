package con_Items;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * A utility class for establishing a database connection.
 */
public class DBConnect {
    private static String DB_URL = "jdbc:mysql://localhost:3306/shopping_center";
    private static String DB_USER = "root";
    private static String DB_PASSWORD = "DB9966#java";
    private static Connection con;

    /**
     * Retrieves a database connection.
     *
     * @return A database connection object.
     */
    public static Connection getConnection() {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection to the database
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        } catch (Exception e) {
            System.out.println("Database connection is not successful!!!");
        }

        return con;
    }
}
