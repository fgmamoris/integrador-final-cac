/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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

    private static DatabaseConnection instance = null;
    private static Connection conn = null;
    private static String host = "jdbc:mysql://localhost:3306/crud2159";
    private static String username = "root";
    private static String password = "";
    private static String driver = "com.mysql.jdbc.Driver";

    private DatabaseConnection() {
        try {
            Class.forName(driver);
            this.conn = DriverManager.getConnection(host, username, password);
            System.out.println("BASE DE DATOS ON");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("ERROR ->" + e);
            System.out.println("BASE DE DATOS OFF");
        }

    }

    public static Connection getConnection() {

        if (conn == null) {
            new DatabaseConnection();
        }
        return conn;
    }

    public static DatabaseConnection getInstance() {
        try {
            if (instance == null) {
                instance = new DatabaseConnection();

            } else if (instance.getConnection().isClosed()) {
                instance = new DatabaseConnection();
            }

            return instance;
        } catch (SQLException e) {
            System.out.println("ERROR ->" + e);

        }
        return instance;
    }

}
