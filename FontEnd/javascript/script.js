//pagina1 funcion de cambiar filtro.
let input_buscador = document.getElementById("input_buscador_localidad");
let combobox_filtro = document.getElementById("combo_filtro");
if (combobox_filtro) {
    combobox_filtro.addEventListener("change", async (e) => {
        input_buscador.value = "";
        const valor = e.target.value;
        if (valor == "Profeción") {
            let docu_fragment = document.createDocumentFragment();
            let array_profeciones = [
                "Electricista",
                "Plomero",
                "Limpieza",
                "Jardinería",
            ];
            for (i = 0; i < 4; i++) {
                let opcion = document.createElement("option");
                opcion.value = array_profeciones[i];
                docu_fragment.appendChild(opcion);
            }
            let lista_input = document.getElementById("lista_input");
            lista_input.innerHTML = "";
            lista_input.appendChild(docu_fragment);
            input_buscador.placeholder = "Escribir la profeción";
        } else if (valor == "Localidad") {
            let respuesta = await fetch("../../backend/leer_localidades.php", {
                method: "POST",
                body: "",
                headers: { "Content-Type": "text.plain" },
            })
                .then((res) => res.json())
                .then((res) => res);
            let docu_fragment = document.createDocumentFragment();
            for (const localidad of respuesta) {
                let opcion = document.createElement("option");
                opcion.value = localidad["localidad"];
                docu_fragment.appendChild(opcion);
            }
            let lista_input = document.getElementById("lista_input");
            lista_input.innerHTML = "";
            lista_input.appendChild(docu_fragment);
            input_buscador.placeholder = "Escribir la localidad";
        }
    });
}
let evento_inicial = new Event("change");
if (combobox_filtro) {
    combobox_filtro.dispatchEvent(evento_inicial);
    //pagina1 funcion buscar publicaciones con el input
    input_buscador.addEventListener("input", async (e) => {
        let valor_input = e.target.value.toLowerCase().trim();
        filtro = document.getElementById("combo_filtro");
        varible_filtro = "";
        if (filtro.value == "Localidad") {
            varible_filtro = "zona";
        } else if (filtro.value == "Profeción") {
            varible_filtro = "categoria";
        }
        valores = [varible_filtro, valor_input];
        let respuesta = await fetch("../../backend/leer_publicaciones.php", {
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(valores),
            method: "POST",
        })
            .then((res) => res.json())
            .then((res) => res);
        let contenedorServicios = document.getElementById(
            "contenedorServicios"
        );
        let fragment = document.createDocumentFragment();
        for (const publicacion of respuesta) {
            articulo = document.createElement("article");
            articulo.className = "tarjeta-servicio";
            articulo.innerHTML = `
                       <h3> ${publicacion["nombre"]}</h3>
                       <p><strong>Oficio: </strong> ${publicacion["categoria"]}</p>
                       <p><strong>Zona: </strong> ${publicacion["zona"]}</p>
                       <p><strong>Descripción: </strong>${publicacion["descripcion"]}</p>
                       <p class="estrellas"> estrellas pendiente.</p>
                        <button><a id="link_publicacion" href="perfil.php?id=16">Ver perfil</a></button>
                        `;
            fragment.appendChild(articulo);
        }
        contenedorServicios.innerHTML = "";
        contenedorServicios.appendChild(fragment);
    });
}
//validacion de confirmacion mas contratacion
let boton_contratar = document.getElementById("btn-contratar");
async function contratar_profecional() {
    id_publicacion_a_contratar = boton_contratar.dataset.id_publicacion;
    if (confirm("Desea seguir adelante con su contratación.")) {
        await fetch("../../backend/publicacion_contratar.php", {
            headers: { "Content-Type": "text_plain" },
            method: "POST",
            body: id_publicacion_a_contratar,
        })
            .then((res) => res.text())
            .then((res) => {
                alert(res);
                if (res == "Usted tiene que inicio sesión para contratar.") {
                    location.href = "../html_y_css/sesion.php";
                } else {
                    location.href = "../html_y_css/pagina1.php";
                }
            });
    }
}

// import { hacerPeticionesBD } from "./peticiones_php.js";
// document.addEventListener("DOMContentLoaded", async () => {
//     if (window.location.pathname.includes("publicar.html")) {
//         const lista_localidades = await hacerPeticionesBD(
//             "localidades.php",
//             "leer_localidades"
//         );
//         let zona = document.getElementById("zona");
//         let fragment = document.createDocumentFragment();
//         for (let localidad of lista_localidades) {
//             const option = document.createElement("option");
//             option.value = localidad;
//             option.textContent = localidad;
//             console.log(localidad);
//             fragment.appendChild(option);
//         }
//         zona.appendChild(fragment);
//     } else {
//         console.log("no funciono1");
//     }
// })
