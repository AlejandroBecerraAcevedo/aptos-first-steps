module pruebas::practica_variable {
    use std::debug::print;
    use std::string::utf8;

    fun practica() {
        let a= 1;
        let _b= 2;
        let c = a + _b;
        print(&utf8(b"Hello, World!, lalalaladb"));
        print(&c);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
