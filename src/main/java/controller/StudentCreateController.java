package controller;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "StudentCreateController", value = "/create-student")
public class StudentCreateController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("JSP/create-student.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1)получить данные с формы браузера
        String surname = request.getParameter("surname");
        String name = request.getParameter("name");
        String group = request.getParameter("group");
        String date = request.getParameter("date");
        //2)БД
        DBManager manager = new DBManager();
        manager.createStudent(surname,name,group,date);

        //3 вернуться на нач страницу ,ссылка берется из контроллера  "value=/student"
        response.sendRedirect("/student");

    }
}
