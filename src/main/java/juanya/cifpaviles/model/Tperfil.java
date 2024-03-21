package juanya.cifpaviles.model;


public class Tperfil {

    private String pkidUsuario;

    private String cpassword;

    private int fkidPeregrino;
    private int fkidParada;

    public Tperfil() {
    }

    public Tperfil(String pkidUsuario, String cpassword, int fkidPeregrino, int fkidParada) {
        this.pkidUsuario = pkidUsuario;
        this.cpassword = cpassword;
        this.fkidPeregrino = fkidPeregrino;
        this.fkidParada = fkidParada;
    }

    public String getPkidUsuario() {
        return pkidUsuario;
    }

    public void setPkidUsuario(String pkidUsuario) {
        this.pkidUsuario = pkidUsuario;
    }

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public int getFkidPeregrino() {
        return fkidPeregrino;
    }

    public void setFkidPeregrino(int fkidPeregrino) {
        this.fkidPeregrino = fkidPeregrino;
    }

    public int getFkidParada() {
        return fkidParada;
    }

    public void setFkidParada(int fkidParada) {
        this.fkidParada = fkidParada;
    }

    @Override
    public String toString() {
        return "Tperfil{" +
                "pkidUsuario='" + pkidUsuario + '\'' +
                ", cpassword='" + cpassword + '\'' +
                ", fkidPeregrino=" + fkidPeregrino +
                ", fkidParada=" + fkidParada +
                '}';
    }
}