package customers;
import java.sql.*;
public class db {
    // private static String url="jdbc:mysql://localhost:3306/sonoo","root","";
    public static Connection connect() throws SQLException{
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/final_test","root","");
    }
}