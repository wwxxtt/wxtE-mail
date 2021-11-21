package cn.aa;

import com.example.demo11.util.DBUtil;

import java.sql.*;
import java.util.Scanner;

public class test {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String user_name = sc.nextLine();
        /*String pwd = sc.nextLine();*/
        boolean flag = new test().login(user_name);
        if (flag){
            System.out.println("登陆成功！");
        }else {
            System.out.println("登陆失败！");
        }
    }


    public boolean login(String ueser_name){
        if (ueser_name == null){
            return false;
        }
        Connection conn=null;
        PreparedStatement pstm=null;
        ResultSet rs=null;

        try {
            conn= DBUtil.getConn();
            String sql="select * from admin where user_name = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1,ueser_name);
            /*pstm.setString(2,pwd);*/
            rs=pstm.executeQuery();
            return rs.next();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePs(pstm);
            DBUtil.closeConn(conn);
        }


        return false;
    }
}
