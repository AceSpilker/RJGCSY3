package com.rjgc.model;

import java.sql.*;

public class CreateConnection {

    public static void main(String[] args) {
        System.out.println(getconnection());
    }

    public static Connection getconnection() {

        Connection conn = null;
        try {
            //oracle
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            String url = "jdbc:oracle:thin:@192.168.17.39:1521:XE";
//            String user = "scott";
//            String pass = "tiger";
//            conn = DriverManager.getConnection(url, user, pass);
            //mysql
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/rjgcsy3";
            String user = "root";
            String pass = "root";
            conn = DriverManager.getConnection(url, user, pass);

        } catch ( SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn, PreparedStatement psmt, ResultSet rs) {

        try {
            conn.close();
            psmt.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public static void close(Connection conn, PreparedStatement psmt) {

        try {
            conn.close();
            psmt.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

}
