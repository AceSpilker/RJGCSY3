package com.rjgc.servlet;

import com.rjgc.model.A1DB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/SJWTServlet")
public class SJWTServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        A1DB db = new A1DB();
        List list = db.GetQuestion();
        request.setAttribute("list",list);
        System.out.println("qwertyuio");
        request.getRequestDispatcher("sjwj.jsp").forward(request, response);

    }
}
