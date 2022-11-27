package com.rjgc.servlet;

import com.rjgc.model.A1DB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AddPeopleServlet")
public class AddPeopleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String user = request.getParameter("newuser");
        String upass = request.getParameter("newup");
        String utele = request.getParameter("newtel");
        String jibie = request.getParameter("jibie");
        System.out.println(user);
        A1DB db = new A1DB();
        boolean dd = db.userregiste(user,upass,utele,jibie);
        if(dd == true){
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
    }
}
