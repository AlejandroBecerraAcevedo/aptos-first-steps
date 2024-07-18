module pruebas::practica_variable {
    use std::debug::print;
    use std::string::utf8;
    use std::vector::{Self,borrow};
    

    fun practica() {
        let vacio: vector<u8> = vector[];
        let inicializado: vector<u8> = vector[10,20,30];
        let cadena_vacia = utf8(b"");

        let elemento = *borrow(&inicializado,0);

        print(&elemento);

        let a= 1;
        let _b= 2;
        let c = a + _b;
        print(&utf8(b"Hello, World!, lalalaladb"));
        print(&c);

        assert!(a < 10, _b);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
