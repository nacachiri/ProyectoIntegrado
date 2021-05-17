



document.addEventListener("DOMContentLoaded", () => {

    axios.get('../src/pintarJSONGasolineras.php').then((response) => {
        
        creacionTabla(response.data);

    });

    function creacionTabla(arrDatos) {

        let tabla = document.getElementById('tabla');

        for (gasolinera in arrDatos) {

            let tr = document.createElement('tr');

            tr.className = 'transition-all hover:bg-gray-100 hover:shadow-lg';  
            tr.id = arrDatos[gasolinera].id;  

            // Esto es el td del Logo y nombre

            let tdLogoNombre = document.createElement('td');
            tdLogoNombre.className = 'px-6 py-4 break-words';

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
            tdLogoNombrediv.className = 'text-sm text-xl font-serif text-gray-900 ';
            tdLogoNombrediv.innerHTML = arrDatos[gasolinera].nombre;

            tdLogodiv.appendChild(divImagen);
            divImagen.appendChild(tdImagen);
            tdLogodiv.appendChild(tdNombrediv);
            tdNombrediv.appendChild(tdLogoNombrediv);
            tdLogoNombre.appendChild(tdLogodiv);

            // Esto es el td del Direccion

            let tdDireccion = document.createElement('td');
            tdDireccion.className = 'px-6 py-4 lg:whitespace-nowrap text-center md:break-words';
            let tdDirecciondiv = document.createElement('div');
            tdDirecciondiv.className = 'text-sm text-x1 font-serif text-gray-900';
            tdDirecciondiv.innerHTML = arrDatos[gasolinera].direccion;

            tdDireccion.appendChild(tdDirecciondiv);

            // Esto es el td del Municipio

            let tdMunicipio = document.createElement('td');
            tdMunicipio.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdMunicipiodiv = document.createElement('div');
            tdMunicipiodiv.className = 'text-sm text-xl font-serif text-gray-900';
            tdMunicipiodiv.innerHTML = arrDatos[gasolinera].municipio;

            tdMunicipio.appendChild(tdMunicipiodiv);

            // Esto es el td del Horario

            let tdHorario = document.createElement('td');
            tdHorario.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdHorariodiv = document.createElement('div');
            tdHorariodiv.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';
            tdHorariodiv.innerHTML = arrDatos[gasolinera].horario;

            tdHorario.appendChild(tdHorariodiv);

            // Esto es el td del Gasolina95

            let tdGasolina = document.createElement('td');
            tdGasolina.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdGasolinadiv = document.createElement('div');
            tdGasolinadiv.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';
            tdGasolinadiv.innerHTML = arrDatos[gasolinera].gasolina95;

            tdGasolina.appendChild(tdGasolinadiv);

            // Esto es el td del Gasolina98

            let tdGasolina98 = document.createElement('td');
            tdGasolina98.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdGasolina98div = document.createElement('div');
            tdGasolina98div.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';
            tdGasolina98div.innerHTML = arrDatos[gasolinera].gasolina98;

            tdGasolina98.appendChild(tdGasolina98div);

            // Esto es el td del Diesel

            let tdDiesel = document.createElement('td');
            tdDiesel.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdDieseldiv = document.createElement('div');
            tdDieseldiv.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';
            tdDieseldiv.innerHTML = arrDatos[gasolinera].diesel;

            tdDiesel.appendChild(tdDieseldiv);

            // Esto es el td del DieselPlus

            let tdDieselPlus = document.createElement('td');
            tdDieselPlus.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdDieselPlusdiv = document.createElement('div');
            tdDieselPlusdiv.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';
            tdDieselPlusdiv.innerHTML = arrDatos[gasolinera].diesel_premium;

            tdDieselPlus.appendChild(tdDieselPlusdiv);

            // Esto es el td del Ubicacion

            let tdUbicacion = document.createElement('td');
            tdUbicacion.className = 'px-6 py-4 whitespace-nowrap text-center';
            let tdUbicaciondiv = document.createElement('div');
            tdUbicaciondiv.className = 'px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-x1';

            tdUbicacion.appendChild(tdUbicaciondiv);

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