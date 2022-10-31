package controller;

import database.DBManager;
import entity.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "home", value = "")
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object isLogin = (String) req.getSession().getAttribute("isLogin");
        if (isLogin!= null && ((String)isLogin).equals("1"))
        req.getRequestDispatcher("index.jsp").forward(req,resp);
        else {
           resp.sendRedirect("/login");
        }
    }
}
