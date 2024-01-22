package juanya.cifpaviles.service;


import juanya.cifpaviles.model.Tparada;
import juanya.cifpaviles.model.Tperfil;

public interface TparadaService {
    boolean existsCnombreTparada(String nombre);
    Tparada objectTparada(String nombre);

    boolean existsTparada(String nombre, Character region);
    void insercionParada(String nombre, Character region);

    Tparada getParada(Tperfil tperfil);
}
