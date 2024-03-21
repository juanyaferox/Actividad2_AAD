package juanya.cifpaviles.model;


public class Tperegrino {

    private int id;
    private String cnombre;
    private String cnacionalidad;

    public Tperegrino() {
    }

    public Tperegrino(int id, Tcarnet tcarnet, String cnombre, String cnacionalidad) {
        this.id = id;

        this.cnombre = cnombre;
        this.cnacionalidad = cnacionalidad;
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

    public String getCnacionalidad() {
        return cnacionalidad;
    }

    public void setCnacionalidad(String cnacionalidad) {
        this.cnacionalidad = cnacionalidad;
    }

    @Override
    public String toString() {
        return "Tperegrino{" +
                "id=" + id +
                ", cnombre='" + cnombre + '\'' +
                ", cnacionalidad='" + cnacionalidad + '\'' +
                '}';
    }
}