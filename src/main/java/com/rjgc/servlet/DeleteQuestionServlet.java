package com.rjgc.servlet;

import com.rjgc.model.A1DB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/DeleteQuestionServlet")
public class DeleteQuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String tihao = request.getParameter("tihao");
        A1DB db = new A1DB();
        Boolean bo = db.DeleteQuestion(tihao);
        System.out.println(bo);
        if(bo){
            PrintWriter ww = response.getWriter();
            ww.write("成功");
            ww.close();
        }

    }
}
