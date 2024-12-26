package book.hotel.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtils {
	 public static final String DRIVER ="com.mysql.cj.jdbc.Driver";
	    public static final String DB_BASE = "jdbc:mysql://localhost:3306";
	    public static final String DB_URL ="jdbc:mysql://localhost:3306/gmg";
	   
	    public static final String USERNAME ="root";
	    public static final String PASSWORD ="MANISH#27";
		
	    public static final String CREATE_SCHEMA ="CREATE SCHEMA gmg";
	    public static final String CREATE_TABLE ="CREATE TABLE addrooms (\r\n"
	    		+ "    id INT AUTO_INCREMENT PRIMARY KEY,\r\n"
	    		+ "    roomtype VARCHAR(100) NOT NULL,\r\n"
	    		+ "    totalroom INT NOT NULL,\r\n"
	    		+ "    price DECIMAL(10, 2) NOT NULL,\r\n"
	    		+ "    availability BOOLEAN NOT NULL";
	    
	    public static final String ADD_ROOM="INSERT INTO rooms (roomtype, totalRooms, price, availableRooms) VALUES(?,?,?,?)";
	    		

	    public static Connection getConnection() throws SQLException {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        return DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
	    }
	}
		
