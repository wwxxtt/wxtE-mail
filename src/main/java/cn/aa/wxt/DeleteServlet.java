package cn.aa.wxt;

import com.example.demo11.util.DBUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteServlet", value = "/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String a = request.getParameter("v");
        String str = a.replace("?","");
        int parseInt = Integer.parseInt(str);


        System.out.println();
        System.out.println(parseInt);

        Connection conn=null;
        PreparedStatement pstm=null;

        try {


            conn= DBUtil.getConn();
            /*String sql1="select * from admin where user_name = ?";*/
            String sql="delete from userbox where zizeng = ?";
            pstm = conn.prepareStatement(sql);
            /*pstm1 = conn.prepareStatement(sql1);*/

            pstm.setInt(1,parseInt);

            /*pstm1.setString(1,email);*/

            int count=pstm.executeUpdate();
            if (count == 0){
                PrintWriter pw2 =response.getWriter();
                pw2.write("<script language='javascript'>alert('删除失败！')</script>");
                /*PrintWriter out = response.getWriter();
                out.print("<script>alert('删除失败!');window.location.href='/usermain/SendEmail.jsp'</script>");*/
                /*request.getRequestDispatcher("/usermain/SendEmail.jsp").forward(request,response);*/
                return;
            }

            /*rs=pstm1.executeQuery(sql1);*/



        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            /*DBUtil.closeResultSet(rs);*/
            DBUtil.closePs(pstm);
            DBUtil.closeConn(conn);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doGet(request,response);
    }
}
