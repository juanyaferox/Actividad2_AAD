package juanya.cifpaviles.service;


import juanya.cifpaviles.model.Tperfil;
import juanya.cifpaviles.repository.TparadaRepository;
import juanya.cifpaviles.repository.TperfilRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TperfilService {
    Tperfil guardar(Tperfil tperfil);
}
