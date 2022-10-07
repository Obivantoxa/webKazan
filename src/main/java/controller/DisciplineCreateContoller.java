package controller;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DisciplineCreateContoller", value = "/DisciplineCreateContoller")
public class DisciplineCreateContoller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("JSP/create-discipline.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int duration = request.getIntHeader("duration");
        DBManager dbManager = new DBManager();
        dbManager.createDiscipline(name,duration);
        response.sendRedirect("/DisciplinesListController");

    }
}
