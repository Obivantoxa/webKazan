package controller;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "StudentDeleteController", value = "/StudentDeleteController")
public class StudentDeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("deleteStudentHidden");

        //2)БД
        DBManager manager = new DBManager();
        manager.deleteStudents(ids);

        //3 вернуться на нач страницу ,ссылка берется из контроллера  "value=/student"
        response.sendRedirect("/student");
    }
}
