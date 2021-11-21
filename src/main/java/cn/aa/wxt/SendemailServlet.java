package cn.aa.wxt;

import cn.aa.test;
import com.example.demo11.LoginServlet;
import com.example.demo11.util.DBUtil;
import com.mysql.cj.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SendemailServlet", value = "/SendemailServlet")


public class SendemailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");


        String accept = request.getParameter("addressee");
        String theme = request.getParameter("theme");
        String emailtext = request.getParameter("emailtext");
        System.out.println(accept+","+theme+","+emailtext);

        if (accept == null || "".equals(accept.trim()) || theme ==null || "".equals(theme.trim()) || emailtext ==null || "".equals(emailtext.trim())){
            /*PrintWriter pw=response.getWriter();
            pw.write("<script language='javascript'>alert('收件人或主题或正文不能为空！')</script>");*/
            /*request.getRequestDispatcher("/usermain/SendEmail.jsp").forward(request,response);*/
            PrintWriter out = response.getWriter();
            out.print("<script>alert('收件人或主题或正文不能为空！');window.location.href='/usermain/SendEmail.jsp'</script>");
            return;
        }

        boolean flag = new test().login(accept);
        if (!flag){
            PrintWriter pw1 =response.getWriter();
            pw1.write("<script language='javascript'>alert('收件人不存在');window.location.href='/usermain/SendEmail.jsp'</script>");
            /*request.getRequestDispatcher("/index.jsp").forward(request,response);*/
            return;
        }

        Connection conn=null;
        PreparedStatement pstm=null;
        String senduser = LoginServlet.name;


        try {


            conn= DBUtil.getConn();
            /*String sql1="select * from admin where user_name = ?";*/
            String sql="insert into userbox values(?,?,?,?,?,null)";
            pstm = conn.prepareStatement(sql);
            /*pstm1 = conn.prepareStatement(sql1);*/

            pstm.setString(1,accept);
            pstm.setString(2,theme);
            pstm.setString(3,emailtext);
            pstm.setString(4,senduser);
            pstm.setString(5,"0");

            /*pstm1.setString(1,email);*/

            int count=pstm.executeUpdate();
            if (count == 0){
                PrintWriter pw2 =response.getWriter();
                pw2.write("<script language='javascript'>alert('发送失败！')</script>");
                request.getRequestDispatcher("/usermain/SendEmail.jsp").forward(request,response);
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


            /*PrintWriter pw =response.getWriter();
            pw.write("<script language='javascript'>alert('注册成功！')</script>");*/
        PrintWriter out = response.getWriter();
        out.print("<script>alert('发送成功!');window.location.href='/usermain/SendEmail.jsp'</script>");
        return;
        /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/

    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
