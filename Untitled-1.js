document.addEventListener("DOMContentLoaded", main);

function main() {

    creacionTabla();

    };

    function creacionTabla() {

        // cajon de la targeta
        let divCentrado= document.createElement('div');
        divCentrado.className ='max-w-sm py-4 px-3';

        

        // color contenedor/forma
        let divContenedorColor=document.createElement('div');
        divContenedorColor.className ='bg-gray-100 shadow-xl rounded-lg overflow-hidden h-auto'

        
            // div corazon
        let divCorazon=document.createElement('div')
        divCorazon.className='float-right py-2 pr-2'
        divCorazon.style='background-image: url(../Logo/logoSolo.png)'
        

        

            // imagen corazon
        let imagenCorazon=document.createElement('img')
        imagenCorazon.className='img-h-10 w-10 text-gray fill-current'

        

        // div header
        let divHeader=document.createElement('div')
        divHeader.className='flex items-center pt-2 pl-2'

        
        
            // div Imagen Gasolinera
        let imgGasolinera=document.createElement('div')
        imgGasolinera.className='bg-cover bg-center w-14 h-14 rounded-full mr-3'
        imgGasolinera.src="background-image: url(../logos/logoSolo.png)"

        // div Imagen Gasolinera 

        let imgGasolineraTexto = document.createElement('div')
        imgGasolinera.src="background-image: url(../logos/logoSolo.png)"
    
        // nombre de la gasolinera
        let pNombreGasolinera = document.createElement('p')
        pNombreGasolinera.className='font-bold text-gray-900 font-serif text-2xl'
        pNombreGasolinera.innerHTML="Repsol"
       
        // nombre de la calle
        let pNombreCalle = document.createElement('p')
        pNombreCalle.className='text-sm text-gray-700 font-serif'
        pNombreCalle.innerHTML="San vicent"
        

        // nombre de la municipio
        let pNombreMunicipio = document.createElement('p')
        pNombreMunicipio.className='text-sm text-gray-700 font-serif'
        pNombreMunicipio.innerHTML="Valencia"
        
        

        // div Horario
        let divHorario=document.createElement('div')
        divHorario.className='p-4'
        divHorario.innerHTML="HORARIO"
 
        // nombre de la Horario
         let pHorario = document.createElement('p')
        pHorario.className='uppercase tracking-wide text-sm font-bold text-gray-700 font-serif'
        pHorario.innerHTML="HORARIO"
  

         // fecha horario
        let pFechaHorario = document.createElement('p')
        pFechaHorario.className='text-3xl text-gray-900 font-serif'
        pFechaHorario.innerHTML="10:00 - 20:00"
  

         // div a href google maps
        let divBoton=document.createElement('div')
        divBoton.className='pt-4 flex justify-start'

         // boton a Href
        let botonHref=document.createElement('span')
        botonHref.className='border-2 border-blue-500 rounded-full font-bold text-blue-500 px-4 py-1 transition duration-300 ease-in-out hover:bg-blue-500 hover:text-white mr-6'

        
        // raya que separa lo de arriba
        let rayaSeparada= document.createElement('div')
        rayaSeparada.className='flex p-6 border-t border-gray-300 text-gray-800'
        pNombreGasolinera.innerHTML="Repsol"
       
        
        
        // creacion de la tabla
        let tabla= document.createElement('table')

        let tr= document.createElement('tr')
        
        // aqui empieza los td con logo,precio,nombre gasolina 95
        let td= document.createElement('td')
        let divSeparacionDerecha=document.createElement('div')
        divSeparacionDerecha.className='flex items-start mr-8'
    

        let centrarImgText=document.createElement('div')
        centrarImgText.className='flex items-center'
       

        let divImgConbustible=document.createElement('div')
        divImgConbustible.className='bg-cover bg-center w-10 h-10 rounded-full mr-3'
        divImgConbustible.style='background-image: url(../Logo/logoSolo.png)'

        let divgasolinaPrecio=document.createElement('div')
        // p
        let pgasolina95= document.createElement('p')
        pgasolina95.className='font-bold text-gray-900 font-serif'
        pgasolina95.innerHTML="gasolina 95"

        let pPrecio=document.createElement('p')
        pPrecio.className='text-sm text-gray-700 font-mono'
        pPrecio.innerHTML="1.362"
        

        
        divHeader.appendChild(imgGasolinera)
        divCentrado.appendChild(divHeader)
        
        divgasolinaPrecio.appendChild(pPrecio)
        divgasolinaPrecio.appendChild(pgasolina95)
        centrarImgText.appendChild(divgasolinaPrecio)
        centrarImgText.appendChild(divImgConbustible)
        divSeparacionDerecha.appendChild(centrarImgText)
        td.appendChild(divSeparacionDerecha)
        tr.appendChild(td)
        tabla.appendChild(tr)
        rayaSeparada.appendChild(tabla)
        
        
        divBoton.appendChild(botonHref)
        divHorario.appendChild(divBoton)
        divHorario.appendChild(pFechaHorario)
        divHorario.appendChild(pHorario)
        divCentrado.appendChild(divHorario)




        divHeader.appendChild(pNombreMunicipio)
        divHeader.appendChild(pNombreCalle)
        divHeader.appendChild(pNombreGasolinera)
        divHeader.appendChild(imgGasolineraTexto)

        

        divCentrado.appendChild(imagenCorazon)
        divCentrado.appendChild(divCorazon)

        divCentrado.appendChild(divContenedorColor)

        document.body.appendChild(divCentrado)

        divCentrado.appendChild(rayaSeparada)


        // // aqui empieza los td con logo,precio,nombre gasolina 98 
        // let td= document.createElement('td')
        // let divSeparacionDerecha=document.createElement('div')
        // divSeparacionDerecha.className='flex items-start mr-8'
        // let centrarImgText=document.createElement('div')
        // centrarImgText.className='flex items-center'
        // let divImgConbustible=document.createElement('div')
        // divImgConbustible.className='bg-cover bg-center w-10 h-10 rounded-full mr-3'
        // divImgConbustible.style='background-image: url(../Logo/logoSolo.png)'
        // let divgasolinaPrecio=document.createElement('div')
        // // p
        // let pgasolina98= document.createElement('p')
        // pgasolina98.className='font-bold text-gray-900 font-serif'
        // let pPrecio=document.createElement('p')
        // pPrecio.className='text-sm text-gray-700 font-mono'


        
        // // aqui empieza los td con logo,precio,nombre Diesel 
        // let td= document.createElement('td')
        // let divSeparacionDerecha=document.createElement('div')
        // divSeparacionDerecha.className='flex items-start mr-8'
        // let centrarImgText=document.createElement('div')
        // centrarImgText.className='flex items-center'
        // let divImgConbustible=document.createElement('div')
        // divImgConbustible.className='bg-cover bg-center w-10 h-10 rounded-full mr-3'
        // divImgConbustible.style='background-image: url(../Logo/logoSolo.png)'
        // let divgasolinaPrecio=document.createElement('div')
        // // p
        // let pDiesel= document.createElement('p')
        // pDiesel.className='font-bold text-gray-900 font-serif'
        // let pPrecio=document.createElement('p')
        // pPrecio.className='text-sm text-gray-700 font-mono'

        //  // aqui empieza los td con logo,precio,nombre Diesel Premium
        //  let td= document.createElement('td')
        //  let divSeparacionDerecha=document.createElement('div')
        //  divSeparacionDerecha.className='flex items-start mr-8'
        //  let centrarImgText=document.createElement('div')
        //  centrarImgText.className='flex items-center'
        //  let divImgConbustible=document.createElement('div')
        //  divImgConbustible.className='bg-cover bg-center w-10 h-10 rounded-full mr-3'
        //  divImgConbustible.style='background-image: url(../Logo/logoSolo.png)'
        //  let divgasolinaPrecio=document.createElement('div')
        //  // p
        //  let pDieselPremium= document.createElement('p')
        //  pDieselPremium.className='font-bold text-gray-900 font-serif'
        //  let pPrecio=document.createElement('p')
        //  pPrecio.className='text-sm text-gray-700 font-mono'


    }