
module cuenta::almacenamiento_global {
    use std::signer; // Global Storage trabaja sobre el signer y address como vimos anteriormente.
    use std::option::{Option,some};
    use std::string::String;

    
    /*
        Reto

        En base al ejemplo del contador, modifica el struct para almacenar mas campos
        * Los nuevos campos pueden ser del tipo que quieras, experimenta.
        * Al menos 3 campos.
        * Cada uno de los campos debe tener al menos una funcion para modificarlo.
        * No es necesario dejar los comentarios de la documentacion, ya que estos toman mucho espacio.
    */

    struct Contador has key { valor: u64, estado: bool, observacion: String, city: Option<String> } // Creamos un tipo personalizado llamado Contador para almacenar un valor dentro de nuestro contador.

    public entry fun publicar(cuenta: &signer, valor: u64, estado: bool, observacion: String, city: Option<String>) { // La funcion recibe 2 parametros, pero en realidad al ejecutarla, solo enviaremos 1.
    // El signer es recibido automaticamente.

        let recuento = Contador { valor, estado, observacion, city};

        move_to(cuenta, recuento)     
        
    }

    #[view] // Podemos especificar que es un metodo de vista
    public fun obtener_contador(direccion: address): u64 acquires Contador {
        
        borrow_global<Contador>(direccion).valor // Recuerda que el recurso es simplemente un struct, por lo que podemos acceder a sus campos con .
        
    }

    #[view] // Podemos especificar que es un metodo de vista
    public fun obtener_observacion(direccion: address): String acquires Contador {
        
        borrow_global<Contador>(direccion).observacion // Recuerda que el recurso es simplemente un struct, por lo que podemos acceder a sus campos con .
        
    }

    public entry fun cambiar_observacion(cuenta: &signer, observacion: String) acquires Contador {

        let referencia_bser = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).observacion; // Por lo que convertimos usando la operacion address_of
        *referencia_bser = observacion;
    }

    #[view] // Podemos especificar que es un metodo de vista
    public fun obtener_estado(direccion: address): bool acquires Contador {

        borrow_global<Contador>(direccion).estado 

    }

    public entry fun cambiar_estado(cuenta: &signer, estado: bool) acquires Contador {

        let referencia_bser = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).estado; // Por lo que convertimos usando la operacion address_of
        *referencia_bser = estado;
        
    }

    #[view] // Podemos especificar que es un metodo de vista
    public fun obtener_city(direccion: address): Option<String> acquires Contador {

        borrow_global<Contador>(direccion).city 
    }

    public entry fun cambiar_city(cuenta: &signer, city_1: String) acquires Contador {

        let referencia_bser = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).city; // Por lo que convertimos usando la operacion address_of
        *referencia_bser = some(city_1);
        
        
    }

    public entry fun incrementar(direccion: address) acquires Contador { // aquires dado a que vamos a adquirir ese recurso

        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).valor; // Y accedemos a su campo valor usando .
        *referencia_contador = *referencia_contador + 1 // Y como es mutable, podemos modificar su valor directamente usando dereferenciacion.
    }

    public entry fun restablecer(cuenta: &signer) acquires Contador { // aquires dado a que vamos a adquirir ese recurso
      
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).valor; // Por lo que convertimos usando la operacion address_of
        *referencia_contador = 0
    }

    #[view] // Solo estamos validando algo, asi que podemos usarlo como view
    public fun existe(direccion: address): bool { // No estamos adquiriendo el recurso, solo estamos verificando si existe o no
        exists<Contador>(direccion) 

    }

    public entry fun eliminar(cuenta: &signer) acquires Contador { // aquires dado a que vamos a adquirir ese recurso

        let contador = move_from<Contador>(signer::address_of(cuenta)); // Como usamos signer, hay que convertirlo en address.
 
        let Contador { valor: _, estado: _, observacion: _, city:_ } = contador; 
    }
}
