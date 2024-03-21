package juanya.cifpaviles.model;


public class Tparada {

    private int id;
    private String cnombre;
    private char cregion;

    public Tparada() {
    }

    public Tparada(String cnombre, char cregion) {
        this.cnombre = cnombre;
        this.cregion = cregion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCnombre() {
        return cnombre;
    }

    public void setCnombre(String cnombre) {
        this.cnombre = cnombre;
    }

    public char getCregion() {
        return cregion;
    }

    public void setCregion(char cregion) {
        this.cregion = cregion;
    }

    @Override
    public String toString() {
        return "Tparada{" +
                "id=" + id +
                ", cnombre='" + cnombre + '\'' +
                ", cregion=" + cregion +
                '}';
    }
}