package entity;

import java.util.Objects;

public class Term {

    private int id;

    private String name;

    private int duration;

    private byte status;

    public Term() {
    }

    public Term(int id, String name, int duration, byte status) {
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
        Term term = (Term) o;
        return id == term.id && duration == term.duration && status == term.status && Objects.equals(name, term.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, duration, status);
    }

    @Override
    public String toString() {
        return "Term{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", duration=" + duration +
                ", status=" + status +
                '}';
    }
}
