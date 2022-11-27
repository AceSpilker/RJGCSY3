package com.rjgc.servlet;

import com.rjgc.model.A1DB;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String upass = request.getParameter("password1");
        String utele = request.getParameter("telephone");
        A1DB db = new A1DB();
        boolean dd = db.userregiste(user,upass,utele,"4");
        if(dd == true){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
