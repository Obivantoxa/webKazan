package controller;

import database.DBManager;
import entity.Role;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DBManager manager = new DBManager();
        ArrayList<Role> allRoles = manager.getAllRoles();
        req.setAttribute("allRoles", allRoles);
        req.getRequestDispatcher("JSP/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBManager manager = new DBManager();
        ArrayList<Role> allRoles = manager.getAllRoles();
        req.setAttribute("allRoles", allRoles);
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String role = req.getParameter("role");
        if (login.isEmpty()|| password.isEmpty() || role.isEmpty() ) {
            req.setAttribute("error", "1");
            req.getRequestDispatcher("JSP/login.jsp").forward(req, resp);
            return;
        }


        if (manager.chekLogin(login,password,role)){
            req.getSession().setAttribute("isLogin",1);
            req.getSession().setAttribute("login",login);
            req.getSession().setAttribute("role",role); // параметры нужны что б
            resp.sendRedirect("/home");
        }
        else {
            req.setAttribute("error",1);
            req.getRequestDispatcher("JSP/login.jsp").forward(req,resp);



        }

    }
}
