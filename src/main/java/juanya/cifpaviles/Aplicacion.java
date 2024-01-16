package juanya.cifpaviles;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Aplicacion {

    @Bean
    public Main applicationStartupRunner() {
        return new Main();
    }
    public static void main(String[] args) {
        SpringApplication.run(Aplicacion.class, args);
    }
}