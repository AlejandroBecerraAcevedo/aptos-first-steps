module introduccion::practica_aptos {
    use std::debug::print;
    use std::string::{utf8, is_empty, append, append_utf8, insert};
    use aptos_std::string_utils::{to_string, debug_string};
    
    

    fun practica() {
        let cadena_vacia = b"";
        let cadena_utf8 = utf8(cadena_vacia);

        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMWKkdc;'..          ..';cdkKWMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMWXkl,.                        .,lkXWMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMXk:.                                .ckXMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMWKo'                               ...    'oKWMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMXo.                               .:OX0l.    .oXMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMNd;;;,;;,,,,,,,,,,,,,,,,,,,;;;,,,;lOWMMMW0l;,;;:dXMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMMMMMMMWWWWWWWMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKXWMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,.'oXMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nN0kkkkkkkkkkkkkkkkkkkkkkkkkkkkkko,     'okkkkkkkkkkkkkkkkk0N"));
        append(&mut cadena_utf8, utf8(b"\nx.                                                        .x"));
        append(&mut cadena_utf8, utf8(b"\n;                              .;;.                        ;"));
        append(&mut cadena_utf8, utf8(b"\n.                           .cx0WW0c.                      ."));
        append(&mut cadena_utf8, utf8(b"\nolllllllllllllllllllllllllld0WMMMMMW0olllllllllllllllllllllo"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMXkkXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMMMMXd'  'xXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nkoollloolllllllllollc'      'clllllllllllllllllllllllllllllx"));
        append(&mut cadena_utf8, utf8(b"\nl                                                          c"));
        append(&mut cadena_utf8, utf8(b"\n0'                 .cl;                                   '0"));
        append(&mut cadena_utf8, utf8(b"\nWx.              .oKWMNk,                                .xW"));
        append(&mut cadena_utf8, utf8(b"\nMW0xxxxxxxxxxxxxkXWMMMMMNOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk0WM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMXd;,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMWKd,    .lOKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXWMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMNx'        ................................;kNMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMWKd,.                                  .,dKWMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMN0o,.                            .,o0NMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMWKxl;..                  ..;lxKWMMMMMMMMMMMMMM"));
        append(&mut cadena_utf8, utf8(b"\nMMMMMMMMMMMMMMMMMMWKko:'.          .';okKWMMMMMMMMMMMMMMMMMM"));

        print(&cadena_utf8);

    }

    #[test]
    fun prueba() {
        practica();
    }
}
