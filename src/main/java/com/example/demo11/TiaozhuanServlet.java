package com.example.demo11;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TiaozhuanServlet", value = "/TiaozhuanServlet")
public class TiaozhuanServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if ("Tiaozhuan".equals(type)) {
            request.getRequestDispatcher("/main/succes.jsp").forward(request, response);

        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);

        }



}
