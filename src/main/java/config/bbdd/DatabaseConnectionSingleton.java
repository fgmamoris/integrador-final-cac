/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config.bbdd;

import java.lang.System.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Federico Mamoris
 */
public class DatabaseConnectionSingleton {

    private static DatabaseConnectionSingleton instance = null;
    private static Connection conn = null;
    private static String host = "jdbc:mysql://localhost:3306/crud2159";
    private static String username = "root";
    private static String password = "";
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String unicode = "?useSSL=false&autoReconnect=true&useUnicode=yes&characterEncoding=UTF-8";

    private DatabaseConnectionSingleton() {
        try {
            Class.forName(driver);
            this.conn = DriverManager.getConnection(host + unicode, username, password);
            System.out.println("BASE DE DATOS ON");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error ->" + e.getMessage());
            System.out.println("No se puede conectar!");
            throw new RuntimeException(e);
        }
        /*finally {

            try {
                if (conn != null) {
                    conn.close();
                    System.out.println("Close");
                    System.gc();
                }
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }

        }*/

    }

    public static Connection getConnection() {

        if (conn == null) {
            new DatabaseConnectionSingleton();
        }
        return conn;
    }

    public static DatabaseConnectionSingleton getInstance() {
        try {
            if (instance == null) {
                instance = new DatabaseConnectionSingleton();

            } else if (instance.getConnection().isClosed()) {
                instance = new DatabaseConnectionSingleton();
            }

            return instance;
        } catch (SQLException e) {
            System.out.println("ERROR ->" + e);

        }
        return instance;
    }

}
