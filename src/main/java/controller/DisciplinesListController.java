package controller;

import database.DBManager;
import entity.Disciplines;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisciplinesListController", value = "/DisciplinesListController")
public class DisciplinesListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DBManager dbManager = new DBManager();
        List<Disciplines> allDisciplines = dbManager.getAllDisciplines();
        request.setAttribute("allDisciplines",allDisciplines);
        request.getRequestDispatcher("JSP/disciplines-list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
