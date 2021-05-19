document.addEventListener("DOMContentLoaded", () => {

    axios.get('../src/pintarJSONGasolinerasFav.php').then((response) => {
        
        creacionTabla(response.data);

    });

    let botonVolver = document.getElementById('botonVolver');
    botonVolver.addEventListener("click", () => {

        window.location.href = '/';

    });

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

    function creacionTabla(arrDatos) {

        let tabla = document.getElementById('tabla');

        for (gasolinera in arrDatos) {

            let tr = document.createElement('tr');

            tr.className = 'transition-all hover:bg-gray-100 hover:shadow-lg';  
            tr.id = arrDatos[gasolinera].id;  

            // Esto es el td del Logo y nombre

            let tdLogoNombre = document.createElement('td');
            tdLogoNombre.className = 'px-6 py-4';

            // Esto es le div del logo y nombre

            let tdLogodiv = document.createElement('div');
            tdLogodiv.className = 'flex items-center';

            let divImagen = document.createElement('div');
            divImagen.className = 'flex-shrink-0 w-20 h-full';


            let tdImagen = document.createElement('img');
            tdImagen.className = 'w-full h-full';
            tdImagen.src = arrDatos[gasolinera].logo;

            let tdNombrediv = document.createElement('div');
            tdNombrediv.className = 'ml-4';

            let tdLogoNombrediv = document.createElement('div');
            tdLogoNombrediv.className = 'text-lg font-serif text-gray-900 capitalize break-words';
            tdLogoNombrediv.innerHTML = arrDatos[gasolinera].nombre;

            tdLogodiv.appendChild(divImagen);
            divImagen.appendChild(tdImagen);
            tdLogodiv.appendChild(tdNombrediv);
            tdNombrediv.appendChild(tdLogoNombrediv);
            tdLogoNombre.appendChild(tdLogodiv);

            // Esto es el td del Direccion

            let tdDireccion = document.createElement('td');
            tdDireccion.className = 'px-6 py-4 text-center';
            let tdDirecciondiv = document.createElement('div');
            tdDirecciondiv.className = 'text-lg font-serif text-gray-900 capitalize break-words';
            tdDirecciondiv.innerHTML = arrDatos[gasolinera].direccion;

            tdDireccion.appendChild(tdDirecciondiv);

            // Esto es el td del Municipio

            let tdMunicipio = document.createElement('td');
            tdMunicipio.className = 'px-6 py-4 text-center';
            let tdMunicipiodiv = document.createElement('div');
            tdMunicipiodiv.className = 'ttext-lg font-serif text-gray-900 uppercase break-words';
            tdMunicipiodiv.innerHTML = arrDatos[gasolinera].municipio;

            tdMunicipio.appendChild(tdMunicipiodiv);

            // Esto es el td del Horario

            let tdHorario = document.createElement('td');
            tdHorario.className = 'px-6 py-4 text-center';
            let tdHorariodiv = document.createElement('div');
            tdHorariodiv.className = 'px-6 py-4 text-lg font-serif text-gray-900 capitalize break-words';
            tdHorariodiv.innerHTML = arrDatos[gasolinera].horario;

            tdHorario.appendChild(tdHorariodiv);

            // Esto es el td del Gasolina95

            let tdGasolina = document.createElement('td');
            tdGasolina.className = 'px-6 py-4 text-center';
            let tdGasolinadiv = document.createElement('div');
            tdGasolinadiv.className = 'px-6 py-4 text-lg font-serif text-gray-900 capitalize break-words';
            if (arrDatos[gasolinera].gasolina95 <= 0) {
                tdGasolinadiv.innerHTML = '- -';
            }else{
                tdGasolinadiv.innerHTML = arrDatos[gasolinera].gasolina95;
            }
        
            tdGasolina.appendChild(tdGasolinadiv);

            // Esto es el td del Gasolina98

            let tdGasolina98 = document.createElement('td');
            tdGasolina98.className = 'px-6 py-4 text-center';
            let tdGasolina98div = document.createElement('div');
            tdGasolina98div.className = 'px-6 py-4 text-lg font-serif text-gray-900 capitalize break-words';
            if (arrDatos[gasolinera].gasolina98 <= 0) {
                tdGasolina98div.innerHTML = '- -';
            }else{
                tdGasolina98div.innerHTML = arrDatos[gasolinera].gasolina98;
            }

            tdGasolina98.appendChild(tdGasolina98div);

            // Esto es el td del Diesel

            let tdDiesel = document.createElement('td');
            tdDiesel.className = 'px-6 py-4 text-center';
            let tdDieseldiv = document.createElement('div');
            tdDieseldiv.className = 'px-6 py-4 text-lg font-serif text-gray-900 capitalize break-words';
            if (arrDatos[gasolinera].diesel <= 0) {
                tdDieseldiv.innerHTML = '- -';
            }else{
                tdDieseldiv.innerHTML = arrDatos[gasolinera].diesel;
            }
            tdDieseldiv.innerHTML = arrDatos[gasolinera].diesel;

            tdDiesel.appendChild(tdDieseldiv);

            // Esto es el td del DieselPlus

            let tdDieselPlus = document.createElement('td');
            tdDieselPlus.className = 'px-6 py-4 text-center';
            let tdDieselPlusdiv = document.createElement('div');
            tdDieselPlusdiv.className = 'px-6 py-4 text-lg font-serif text-gray-900 capitalize break-words';
            if (arrDatos[gasolinera].diesel_premium <= 0) {
                tdDieselPlusdiv.innerHTML = '- -';
            }else{
                tdDieselPlusdiv.innerHTML = arrDatos[gasolinera].diesel_premium;
            }

            tdDieselPlus.appendChild(tdDieselPlusdiv);

            // Esto es el td del Ubicacion

            let tdUbicacion = document.createElement('td');
            tdUbicacion.className = 'px-6 py-4 text-center';
            let tdUbicaciondiv = document.createElement('div');
            tdUbicaciondiv.className = 'px-3 py-2 text-lg font-serif text-gray-900 capitalize break-words cursor-pointer';
            let imgUbicacion = document.createElement('img');
            imgUbicacion.src = 'imagenes/logoMaps.png';
            imgUbicacion.className = 'w-10 h-10';
            tdUbicaciondiv.setAttribute('ubicacion', arrDatos[gasolinera].latitud + ' ' + arrDatos[gasolinera].longitud);

            tdUbicaciondiv.appendChild(imgUbicacion);
            tdUbicacion.appendChild(tdUbicaciondiv);

            tdUbicaciondiv.addEventListener('click', (e) => {

                window.location.href = 'https://www.google.cl/maps/place/'+ e.currentTarget.getAttribute('ubicacion');
                // console.log(e.currentTarget.getAttribute('ubicacion'));

            });

            tr.appendChild(tdLogoNombre);
            tr.appendChild(tdDireccion);
            tr.appendChild(tdMunicipio);
            tr.appendChild(tdHorario);
            tr.appendChild(tdGasolina);
            tr.appendChild(tdGasolina98);
            tr.appendChild(tdDiesel);
            tr.appendChild(tdDieselPlus);
            tr.appendChild(tdUbicacion);
            
            tabla.appendChild(tr);


        }

    }

    
    

});