package com.rjgc.servlet;

import com.rjgc.model.A1DB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/AddQuestionServlet")
public class AddQuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String qno = request.getParameter("tno");
        String qneirong = request.getParameter("question");
        String qlx = request.getParameter("lx");
        A1DB db = new A1DB();
        boolean dd = db.addQuestion(qno,qneirong,qlx);
        List list = db.GetQuestion();
        request.setAttribute("list",list);
        if(dd == true){
            PrintWriter ww = response.getWriter();
            ww.write("成功");
            ww.close();
            //request.getRequestDispatcher("sjwj.jsp").forward(request, response);
        }
    }
}
