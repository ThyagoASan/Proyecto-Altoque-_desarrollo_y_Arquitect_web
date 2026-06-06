const servicios = [
    { nombre: "Juan Pérez", oficio: "Electricista", zona: "Castelar", estrellas: "★★★★★", descripcion: "Electricista con experiencia en instalaciones domiciliarias." },
    { nombre: "María Gómez", oficio: "Limpieza", zona: "Morón", estrellas: "★★★★☆", descripcion: "Servicio de limpieza para hogares y oficinas." },
    { nombre: "Carlos Ruiz", oficio: "Plomero", zona: "Ituzaingó", estrellas: "★★★★★", descripcion: "Reparación de pérdidas de agua y mantenimiento de cañerías." }
];

const contenedor = document.getElementById("contenedorServicios");
const buscador = document.getElementById("input_buscador_localidad");

if (contenedor) {
    const publicacionesGuardadas = JSON.parse(localStorage.getItem("publicaciones")) || [];
    const todosLosServicios = servicios.concat(publicacionesGuardadas);

    function mostrarServicios(lista) {
        contenedor.innerHTML = "";

        lista.forEach(servicio => {
            const tarjeta = document.createElement("article");
            tarjeta.classList.add("tarjeta-servicio");

            tarjeta.innerHTML = `
                <h3>${servicio.nombre}</h3>
                <p><strong>Oficio:</strong> ${servicio.oficio}</p>
                <p><strong>Zona:</strong> ${servicio.zona}</p>
                <p class="estrellas">${servicio.estrellas}</p>
                <button onclick='verPerfil(${JSON.stringify(servicio)})'>Ver perfil</button>
            `;

            contenedor.appendChild(tarjeta);
        });
    }

    if (buscador) {
        buscador.addEventListener("input", () => {
            const texto = buscador.value.toLowerCase();

            const filtrados = todosLosServicios.filter(servicio =>
                servicio.zona.toLowerCase().includes(texto) ||
                servicio.oficio.toLowerCase().includes(texto) ||
                servicio.nombre.toLowerCase().includes(texto)
            );

            mostrarServicios(filtrados);
        });
    }

    mostrarServicios(todosLosServicios);
}

const formulario = document.getElementById("form-publicacion");

if (formulario) {
    formulario.addEventListener("submit", (e) => {
        e.preventDefault();

        const nombre = document.getElementById("nombre").value.trim();
        const oficio = document.getElementById("categoria").value;
        const zona = document.getElementById("zona").value.trim();
        const descripcion = document.getElementById("descripcion").value.trim();

        if (nombre === "" || zona === "" || descripcion === "") {
            alert("Complete todos los campos");
            return;
        }

        const nuevaPublicacion = {
            nombre: nombre,
            oficio: oficio,
            zona: zona,
            descripcion: descripcion,
            estrellas: "Sin reseñas"
        };

        const publicacionesGuardadas = JSON.parse(localStorage.getItem("publicaciones")) || [];
        publicacionesGuardadas.push(nuevaPublicacion);

        localStorage.setItem("publicaciones", JSON.stringify(publicacionesGuardadas));

        alert("Publicación creada correctamente");
        formulario.reset();
        window.location.href = "pagina1.html";
    });
}

function verPerfil(servicio) {
    localStorage.setItem("perfilSeleccionado", JSON.stringify(servicio));
    window.location.href = "perfil.html";
}

const perfilNombre = document.getElementById("perfil-nombre");

if (perfilNombre) {
    const perfil = JSON.parse(localStorage.getItem("perfilSeleccionado"));

    if (perfil) {
        document.getElementById("perfil-nombre").textContent = perfil.nombre;
        document.getElementById("perfil-oficio").textContent = perfil.oficio;
        document.getElementById("perfil-zona").textContent = perfil.zona;
        document.getElementById("perfil-estrellas").textContent = perfil.estrellas;
        document.getElementById("perfil-descripcion").textContent =
            perfil.descripcion || "Prestador disponible para realizar servicios a domicilio.";
    }
}
const botonContratar = document.getElementById("btn-contratar");

if (botonContratar) {
    botonContratar.addEventListener("click", () => {
        alert("Solicitud de contratación enviada correctamente");
    });
}