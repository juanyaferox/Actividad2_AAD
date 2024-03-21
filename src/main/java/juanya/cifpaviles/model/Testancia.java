package juanya.cifpaviles.model;


import java.time.LocalDate;

public class Testancia {
    private Integer id;

    private Tparada fkidParada;

    private Tperegrino fkidPeregrino;

    private LocalDate fecha;

    private Boolean vip = false;

    public Testancia() {
    }

    public Testancia(Tparada fkidParada, Tperegrino fkidPeregrino, LocalDate fecha, Boolean vip) {
        this.fkidParada = fkidParada;
        this.fkidPeregrino = fkidPeregrino;
        this.fecha = fecha;
        this.vip = vip;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Tparada getFkidParada() {
        return fkidParada;
    }

    public void setFkidParada(Tparada fkidParada) {
        this.fkidParada = fkidParada;
    }

    public Tperegrino getFkidPeregrino() {
        return fkidPeregrino;
    }

    public void setFkidPeregrino(Tperegrino fkidPeregrino) {
        this.fkidPeregrino = fkidPeregrino;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public Boolean getVip() {
        return vip;
    }

    public void setVip(Boolean vip) {
        this.vip = vip;
    }

    @Override
    public String toString() {
        return "Testancia{" +
                "id=" + id +
                ", fkidParada=" + fkidParada +
                ", fkidPeregrino=" + fkidPeregrino +
                ", fecha=" + fecha +
                ", vip=" + vip +
                '}';
    }
}