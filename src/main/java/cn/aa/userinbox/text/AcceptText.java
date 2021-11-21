package cn.aa.userinbox.text;

import cn.aa.userinbox.Userbox;
import com.example.demo11.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AcceptText {
    public ArrayList<Userbox> chakan(int v){
        ArrayList<Userbox> arr1 = new ArrayList<>();

        Connection conn = DBUtil.getConn();

        PreparedStatement ps=null;
        ResultSet rs=null;


        int a = v;
        /*String str2 = uname.replace("@wxt.com", "");*/
        System.out.println(a);
        String sql = "select * from userbox where zizeng= '"+a+"' ";




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
