module aptosz3::cadenas {
    use std::debug::print;
    use std::string::{utf8, is_empty, append, append_utf8, insert};
    use aptos_std::string_utils::{to_string, debug_string};


    /*
        Reto

        * Crea una cadena con un poema de 4 lineas **en una sola variable**. Puedes usar el siguiente como ejemplo:
            ```
            Te vi un punto y, flotando ante mis ojos,
            la imagen de tus ojos se quedo,
            como la mancha oscura orlada en fuego
            que flota y ciega si se mira al sol.
            ```
            > :warning: Recuerda que el codigo de Move **no** puede tener acentos ni caracteres especiales.
        * Ahora crea 4 variables, una por cada linea y concatenalas en una sola variable final.
        * Imprime ambas variables.
        * Responde: Cual de los dos metodos crees que es mejor y porque?
    */

    fun practica() {

        let poema = utf8(b"");
        
        append(&mut poema, utf8(b"\nTe vi un punto y, flotando ante mis ojos,"));
        append(&mut poema, utf8(b"\nla imagen de tus ojos se quedo,"));
        append(&mut poema, utf8(b"\ncomo la mancha oscura orlada en fuego"));
        append(&mut poema, utf8(b"\nque flota y ciega si se mira al sol."));

        let poema_lines1 = utf8(b"\nTe vi un punto y, flotando ante mis ojos,");
        let poema_lines2 = utf8(b"\nla imagen de tus ojos se quedo,");
        let poema_lines3 = utf8(b"\ncomo la mancha oscura orlada en fuego");
        let poema_lines4 = utf8(b"\nque flota y ciega si se mira al sol.");

        let poema_lines = utf8(b"");

        append(&mut poema_lines, poema_lines1);
        append(&mut poema_lines, poema_lines2);
        append(&mut poema_lines, poema_lines3);
        append(&mut poema_lines, poema_lines4);
        
        print(&poema); // Resultado: [debug] "poema
        print(&poema_lines); // Resultado: [debug] "poema

        /*
            Opino que es mejor de la primera manera, puesto que, aunque se usa el mismo procesamiento,
            la seguunda manera utiliza mas espacio de memoria por la nuevas variables creadas y esto generaria
            un costo adicional para el despliegue en blockchain.
        */


        // Recuerda que puedes obtener informacion sobre las demos operaciones en:
        // https://github.com/aptos-labs/aptos-core/blob/main/aptos-move/framework/move-stdlib/doc/string.md
        // https://github.com/aptos-labs/aptos-core/blob/main/aptos-move/framework/aptos-stdlib/doc/string_utils.md
    }

    #[test]
    fun prueba() {
        practica();
    }
}
