package controller;


import database.DBManager;
import entity.Students;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@WebServlet(name ="StudentModificController",value = "/StudentModificController" )
public class StudentModificController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        resp.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("modificationStudentHidden"));

        DBManager manager = new DBManager();
        Students student = manager.getModificStudents(id);

        req.setAttribute("student",student);
        req.getRequestDispatcher("JSP/modific-student.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1)получить данные с формы браузера
        String surname = request.getParameter("surname");
        String name = request.getParameter("name");
        String group = request.getParameter("group");
        String dateFromUser = request.getParameter("date");
        String id = request.getParameter("id");
//отображение ошибки
        if (surname.isEmpty()|| name.isEmpty() || group.isEmpty() || dateFromUser.isEmpty()) {
            request.setAttribute("error","1");
            request.setAttribute("surname",surname);
            request.setAttribute("name",name);
            request.setAttribute("group",group);
            request.setAttribute("dateFromUser",dateFromUser);
            request.getRequestDispatcher("JSP/create-student.jsp").forward(request, response);
            return;
        }
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date date = null;
        try {
            date = format.parse(dateFromUser);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        Format formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateToBd = formatter.format(date);
        //2)БД
        DBManager manager = new DBManager();
        manager.updateStudent(id,surname, name, group, dateToBd);

        //3 вернуться на нач страницу ,ссылка берется из контроллера  "value=/student"
        response.sendRedirect("/student");

    }

}
