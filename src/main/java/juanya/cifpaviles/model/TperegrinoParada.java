package juanya.cifpaviles.model;


public class TperegrinoParada {

    private int pkfkid_parada;
    private int pkfkid_peregrino;

    public TperegrinoParada(int pkfkid_parada, int pkfkid_peregrino) {
        this.pkfkid_parada = pkfkid_parada;
        this.pkfkid_peregrino = pkfkid_peregrino;
    }

    public TperegrinoParada() {
    }

    public int getPkfkid_parada() {
        return pkfkid_parada;
    }

    public void setPkfkid_parada(int pkfkid_parada) {
        this.pkfkid_parada = pkfkid_parada;
    }

    public int getPkfkid_peregrino() {
        return pkfkid_peregrino;
    }

    public void setPkfkid_peregrino(int pkfkid_peregrino) {
        this.pkfkid_peregrino = pkfkid_peregrino;
    }
}