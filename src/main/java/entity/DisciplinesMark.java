package entity;

public class DisciplinesMark {
    private int id ;
    private String disciplineName;
    private String markName;

    public DisciplinesMark() {
    }

    public DisciplinesMark(int id, String disciplineName, String markName) {
        this.id = id;
        this.disciplineName = disciplineName;
        this.markName = markName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDisciplineName() {
        return disciplineName;
    }

    public void setDisciplineName(String disciplineName) {
        this.disciplineName = disciplineName;
    }

    public String getMarkName() {
        return markName;
    }

    public void setMarkName(String markName) {
        this.markName = markName;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DisciplinesMark that = (DisciplinesMark) o;

        if (id != that.id) return false;
        if (disciplineName != null ? !disciplineName.equals(that.disciplineName) : that.disciplineName != null)
            return false;
        return markName != null ? markName.equals(that.markName) : that.markName == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (disciplineName != null ? disciplineName.hashCode() : 0);
        result = 31 * result + (markName != null ? markName.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DisciplinesMark{" +
                "id=" + id +
                ", disciplineName='" + disciplineName + '\'' +
                ", markName='" + markName + '\'' +
                '}';
    }
}
