package database;

import entity.Disciplines;
import entity.Students;

import java.util.ArrayList;

public interface IDBManager {
    ArrayList<Students>getAllStudents();

    Students getModificStudents(int id );

    void createStudent(String surname, String name, String group, String date);
    void updateStudent(String surname, String name, String group, String date);

    ArrayList<Disciplines>getAllDisciplines();
    void createDiscipline(String name,int duration,byte status);

    void deleteDiscipline(int id);

    void deleteStudents(String ids);


}
