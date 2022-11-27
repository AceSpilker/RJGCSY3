package com.rjgc.servlet;

import com.rjgc.model.A1DB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        A1DB db = new A1DB();
        String type = db.userlogin(user, pass);
        if(type.equals("0")){ //跳转管理员页面
            request.getRequestDispatcher("os_gly.jsp").forward(request,response);
        } else if (type.equals("4")) {//跳转顾客页面
            request.getRequestDispatcher("os_guke.jsp").forward(request,response);
        } else if (type.equals("3")) {//跳转领导页面
            request.getRequestDispatcher("os_lingdao.jsp").forward(request,response);
        }else if(type.equals("2")){//跳转工作人员页面
            request.getRequestDispatcher("os_gzry.jsp").forward(request,response);
        }else{
            request.setAttribute("mess", "用户名或密码错误！");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
