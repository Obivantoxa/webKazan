package service;

import entity.DisciplinesMark;
import entity.Term;

import java.util.ArrayList;

public class Services {
    public static Term getTermById(ArrayList<Term> terms, String id) {
        for (Term term : terms) {
            if (term.getId() == Integer.parseInt(id)) {
                return term;
            }

        }
        return terms.get(0);
    }


    public static double getAverageMark(ArrayList<DisciplinesMark> dm) {
        double res = 0;
        int count = 0;
        for (DisciplinesMark disciplinesMark : dm) {
            res += Integer.parseInt(disciplinesMark.getMarkName() == null ? "0" : disciplinesMark.getMarkName());
            if (disciplinesMark.getMarkName() != null) {

                count++;
            }
        }
        if (count > 0)
            return res / count;
        else return 0;
    }
}
