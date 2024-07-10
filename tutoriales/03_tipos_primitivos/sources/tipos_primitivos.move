module aptosz3::tipos_primitivos {
    use std::debug::print;
    use std::string::utf8;


    ///////////////////////////////////////////////////
    /*            Ejercisio sesion #2                */
    ///////////////////////////////////////////////////

    // Declara 1 valor entero **constante** con cualquier valor que quieras.
    const NUMERO : u64 = 100;
    

    fun practica() {        

        // Declara 1 variable entera con cualquier valor que quieras.
        let entero = 10;

        // Imprime ambos numeros.
        print(&utf8(b"Constante cualquier valor: "));
        print(&NUMERO);
        print(&utf8(b"Variable cualquier valor: "));
        print(&entero);

        // Declara una variable que compare si estos nmeros son iguales.
        let compara = NUMERO == entero;
        print(&utf8(b"Iguales: "));
        print(&compara);

        // Declara una variable que compare si el 1er nmero es mayor que el segundo.
        let mayor = NUMERO > entero;
        print(&utf8(b"Mayor que: "));
        print(&mayor);

        // Declara una variable que compare si las 2 comparaciones anteriores son verdaderas.
        let compare_2_bolean = compara && mayor;
        print(&utf8(b"compara 2 booleanos: "));
        // Imprime el resultado de esta ultima variable.
        print(&compare_2_bolean);

        ///////////////////////////////////////////////////
        /*            Continua la teoria                 */
        ///////////////////////////////////////////////////


        // Enteros (Integers)
        let a = 1; // Cuando el tipo de dato no es especificado, el compilador asume u64.
        print(&a); // Resultado: [debug] 1

        let b: u8 = 2; // Puedes especificar el dato al declarar la variable.
        print(&b); // Resultado: [debug] 2

        let c = 3u16; // O puedes declarar el valor usando literales.
        print(&c); // Resultado: [debug] 3

        let d = 1_123_456; // Puedes usar guion bajo _ para separar numeros largos para mejorar la lectura de los mismos.
        print(&d); // Resultado: [debug] 1123456

        let e: u32 = 0xCAFE; // Tambien puedes escribir literales en hexadecimal.
        print(&e); // Resultado: [debug] 51966

        let f = 0xBE_BE_FE_00; // Y separarlos usando guion bajo.
        print(&f); // Resultado: [debug] 3200187904

        // Operaciones
        let numero_1 = 2;
        let numero_2 = 4;
        let _suma = numero_1 + numero_2; // 6
        let _resta = numero_2 - numero_1; // 2
        let _multiplicacion = numero_1 * numero_2; // 8
        let _division = numero_2 / numero_1; // 2
        let _modular = numero_2 % numero_1; // 0

        // Recuerda que los tipos de ambas variables deben ser iguales.
        let numero_3: u8 = 1;
        let numero_4: u8 = 4;
        let _otra_suma = numero_3 + numero_4; //5

        // Comparaciones e igualdades
        let menor_que = numero_3 < numero_4; // true
        let _menor_o_igual = numero_3 <= numero_4; // true
        let _mayor_que = numero_3 > numero_4; // false
        let _mayor_o_igual = numero_3 >= numero_4; // false
        let _igual = numero_3 == numero_4; // false
        let _no_igual = numero_3 != numero_4; // true
        print(&menor_que); // Resultado: [debug] true. Recuerda que el resultado de una comparacion regresa un bool.

        // Conversion (Cast)
        let un_u8: u8 = 100;
        let _convierte_a_u16 = (un_u8 as u16);

        // Bool
        let and = true && false; // Necesita que ambos valores sean verdaderos.
        print(&and); // Resultado: [debug] false

        let or = true || false; // Necesita que cualquiera de los valores sea verdadero.
        print(&or); // Resultado: [debug] true
        
        let negacion = !true; // Invierte el valor.
        print(&negacion); // Resultado: [debug] false

        
    }

    #[test]
    fun prueba() {
        practica();
    }
}
