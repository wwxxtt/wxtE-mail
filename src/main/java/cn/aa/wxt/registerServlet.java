package cn.aa.wxt;

import cn.aa.test;
import com.example.demo11.util.DBUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*String name = request.getParameter("Name");
        String email =request.getParameter("Email");
        String paswword =request.getParameter("Password");

        System.out.println(name+email+paswword);*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");

        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String password =request.getParameter("Password");
        System.out.println("----"+name+email+password);
        /*System.out.println(name+","+email+","+paswword);*/

        if (name == null || "".equals(name.trim()) || email ==null || "".equals(email.trim()) || password ==null || "".equals(password.trim())){
            /*request.setAttribute("message","用户名或邮箱或密码不能为空！");
            request.getRequestDispatcher("/register.jsp").forward(request,response);*/

            PrintWriter out = response.getWriter();
            out.print("<script>alert('用户名或邮箱或密码不能为空!');window.location.href='/Registor.jsp'</script>");

            return;
        }

        if (name !=null && email != null && password !=null){
            System.out.println("注册成功！");

            Connection conn=null;
            PreparedStatement pstm=null;
            /*
            PreparedStatement pstm1=null;
            ResultSet rs=null;
            */

            boolean flag = new test().login(email);
            if (flag){
                PrintWriter pw1 =response.getWriter();
                pw1.write("<script language='javascript'>alert('改邮箱已被注册！');window.location.href='/Registor.jsp'</script>");


                /*request.getRequestDispatcher("/index.jsp").forward(request,response);*/
                return;
            }

            try {


                conn= DBUtil.getConn();
                /*String sql1="select * from admin where user_name = ?";*/
                String sql="insert into admin values(?,?,?)";
                pstm = conn.prepareStatement(sql);
                /*pstm1 = conn.prepareStatement(sql1);*/

                pstm.setString(1,name);
                pstm.setString(2,email);
                pstm.setString(3,password);

                /*pstm1.setString(1,email);*/

                int count=pstm.executeUpdate();
                if (count == 0){
                    /*PrintWriter pw2 =response.getWriter();
                    pw2.write("<script language='javascript'>alert('注册失败！')</script>");*/
                    PrintWriter out = response.getWriter();
                    out.print("<script>alert('注册失败!');window.location.href='/Registor.jsp'</script>");
                    /*request.getRequestDispatcher("/register.jsp").forward(request,response);*/
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
            out.print("<script>alert('注册成功!');window.location.href='/login-cp.jsp'</script>");
            return;
            /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/

        }else{

            PrintWriter pw3 =response.getWriter();
            pw3.write("<script language='javascript'>alert('注册失败！')</script>");
            request.getRequestDispatcher("/Registor.jsp").forward(request,response);
            return;
        }
    }
}
