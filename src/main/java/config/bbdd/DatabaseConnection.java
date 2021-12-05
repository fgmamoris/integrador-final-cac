/*
 
 */
package config.bbdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Federico Mamoris
 */
public class DatabaseConnection {

    private static Connection conn = null;
    private static String host = "jdbc:mysql://localhost:3306/crud2159";
    private static String username = "root";
    private static String password = "";
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String unicode = "?useSSL=false&autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8";

    public static Connection getConnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(host + unicode, username, password);
            System.out.println("BASE DE DATOS ON");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error ->" + e.getMessage());
            System.out.println("No se puede conectar!");
            throw new RuntimeException(e);
        }

        return conn;
    }
}
