package com.example.demo11;

import cn.aa.userinbox.FileService;
import cn.aa.userinbox.FileServiceImpl;
import cn.aa.userinbox.Userbox;
import com.example.demo11.beans.enity.AdminDO;
import com.example.demo11.impl.AdminSeviceimpl;
import com.example.demo11.service.AdminService;
import com.mysql.cj.Session;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Driver;
import java.util.ArrayList;

import static java.awt.SystemColor.window;

@WebServlet("/loginServlet")/*name = "loginServlet",urlPatterns = "/loginServlet"*/
public class LoginServlet extends HttpServlet {
    public static String name = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");


        /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/
        String type = request.getParameter("type");
        System.out.println("-------------"+ Driver.class.getName());
        if ("trueLogin".equals((type))){
            String userName = request.getParameter("userName");
            String userPwd = request.getParameter("userPwd");
            if (userName == null || "".equals(userName.trim()) || userPwd ==null || "".equals(userPwd.trim())){
                request.setAttribute("message","用户名或密码不能为空！");

                /*PrintWriter pw=response.getWriter();
                pw.write("<script language='javascript'>alert('用户名或密码不能为空！')</script>");*/

                PrintWriter out = response.getWriter();
                out.print("<script>alert('用户名或密码不能为空!');window.location.href='/login-cp.jsp'</script>");
                /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/
                /*request.getRequestDispatcher("/login-cp.jsp").forward(request,response);*/
                return;
            }

            AdminService adminService = new AdminSeviceimpl();
            AdminDO adminDO = adminService.validateLogin(userName);
            if (adminDO != null && userPwd.equals(adminDO.getPwd())){



                //放到session之前清空敏感信息
                adminDO.setPwd(null);
                request.getSession().setAttribute("admin",adminDO);
                System.out.println("跳转到主页面");
                /*request.getRequestDispatcher("/main/succes.jsp").forward(request,response);*/
                response.sendRedirect("/TiaozhuanServlet?type=Tiaozhuan");
                HttpSession session = request.getSession();
                session.setAttribute("username",userName);
                name = userName;

                /*FileService fs= new FileServiceImpl();
                ArrayList<Userbox> arr = fs.getAllinfo();

                request.setAttribute("arr",arr);
                System.out.println(arr);*/

            }else {
                request.setAttribute("message","用户名或密码不正确！");
                /*PrintWriter pw=response.getWriter();
                pw.write("<script language='javascript'>alert('用户名或密码不正确！')</script>");*/

                PrintWriter out = response.getWriter();
                out.print("<script>alert('用户名或密码不正确!');window.location.href='/login-cp.jsp'</script>");

                /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/
                /*request.getRequestDispatcher("/login-cp.jsp").forward(request,response);*/
            }

        }else{
            /*request.getRequestDispatcher("/login.jsp").forward(request,response);*/
            request.getRequestDispatcher("/login-cp.jsp").forward(request,response);
        }
    }



}
