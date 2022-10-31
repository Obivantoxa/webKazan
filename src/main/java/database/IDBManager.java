package database;

import entity.*;

import java.util.ArrayList;

public interface IDBManager {
    ArrayList<Students> getAllStudents();

    Students getStudentsById(String id);


    Students getModificStudents(int id);

    void createStudent(String surname, String name, String group, String date);

    void updateStudent(String id, String surname, String name, String group, String date);

    ArrayList<Disciplines> getAllDisciplines();

    void createDiscipline(String name, int duration, byte status);

    void deleteDiscipline(String ids);

    void deleteStudents(String ids);

    ArrayList<Term> getAllTerms();
    ArrayList<DisciplinesMark> getAllDisciplinesMark(Students s, Term t);

    ArrayList<Role> getAllRoles();

    boolean chekLogin (String login, String password, String role);
}
