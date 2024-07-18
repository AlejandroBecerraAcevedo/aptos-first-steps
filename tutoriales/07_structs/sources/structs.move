module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String,utf8};
    use std::vector;

    /*
        Reto

        * Crea un `struct` de una Persona con los campos que gustes. Al menos 3. 
            * Por ejemplo: `nombre`,`edad`.
        * Crea un `struct` de una Clase (una clase de una escuela) con los campos que gustes.
            * Por ejemplo: `materia`, `horario`.
            * Debe incluir el `struct` Persona en alguno de los campos. Por ejemplo en un campo llamado Maestro.
        * Crea un `struct` de una Escuela con los campos que gustes.
            * Por ejemplo `nombre`, `domicilio`.
            * Debe incluir un `vector` de Clases.
        * Usa esos `struct` de manera que tengas una Escuela con un `vector` de Clases, el cual incluya al menos 2 clases de 2 diferentes maestros.
        * Imprime la variable que crees de la Escuela en consola usando `debug_string`. Deberia de imprimir todas los campos.
    */

    // Haz una nota mental de `has drop`. Lo veremos mas adelante. Por lo pronto no es necesario que lo entiendas.

    struct Person has drop, copy { 
        nombre: String,
        edad: u16,
        est_civil: String,
        vivo: bool,
        cc: u64,
    }

    struct Class has drop, copy {
        materia: String,
        horario: String,
        observations: String,
        maestro: Person,
        estudiantes: vector<Person>,
    }

    struct School has drop {
        nombre: String,
        direccion: String,
        fondos: u64,
        clases: vector<Class>,
    }

    fun practica() {

        let person1 = Person { nombre: utf8(b"Pablo"), edad: 11, est_civil: utf8(b"soltero"), vivo: true, cc: 123456 };
        let person2 = Person { nombre: utf8(b"Maria"), edad: 10, est_civil: utf8(b"soltera"), vivo: true, cc: 654321 };
        let person3 = Person { nombre: utf8(b"Juan"), edad: 9, est_civil: utf8(b"soltero"), vivo: true, cc: 112233 };
        let person4 = Person { nombre: utf8(b"Ana"), edad: 12, est_civil: utf8(b"soltera"), vivo: true, cc: 334455 };
        let person5 = Person { nombre: utf8(b"Lucas"), edad: 8, est_civil: utf8(b"soltero"), vivo: true, cc: 556677 };
        let person6 = Person { nombre: utf8(b"Sara"), edad: 14, est_civil: utf8(b"soltera"), vivo: true, cc: 778899 };
        let person7 = Person { nombre: utf8(b"David"), edad: 13, est_civil: utf8(b"soltero"), vivo: true, cc: 998877 };
        let person8 = Person { nombre: utf8(b"Carmen"), edad: 7, est_civil: utf8(b"soltera"), vivo: true, cc: 665544 };
        let person9 = Person { nombre: utf8(b"Pedro"), edad: 6, est_civil: utf8(b"soltero"), vivo: true, cc: 443322 };
        let person10 = Person { nombre: utf8(b"Elena"), edad: 5, est_civil: utf8(b"soltera"), vivo: true, cc: 221100 };

        // Maestros
        let person11  = Person { nombre: utf8(b"David"), edad: 50, est_civil: utf8(b"viudo"), vivo: true, cc: 998877 };
        let person12  = Person { nombre: utf8(b"Carmen"), edad: 33, est_civil: utf8(b"divorciada"), vivo: true, cc: 665544 };
        let person13  = Person { nombre: utf8(b"Pedro"), edad: 22, est_civil: utf8(b"soltero"), vivo: true, cc: 443322 };
        //let person14 = Person { nombre: utf8(b"Elena"), edad: 27, est_civil: utf8(b"casada"), vivo: true, cc: 221100 };
        
        
        let clase_1_estudin: vector<Person> = vector[];

        vector::push_back(&mut clase_1_estudin, person1); // Agregando un elemento al final del vector.
        vector::push_back(&mut clase_1_estudin, person2);
        vector::push_back(&mut clase_1_estudin, person3);

        let class_1 = Class { materia: utf8(b"Matematicas"), horario: utf8(b"Manana"), observations: utf8(b"Ninguna"), maestro: person11, estudiantes: copy clase_1_estudin };

        

        vector::push_back(&mut clase_1_estudin, person4); // Agregando un elemento al final del vector.
        vector::push_back(&mut clase_1_estudin, person5);
        vector::push_back(&mut clase_1_estudin, person6);

        let class_2 = Class { materia: utf8(b"Matematicas_2"), horario: utf8(b"Manana"), observations: utf8(b"Complementaria"), maestro: person12, estudiantes: clase_1_estudin };

        let clase_3_estudin: vector<Person> = vector[];

        vector::push_back(&mut clase_3_estudin, person7); // Agregando un elemento al final del vector.
        vector::push_back(&mut clase_3_estudin, person8);
        vector::push_back(&mut clase_3_estudin, person9);
        vector::push_back(&mut clase_3_estudin, person10);

        let class_3 = Class { materia: utf8(b"Lenguaje"), horario: utf8(b"nocturno"), observations: utf8(b"reccuperacion"), maestro: person13, estudiantes: clase_3_estudin };

        let classes: vector<Class> = vector[];

        vector::push_back(&mut classes, class_1); // Agregando un elemento al final del vector.
        vector::push_back(&mut classes, class_2);
        vector::push_back(&mut classes, class_3);

        let school = School {nombre: utf8(b"Pan comer"), direccion: utf8(b"Calle 46 diagonal 27"), fondos: 213, clases:copy classes };

        print(&debug_string(&school));
        print(&debug_string(&classes));
        print(&debug_string(&clase_1_estudin));
        print(&debug_string(&person4));

        // Recuerda que puedes obtener informacion sobre las demos operaciones en:
        // https://move-language.github.io/move/structs-and-resources.html
    }

    #[test]
    fun prueba() {
        practica();
    }
}
