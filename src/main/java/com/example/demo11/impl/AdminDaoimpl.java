package com.example.demo11.impl;

import com.example.demo11.beans.enity.AdminDO;
import com.example.demo11.dao.AdminDao;
import com.example.demo11.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDaoimpl implements AdminDao {
    @Override
    public AdminDO validateLogin(String userName) {
        Connection conn = DBUtil.getConn();
        if (conn ==null){
            return  null;
        }
        PreparedStatement ps=null;
        ResultSet rs=null;
        StringBuilder sb=new StringBuilder();

        sb.append("select * from admin where user_name = ? ");
        try {
            ps = conn.prepareStatement(sb.toString());
            ps.setObject(1,userName);
            //打印最终执行语句
            System.out.println("validateLogi执行的aql"+ps.toString());
            rs = ps.executeQuery();
            if (rs.next()){
                String pwd = rs.getString("pwd");
                AdminDO adminDO = new AdminDO();
                adminDO.setUser_name(userName);
                adminDO.setPwd(pwd);
                return adminDO;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePs(ps);
            DBUtil.closeConn(conn);
        }


        return null;
    }
}
