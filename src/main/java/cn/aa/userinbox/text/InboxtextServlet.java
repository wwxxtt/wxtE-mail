package cn.aa.userinbox.text;

import cn.aa.userinbox.Userbox;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "InboxtextServlet", value = "/InboxtextServlet")

public class InboxtextServlet extends HttpServlet {

    public static int hbianhao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String bianhao = request.getParameter("v");
    AcceptText a = new AcceptText();
        int parseInt = Integer.parseInt(bianhao);
        hbianhao= parseInt;

    request.getRequestDispatcher("/usermain/userinboxtext.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doGet(request,response);
    }
}
