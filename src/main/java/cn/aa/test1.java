package cn.aa;

import cn.aa.wxt.Emp;
import com.example.demo11.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class test1 {
    public static void main(String[] args) {
        List<Emp> list = new test1().findAll();
        System.out.println(list);
        System.out.println(list.size());
    }


    Connection conn=null;
    Statement ps=null;
    ResultSet rs=null;
    List<Emp> list=null;
    public List<Emp> findAll(){
        conn = DBUtil.getConn();

        Emp emp=null;
        list=new ArrayList<Emp>();
        try {
            String sql="select * from admin";
            ps=conn.createStatement();
            rs=ps.executeQuery(sql);
            while (rs.next()){
                String name=rs.getString("name");
                String user_name=rs.getString("user_name");
                String pwd= rs.getString("pwd");

                emp =new Emp();
                emp.setName(name);
                emp.setUser_name(user_name);
                emp.setPwd(pwd);

                list.add(emp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {




            DBUtil.closeResultSet(rs);

            /*DBUtil.closePs(ps);*/
            if (ps !=null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            DBUtil.closeConn(conn);

        }


        return list;
    }
}
