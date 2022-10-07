package entity;

public class Disciplines {

    private int id;

    private String name;

    private int duration;

    private byte status;

    public Disciplines() {
    }

    public Disciplines(int id, String name, int duration, byte status) {
        this.id = id;
        this.name = name;
        this.duration = duration;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Disciplines that = (Disciplines) o;

        if (id != that.id) return false;
        if (duration != that.duration) return false;
        if (status != that.status) return false;
        return name != null ? name.equals(that.name) : that.name == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + duration;
        result = 31 * result + (int) status;
        return result;
    }

    @Override
    public String toString() {
        return "Disciplines{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", duration=" + duration +
                ", status=" + status +
                '}';
    }
}
