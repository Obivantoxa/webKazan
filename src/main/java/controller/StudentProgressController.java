package controller;

import database.DBManager;
import entity.DisciplinesMark;
import entity.Students;
import entity.Term;
import service.Services;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "StudentProgressController", value = "/student-progress")
public class StudentProgressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //
        /**
         * 1) получить студента по id
         * 2) получить все активные семестры
         * 3) установить первый семестр
         * 4) получить дисциплину и оценку по 1 и 3 пункту
         * 5 jsp
         */
        //1
        DBManager manager = new DBManager();
        Students student = manager.getStudentsById(request.getParameter("progresStudentHidden")); // из джс
        //2
        ArrayList<Term> allTerms = manager.getAllTerms();
        //3 select * from term where status = 1 order by name сортированный
        Term firstTerm = null;
        if (request.getParameter("term") == null){
            firstTerm= allTerms.get(0);// установить по дефолту первый семестр
        }else {
            //firstTerm.setId(Integer.parseInt(request.getParameter("idTerm")));
            firstTerm = Services.getTermById(allTerms,request.getParameter("term"));
        }

        //4
        ArrayList<DisciplinesMark> allDisciplinesMark = manager.getAllDisciplinesMark(student, firstTerm);
        double aMark = Services.getAverageMark(allDisciplinesMark);

        //6
        request.setAttribute("student",student);
        request.setAttribute("allTerms",allTerms);
        request.setAttribute("firstTerm",firstTerm);
        request.setAttribute("allDisciplinesMark",allDisciplinesMark);
        request.setAttribute("aMark",aMark);
        request.getRequestDispatcher("JSP/student-progress.jsp").forward(request,response);



    }

}
