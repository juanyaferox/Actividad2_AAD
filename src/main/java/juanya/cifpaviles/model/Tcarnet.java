package juanya.cifpaviles.model;

import java.time.LocalDate;

public class Tcarnet {

    private int id;
    private int fkidParada;
    private LocalDate fechaexp;
    private int nvips;
    private double distancia;

    public Tcarnet() {
    }
    public Tcarnet(int id,int fkidParada, LocalDate fechaexp, int nvips, double distancia) {
        this.id = id;
        this.fkidParada = fkidParada;
        this.fechaexp = fechaexp;
        this.nvips = nvips;
        this.distancia = distancia;
    }
    public Tcarnet(int fkidParada, LocalDate fechaexp, int nvips, double distancia) {
        this.fkidParada = fkidParada;
        this.fechaexp = fechaexp;
        this.nvips = nvips;
        this.distancia = distancia;
    }

    public Tcarnet(int fkidParada, LocalDate fechaexp) {
        this(fkidParada, fechaexp, 0, 0.0);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFkidParada() {
        return fkidParada;
    }

    public void setFkidParada(int fkidParada) {
        this.fkidParada = fkidParada;
    }

    public LocalDate getFechaexp() {
        return fechaexp;
    }

    public void setFechaexp(LocalDate fechaexp) {
        this.fechaexp = fechaexp;
    }

    public int getNvips() {
        return nvips;
    }

    public void setNvips(int nvips) {
        this.nvips = nvips;
    }

    public double getDistancia() {
        return distancia;
    }

    public void setDistancia(double distancia) {
        this.distancia = distancia;
    }

    @Override
    public String toString() {
        return "Tcarnet{" +
                "id=" + id +
                ", fkidParada=" + fkidParada +
                ", fechaexp=" + fechaexp +
                ", nvips=" + nvips +
                ", distancia=" + distancia +
                '}';
    }
}