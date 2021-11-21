package cn.aa.userinbox;

import cn.aa.userinbox.text.InboxtextServlet;
import com.example.demo11.LoginServlet;
import com.example.demo11.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;

public class FileDaoImpl implements FileDao{

    @Override
    public ArrayList<Userbox> getAllinfo() {
        ArrayList<Userbox> arr = new ArrayList<>();

        Connection conn = DBUtil.getConn();
        if (conn ==null){
            return  null;
        }
        PreparedStatement ps=null;
        ResultSet rs=null;


        String uname = LoginServlet.name;
        /*String str2 = uname.replace("@wxt.com", "");*/

        String sql = "select * from userbox where acceptuser= '"+uname+"' ";




        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();


            while (rs.next()){
                Userbox userbox = new Userbox();
                userbox.setAcceptuser(rs.getString("acceptuser"));
                userbox.setTheme(rs.getString("theme"));
                userbox.setText(rs.getString("text"));
                userbox.setSenduser(rs.getString("senduser"));
                userbox.setState(rs.getString("state"));
                userbox.setZizeng(rs.getInt("zizeng"));
                arr.add(userbox);
            }

        }catch (SQLException e)
        {
            e.printStackTrace();
        }


        return arr;
    }

    public ArrayList<Userbox> getalltext(){
        ArrayList<Userbox> arr1 = new ArrayList<>();

        Connection conn = DBUtil.getConn();

        PreparedStatement ps=null;
        ResultSet rs=null;


        int cj = InboxtextServlet.hbianhao;
        /*String str2 = uname.replace("@wxt.com", "");*/
        System.out.println(cj);
        String sql = "select * from userbox where zizeng= '"+cj+"' ";




        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();


            while (rs.next()) {
                Userbox userbox = new Userbox();
                userbox.setAcceptuser(rs.getString("acceptuser"));
                userbox.setTheme(rs.getString("theme"));
                userbox.setText(rs.getString("text"));
                userbox.setSenduser(rs.getString("senduser"));
                userbox.setState(rs.getString("state"));
                userbox.setZizeng(rs.getInt("zizeng"));
                arr1.add(userbox);
                    /*System.out.println(userbox.getAcceptuser());
                    System.out.println(userbox.getText());
                    System.out.println(userbox.getZizeng());*/
                System.out.println("---------------"+userbox);

                return arr1;
            }


        }catch (SQLException e)
        {
            e.printStackTrace();
        }

        return arr1;
    }


}
