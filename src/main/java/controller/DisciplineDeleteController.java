package controller;

import database.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DisciplineDeleteController", value = "/DisciplineDeleteController")
public class DisciplineDeleteController extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("deleteDisciplineHidden");

        //2)БД
        DBManager manager = new DBManager();
        manager.deleteDiscipline(ids);

        //3 вернуться на нач страницу ,ссылка берется из контроллера  "value=/student"
        response.sendRedirect("/DisciplinesListController");
    }
}