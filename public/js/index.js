document.addEventListener("DOMContentLoaded", () => {

    axios.get('../src/pintarJSONGasolineras.php').then((response) => {
        
        crearCartasGasolineras(response.data);

    });

    axios.get('../src/pintarMunicipiosJSON.php').then((response) => {
        
        console.log(response.data);
        rellenarMunicipios(response.data);

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
    
    function rellenarMunicipios(arrMunicipios) {

        let selectMunicipio = document.getElementById('selectMunicipios');
        
        arrMunicipios.forEach(municipio => {

            let option = document.createElement('option');
            option.value = municipio.id;
            option.text = municipio.municipio;
    
            selectMunicipio.appendChild(option);

        })

    }

    function crearCartasGasolineras(arrDatosGasolineras) {

        let contenedorTargetas = document.getElementById('targetasContenedor');

        arrDatosGasolineras.forEach(gasolinera => {

            if (gasolinera.diesel == 0) {
                gasolinera.diesel = '- -';
            }

            if (gasolinera.diesel_premium == 0) {
                gasolinera.diesel_premium = '- -';
            }

            if (gasolinera.gasolina95 == 0) {
                gasolinera.gasolina95 = '- -';
            }

            if (gasolinera.gasolina98 == 0) {
                gasolinera.gasolina98 = '- -';
            }

            let divCarta = document.createElement('div');
            divCarta.className = 'max-w-sm py-4 px-3';

            let divCartaCentrado = document.createElement('div');
            divCartaCentrado.className = 'bg-gray-100 shadow-xl rounded-lg overflow-hidden h-auto';

            let divCorazon = document.createElement('div');
            divCorazon.className = 'float-right py-2 pr-2';

            let imgCorazon = document.createElement('img');
            imgCorazon.className = 'img-h-10 w-10 text-gray fill-current cursor-pointer';
            imgCorazon.src = 'imagenes/corazon.jpg';

            divCorazon.addEventListener('click', () => {

                imgCorazon.src = 'imagenes/corazonPintado.png';

            });

            let divTopCard = document.createElement('div');
            divTopCard.className = 'flex items-center pt-2 pl-2';

            let divLogoGasolinera = document.createElement('div');
            divLogoGasolinera.className = 'bg-cover bg-center w-14 h-14 rounded-full mr-3';

            let imgLogoGasolinera = document.createElement('img');
            imgLogoGasolinera.src = gasolinera.logo;

            let divTextoTop = document.createElement('div');
            
            let pNombre = document.createElement('p');
            let pDireccion = document.createElement('p');
            let pMunicipio = document.createElement('p');
            pNombre.className = 'font-bold text-gray-900 font-serif text-xl';
            pDireccion.className = 'text-sm text-gray-700 font-serif';
            pMunicipio.className = 'text-sm text-gray-700 font-serif';
            pNombre.innerHTML = gasolinera.nombre
            pDireccion.innerHTML = gasolinera.direccion;
            pMunicipio.innerHTML = gasolinera.municipio;

            let divHorario = document.createElement('div')
            divHorario.className = 'p-4';

            let textoTituloHorario = document.createElement('p');
            textoTituloHorario.className = 'uppercase tracking-wide text-sm font-bold text-gray-700 font-serif';
            textoTituloHorario.innerHTML = 'HORARIO';
            
            let textoTiempoHorario = document.createElement('p');
            textoTiempoHorario.className = 'text-3xl text-gray-900 font-serif';
            textoTiempoHorario.innerHTML = gasolinera.horario;

            let divBotonHorario = document.createElement('div');
            divBotonHorario.className = 'pt-4 flex justify-start';

            let botonHorario = document.createElement('span');
            botonHorario.className = 'border-2 border-blue-500 rounded-full font-bold text-blue-500 px-4 py-1 transition duration-300 ease-in-out hover:bg-blue-500 hover:text-white mr-6';
            botonHorario.innerHTML = 'Ir';

            let divTablaButton = document.createElement('div');
            divTablaButton.className = 'flex p-6 border-t border-gray-300 text-gray-800';

            let tablaPrecios = document.createElement('table');
            tablaPrecios.className = 'default';

            let tbody = document.createElement('tbody');

            //fila 1

            let trFila1 = document.createElement('tr');

            //td 1

            let tdFila1Td1 = document.createElement('td');

            let divItemsTd1 = document.createElement('div');
            divItemsTd1.className = 'flex items-start mr-8';

            let divCenterItemsTd1 = document.createElement('div');
            divCenterItemsTd1.className = 'flex items-center';

            let divImgTd1 = document.createElement('div');
            divImgTd1.className = 'bg-cover bg-center w-10 h-10 rounded-full mr-3';

            let imgTd1 = document.createElement('img');
            imgTd1.src = 'imagenes/tipoGasolinaIconos/E5.png';

            let divTextoTd1 = document.createElement('div');

            let pTexto1Td1 = document.createElement('p');
            pTexto1Td1.className = 'font-bold text-gray-900 font-serif';
            pTexto1Td1.innerHTML = 'Gasolina 95';

            let pTexto2Td1 = document.createElement('p');
            pTexto2Td1.className = 'text-sm text-gray-700 font-mono';
            pTexto2Td1.innerHTML = gasolinera.gasolina95;

            // td 2

            let tdFila1Td2 = document.createElement('td');

            let divItemsTd2 = document.createElement('div');
            divItemsTd2.className = 'flex items-start mr-8';

            let divCenterItemsTd2 = document.createElement('div');
            divCenterItemsTd2.className = 'flex items-center';

            let divImgTd2 = document.createElement('div');
            divImgTd2.className = 'bg-cover bg-center w-10 h-10 rounded-full mr-3';

            let imgTd2 = document.createElement('img');
            imgTd2.src = 'imagenes/tipoGasolinaIconos/E10.png';

            let divTextoTd2 = document.createElement('div');

            let pTexto1Td2 = document.createElement('p');
            pTexto1Td2.className = 'font-bold text-gray-900 font-serif';
            pTexto1Td2.innerHTML = 'Gasolina 98';

            let pTexto2Td2 = document.createElement('p');
            pTexto2Td2.className = 'text-sm text-gray-700 font-mono';
            pTexto2Td2.innerHTML = gasolinera.gasolina98;

            //fila 2

            let trFila2 = document.createElement('tr');

            //td 1

            let tdFila2Td1 = document.createElement('td');

            let divItemsFila2Td1 = document.createElement('div');
            divItemsFila2Td1.className = 'flex items-start mr-8';

            let divCenterItemsFila2Td1 = document.createElement('div');
            divCenterItemsFila2Td1.className = 'flex items-center';

            let divImgFila2Td1 = document.createElement('div');
            divImgFila2Td1.className = 'bg-cover bg-center w-10 h-10 rounded-full mr-3';

            let imgFila2Td1 = document.createElement('img');
            imgFila2Td1.src = 'imagenes/tipoGasolinaIconos/B7.png';

            let divTextoFila2Td1 = document.createElement('div');

            let pTexto1Fila2Td1 = document.createElement('p');
            pTexto1Fila2Td1.className = 'font-bold text-gray-900 font-serif';
            pTexto1Fila2Td1.innerHTML = 'Diesel';

            let pTexto2Fila2Td1 = document.createElement('p');
            pTexto2Fila2Td1.className = 'text-sm text-gray-700 font-mono';
            pTexto2Fila2Td1.innerHTML = gasolinera.diesel;

            // td 2

            let tdFila2Td2 = document.createElement('td');

            let divItemsFila2Td2 = document.createElement('div');
            divItemsFila2Td2.className = 'flex items-start mr-8';

            let divCenterItemsFila2Td2 = document.createElement('div');
            divCenterItemsFila2Td2.className = 'flex items-center';

            let divImgFila2Td2 = document.createElement('div');
            divImgFila2Td2.className = 'bg-cover bg-center w-10 h-10 rounded-full mr-3';

            let imgFila2Td2 = document.createElement('img');
            imgFila2Td2.src = 'imagenes/tipoGasolinaIconos/B10.png';

            let divTextoFila2Td2 = document.createElement('div');

            let pTexto1Fila2Td2 = document.createElement('p');
            pTexto1Fila2Td2.className = 'font-bold text-gray-900 font-serif';
            pTexto1Fila2Td2.innerHTML = 'Diesel Premium';

            let pTexto2Fila2Td2 = document.createElement('p');
            pTexto2Fila2Td2.className = 'text-sm text-gray-700 font-mono';
            pTexto2Fila2Td2.innerHTML = gasolinera.diesel_premium;

            

            // fila 1

            //td 1 
            trFila1.appendChild(tdFila1Td1);
            tdFila1Td1.appendChild(divItemsTd1);
            divItemsTd1.appendChild(divCenterItemsTd1);
            divCenterItemsTd1.appendChild(divImgTd1);
            divImgTd1.appendChild(imgTd1);
            divCenterItemsTd1.appendChild(divTextoTd1);
            divTextoTd1.appendChild(pTexto1Td1);
            divTextoTd1.appendChild(pTexto2Td1);

            //td 2
            trFila1.appendChild(tdFila1Td2);
            tdFila1Td2.appendChild(divItemsTd2);
            divItemsTd2.appendChild(divCenterItemsTd2);
            divCenterItemsTd2.appendChild(divImgTd2);
            divImgTd2.appendChild(imgTd2);
            divCenterItemsTd2.appendChild(divTextoTd2);
            divTextoTd2.appendChild(pTexto1Td2);
            divTextoTd2.appendChild(pTexto2Td2);
            
            //fila 2

            //td 1
            trFila2.appendChild(tdFila2Td1);
            tdFila2Td1.appendChild(divItemsFila2Td1);
            divItemsFila2Td1.appendChild(divCenterItemsFila2Td1);
            divCenterItemsFila2Td1.appendChild(divImgFila2Td1);
            divImgFila2Td1.appendChild(imgFila2Td1);
            divCenterItemsFila2Td1.appendChild(divTextoFila2Td1);
            divTextoFila2Td1.appendChild(pTexto1Fila2Td1);
            divTextoFila2Td1.appendChild(pTexto2Fila2Td1);

            //td 2
            trFila2.appendChild(tdFila2Td2);
            tdFila2Td2.appendChild(divItemsFila2Td2);
            divItemsFila2Td2.appendChild(divCenterItemsFila2Td2);
            divCenterItemsFila2Td2.appendChild(divImgFila2Td2);
            divImgFila2Td2.appendChild(imgFila2Td2);
            divCenterItemsFila2Td2.appendChild(divTextoFila2Td2);
            divTextoFila2Td2.appendChild(pTexto1Fila2Td2);
            divTextoFila2Td2.appendChild(pTexto2Fila2Td2);
    
            
            
            tablaPrecios.appendChild(tbody);
            contenedorTargetas.appendChild(divCarta);
            divCarta.appendChild(divCartaCentrado);
            divCartaCentrado.appendChild(divCorazon);
            divCorazon.appendChild(imgCorazon);
            divCartaCentrado.appendChild(divTopCard);
            divTopCard.appendChild(divLogoGasolinera);
            divLogoGasolinera.appendChild(imgLogoGasolinera);
            divTopCard.appendChild(divTextoTop);
            divTextoTop.appendChild(pNombre);
            divTextoTop.appendChild(pDireccion);
            divTextoTop.appendChild(pMunicipio);
            divCartaCentrado.appendChild(divHorario);
            divHorario.appendChild(textoTituloHorario);
            divHorario.appendChild(textoTiempoHorario);
            divHorario.appendChild(divBotonHorario);
            divBotonHorario.appendChild(botonHorario);
            divCartaCentrado.appendChild(divTablaButton);
            divTablaButton.appendChild(tablaPrecios);
            tbody.appendChild(trFila1);
            tbody.appendChild(trFila2);


        }); 

        
        
    }

});