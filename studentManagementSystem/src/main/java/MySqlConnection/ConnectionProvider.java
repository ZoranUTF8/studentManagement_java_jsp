package MySqlConnection;
import java.sql.*;


public class ConnectionProvider {
	
	public static Connection getCon() {
		
		try {
//			Loads jdbc driver with running the static block in the class
//			Class.forName("com.mysql.jdbc.Driver");
//			or we can use this
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			Connection dbConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root","Moeko2023!");
			
			System.out.println("Connection OK");
			
			return dbConnection;
			
		} catch (Exception e) {
			 	System.err.println("Error connecting to db");
	            System.err.println(e);
	            return null;
		}

	}
	

}
