
package com.example.demo11.util;

import java.sql.*;

public class DBUtil {
    /*jdbc:mysql://localhost:3306/wxtemail?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8&autoReconnect=true?*/
   /* private static final String URL = "jdbc:mysql://local:3306/wxtemail?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String USER_NAME = "root";
    private static final String PWD = "1234";*/

    private static final String URI = "jdbc:mysql://localhost:3306/wxtemail?"
            + "user=root&password=1234&useUnicode=true&characterEncoding=UTF-8";

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";


    /*static {
        try {
            Class.forName(DRIVER);
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }*/



    /*public static Connection connectDB() throws Exception {
        //1、加载数据库驱动
        Class.forName(DRIVER);
        //2、获取数据库连接
        Connection conn = DriverManager.getConnection(URL);

        return conn;
    }*/


    public static Connection getConn() {
        /*try {
           *//* Class.forName(DRIVER);*//*
            Connection connection = DriverManager.getConnection(URL,USER_NAME,PWD);
            System.out.println(connection);
            *//*return DriverManager.getConnection(URL,USER_NAME,PWD);*//*
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;*/

        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //2、获取数据库连接
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URI);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;

    }
    public static  void  closeResultSet(ResultSet resultSet){
        try {
            if (resultSet != null){
                resultSet.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void closePs(PreparedStatement ps){
        try {
            if(ps !=null){
                ps.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public static void closeConn(Connection conn){
        try {
            if (conn !=null){
                conn.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    /*测试*/
    public  static void main(String[] args){
        System.out.println(DBUtil.getConn());
    }
}
