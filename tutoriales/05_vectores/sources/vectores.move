module aptosz3::vectores {
    use std::debug::print;
    use std::string::utf8;
    use std::vector; // Solo para crear un vector no es necesario importar la libreria.
    // Pero las operaciones de los vectores (como push, pop_back) si necesitan que la importes.
    
    /*
        Reto

        * Crea una matriz de 3x3 e inicializala con los valores que gustes.
        * Imprime cada uno de estos elementos.
    */
    
    fun practica() {
        // Vectores
        let v2: vector<vector<u16>> = vector[
            vector[10, 20, 30],
            vector[15, 45, 35],
            vector[30, 40, 55]
        ]; // Un vector de vectores u16 inicializado con 2 elementos, cada uno con 2 elementos.

        let v3: vector<u64> = vector[1,2,3];

        vector::for_each_mut(&mut v3, |e| {print(&*e)});
        print(&utf8(b"aqui la actividad"));

        //print(&elemento);

        vector::for_each_mut(&mut v2, |inter| {vector::for_each_mut(&mut *inter, |element| {print(&*element)})});
      
        //vector::for_each(v3, |ele| {print(*ele)});
        // Recuerda que puedes obtener informacion sobre las demos operaciones en:
        // https://github.com/aptos-labs/aptos-core/blob/main/aptos-move/framework/move-stdlib/doc/vector.md
    }

    #[test]
    fun prueba() {
        practica();
    }
}
