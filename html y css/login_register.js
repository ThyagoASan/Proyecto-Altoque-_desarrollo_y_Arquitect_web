class usuario {
    constructor(nombre_completo, correo, contraseña) {
        this.nombre_completo = nombre_completo;
        this.correo = correo;
        this.contraseña = contraseña;
    }
}

verficar_usuario = (lista, user) => {
    return (promesa = new Promise((resolve) => {
        for (let usuario of lista) {
            if (
                usuario.correo === user.correo &&
                usuario.contraseña === user.contraseña
            ) {
                resolve(true);
                break;
            }
        }
        resolve(false);
    }));
};
verficar_correo_usuario = (lista, user) => {
    for (let usuario of lista) {
        if (usuario.correo === user.correo) {
            return true;
        }
    }
    return false;
};
base_de_datos = indexedDB.open("base_usuarios", 1);
let lista_de_usuarios = [];
base_de_datos.addEventListener("upgradeneeded", () => {
    resultado = base_de_datos.result;
    resultado.createObjectStore("usuarios", { autoIncrement: true });
});
base_de_datos.addEventListener("success", async () => {
    lista_de_usuarios = await leer_objetos();
    await console.log(lista_de_usuarios);
});

const agregar_objetos = async (objeto) => {
    console.log(objeto);
    consulta_transaction = base_de_datos.result.transaction(
        "usuarios",
        "readwrite"
    );
    confirmacion_transaction = consulta_transaction.objectStore("usuarios");
    confirmacion_transaction.add(objeto);
};
const modificar_objetos = (key, objeto) => {
    consulta_transaction = base_de_datos.result.transaction(
        "usuarios",
        "readwrite"
    );
    confirmacion_transaction = consulta_transaction.objectStore("usuarios");
    confirmacion_transaction.put(objeto, key);
};
const borrar_objetos = (key) => {
    consulta_transaction = base_de_datos.result.transaction(
        "usuarios",
        "readwrite"
    );
    confirmacion_transaction = consulta_transaction.objectStore("usuarios");
    confirmacion_transaction.delete(key);
};
const leer_objetos = () => {
    resultado = base_de_datos.result;
    consulta_transaction = resultado.transaction("usuarios", "readonly");
    confirmacion_transaction = consulta_transaction.objectStore("usuarios");
    cursor = confirmacion_transaction.openCursor();
    todos_los_usuarios = [];
    cursor.addEventListener("success", () => {
        if (cursor.result) {
            todos_los_usuarios.push(cursor.result.value);
            cursor.result.continue();
        }
    });
    return todos_los_usuarios;
};
if (window.location.pathname !== "/html%20y%20css/sesion.html") {
    formulario_registro = document.querySelector(".formulario1");
    formulario_registro.addEventListener("submit", () => {
        let nombre_completo_registro = document.getElementById(
            "nombre_completo_registro"
        ).value;
        let email_registro = document.getElementById("email_registro").value;
        let contraseña_registro = document.getElementById(
            "contraseña_registro"
        ).value;
        let nuevo_usuario = new usuario(
            nombre_completo_registro,
            email_registro,
            contraseña_registro
        );
        if (!verficar_correo_usuario(lista_de_usuarios, nuevo_usuario)) {
            agregar_objetos(nuevo_usuario);
            alert("Se registro exitosamente");
        } else {
            alert("Ya exite un usuario con ese correo.");
        }
    });
} else {
    formulario_login = document.querySelector(".formulario_login");
    console.log(formulario_login);
    formulario_login.addEventListener("submit", async (e) => {
        let correo_login = document.getElementById("email_login").value;
        let contraseña_login =
            document.getElementById("contraseña_login").value;
        let nuevo_usuario = new usuario(null, correo_login, contraseña_login);

        if (await verficar_usuario(lista_de_usuarios, nuevo_usuario)) {
            e.preventDefault();
            alert("Se inicio sesion correctamente.");
            window.location.href = "pagina1.html";
        } else {
            alert("error: usuario o contraseña incorrectos.");
        }
    });
}
