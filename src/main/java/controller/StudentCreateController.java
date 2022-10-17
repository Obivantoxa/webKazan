package controller;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

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
        String dateFromUser = request.getParameter("date");
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date date = null;
        try {
            date = format.parse(dateFromUser);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        Format formatter =new SimpleDateFormat("yyyy-MM-dd");
        String dateToBd = formatter.format(date);
        //2)БД
        DBManager manager = new DBManager();
        manager.createStudent(surname,name,group,dateToBd);

        //3 вернуться на нач страницу ,ссылка берется из контроллера  "value=/student"
        response.sendRedirect("/student");

    }
}
