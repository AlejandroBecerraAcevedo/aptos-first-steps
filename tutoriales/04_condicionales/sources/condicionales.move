module aptosz3::condicionales {
    use std::debug::print;
    use std::string::utf8;

    /*

    Reto

    * Crea una constante de error con el valor que desees para indicar que el usuario es menor de edad.
    * Crea una variable que represente una edad.
    * Evalua esta variable en un bloque condicional usando `if` y `else`:
    * Si el usuario es mayor de edad, imprime un mensaje para hacerle saber que puede acceder a los contenidos de tu programa.
    * Si el usuario **no** es mayor de edad, aborta la ejecucion enviando el codigo de error que creaste al inicio.
    * Haz esta misma evaluacion usando `assert`. Recuerda que `assert` no regresa ningun mensaje, pero si regresa un numero como codigo de error.
    */

    const EMENOR_DE_EDAD: u64 = 1; // Aunque no es necesario, solo se descriptivo en tus errores.

    fun practica() {
        // If
        let edad = 23;
        let edad_menor = 10;
        if (edad > 18) { // La evaluacion de la condicion dentro del if tiene que dar un resultado booleano.
            print(&utf8(b"TIENE ACCESO POR LA EDAD")); // La operacion despues de la evaluacion puede ser casi cualquier cosa.
        }else{
            abort(1);
        }; // Cerramos bloque.
        // Resultado: [debug] "TIENE ACCESO POR LA EDAD"

        if (edad_menor > 18) { // La evaluacion de la condicion dentro del if tiene que dar un resultado booleano.
            print(&utf8(b"TIENE ACCESO POR LA EDAD")); // La operacion despues de la evaluacion puede ser casi cualquier cosa.
        }else{
            
            abort(1);
        };

      
        // Si la expresion da un resultado, es posible almacenarla en una variable
        //let almacenada = if (a < 100) a else 100;
        //print(&almacenada); // Resultado: [debug] 10

       

        // Assert
        assert!(if (edad_menor > 18) true else false, 1); // Otra forma de escribir la expresion anterior sin necesidad de regresar algo.
        // Intenta negar el acceso usando !

        // Codigos de error
        //assert!(edad_menor, MENOR_DE_EDAD); // Es buena practica especificar la razon de un abort/assert.
        //assert!(acceso_usuario, NO_HAY_ACCESO);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
