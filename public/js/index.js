document.addEventListener("DOMContentLoaded", () => {

    let botonCerrarSesion = document.getElementById("cerrarSesion");
    botonCerrarSesion.addEventListener("click", (e) => {

        e.preventDefault();
        axios.post('../src/destruirSesion.php', {

            closeSesion : true,

        }).then((response) => {
            
            if (response.data == 1) {
                window.location.href = '/';
            }

        })

    });

});