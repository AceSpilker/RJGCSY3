package com.rjgc.servlet;

import com.rjgc.model.A1DB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/sfsxServlet")
public class sfsxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        A1DB db  = new A1DB();
        List list = db.GetQuestion();
        //System.out.println(list.toString());
        request.setAttribute("list",list);
        request.getRequestDispatcher("sjwj.jsp").forward(request,response);
    }
}
