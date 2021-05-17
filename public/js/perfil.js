{/* <tbody class="bg-white divide-y divide-gray-200" id="tabla">
    <tr class="transition-all hover:bg-gray-100 hover:shadow-lg ">
        <td class="px-6 py-4 whitespace-nowrap ">
        <div class="flex items-center ">
            <div class="flex-shrink-0 w-10 h-10">
            <img class="w-10 h-10 rounded-full" src="" />
            </div>
            <div class="ml-4">
            <div class="text-sm text-xl font-serif text-gray-900"></div>
            </div>
        </div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-center ">
        <div class="text-sm text-xl font-serif text-gray-900"></div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-center ">
        <div class="text-sm text-xl font-serif text-gray-900"></div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-center ">
        <div class="px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-2x1">12/2/20</div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-center ">
        <div class="px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-3xl">12</div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-center">
        <div class="px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-lg font-serif text-3xl">11</div>
        </td>
        <td class="px-6 py-4 text-sm text-gray-500 whitespace-nowrap text-center text-lg font-serif text-3xl">20</td>
        <td class="px-6 py-4 text-sm font-medium text-right whitespace-nowrap ">
        <a href="#" class="text-indigo-600 hover:text-indigo-900 "><img src="../logos/maps.png" alt="ubicacion" title="ubicación" width="60"></a>
        </td>
    </tr>
</tbody> */}


document.addEventListener("DOMContentLoaded", () => {

    axios.get('../src/pintarJSONGasolineras.php').then((response) => {
        
        creacionTabla(response.data);

    });

    function creacionTabla() {

        let tabla = document.getElementById('tabla');

        let tr = document.createElement('tr');

        tr.className = 'transition-all hover:bg-gray-100 hover:shadow-lg';

        let tdLogoNombre = document.createElement('td');
        tdLogoNombre.className = 'px-6 py-4 whitespace-nowrap';

        let tdLogodiv = document.createElement('div');
        tdLogodiv.className = 'flex items-center';
        let tdImagen = document.createElement('img');
        tdImagen.className = 'w-10 h-10 rounded-full';
        tdImagen.src = '';

        let tdLogoNombrediv = document.createElement('div');
        tdLogoNombrediv.className = 'text-sm text-xl font-serif text-gray-900';

        let tdMunicipio = document.createElement('td');
        tdDireccion.className = 'px-6 py-4 whitespace-nowrap text-center';

        let tdHorario = document.createElement('td');
        tdDireccion.className = 'px-6 py-4 whitespace-nowrap text-center';

        let tdGasolina = document.createElement('td');
        tdDireccion.className = 'px-6 py-4 whitespace-nowrap text-center';

        let tdDiesel = document.createElement('td');
        tdDireccion.className = 'px-6 py-4 whitespace-nowrap text-center';

        tdLogodiv.appendChild(tdImagen);
        tdLogodiv.appendChild(tdLogoNombrediv);
        tdLogoNombre.appendChild(tdLogodiv);


        tr.appendChild(tdLogoNombre);
        tabla.appendChild(tr);

    }

    
    

});