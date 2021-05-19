<?php
    session_start();

    if ($_SESSION['logged'] == false) {
        
        header('location:login.html');

    }

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script src="js/perfil.js"></script>
    <link rel="icon" type="image/png" href="Logo/logoFavicon.png">
    <title>CoinFuel | Perfil</title>
</head>
<body>
  <div>
    <div class="flex h-screen overflow-y-hidden bg-white" x-data="setup()" x-init="$refs.loading.classList.add('hidden')">
      <div class="flex flex-col flex-1 h-full overflow-hidden">
        <!-- Navbar -->
        <header class="flex-shrink-0 border-b bg-gray-700">
          <div class="flex items-center justify-between p-2">
            <div class="text-xl font-serif cursor-pointer text-white" id="botonVolver"><img class="w-8 h-10 inline-block" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDY0IDY0IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyIiB4bWw6c3BhY2U9InByZXNlcnZlIiBjbGFzcz0iIj48Zz48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im01NCAzMGgtMzkuODk5bDE1LjI3OC0xNC41NTJjLjgtLjc2Mi44MzEtMi4wMjguMDY5LTIuODI4LS43NjEtLjc5OS0yLjAyNy0uODMxLTIuODI4LS4wNjlsLTE3LjQ0OCAxNi42MmMtLjc1NS43NTYtMS4xNzIgMS43Ni0xLjE3MiAyLjgyOSAwIDEuMDY4LjQxNyAyLjA3MyAxLjIwNyAyLjg2MmwxNy40MTQgMTYuNTg2Yy4zODcuMzY5Ljg4My41NTIgMS4zNzkuNTUyLjUyOCAwIDEuMDU2LS4yMDggMS40NDktLjYyMS43NjItLjguNzMxLTIuMDY1LS4wNjktMi44MjdsLTE1LjM0Mi0xNC41NTJoMzkuOTYyYzEuMTA0IDAgMi0uODk2IDItMnMtLjg5Ni0yLTItMnoiIGZpbGw9IiNmZmZmZmYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PC9zdmc+" /><span class="align-middle"> Volver</span></div>
            <!-- Navbar right -->
            
            <div class="relative flex items-center space-x-3">
              <!-- avatar button -->
              <div class="relative" x-data="{ isOpen: false }">
                <button @click="isOpen = !isOpen" class="p-1 bg-gray-200 rounded-full focus:outline-none focus:ring">
                  <img
                    class="object-cover w-10 h-10 rounded-full"
                    src="https://avatars0.githubusercontent.com/u/57622665?s=460&u=8f581f4c4acd4c18c33a87b3e6476112325e8b38&v=4"
                    alt="Ahmed Kamel"
                  />
                </button>
                <!-- green dot -->
                <div class="absolute right-0 p-1 bg-green-400 rounded-full bottom-3 animate-ping"></div>
                <div class="absolute right-0 p-1 bg-green-400 border border-white rounded-full bottom-3"></div>

                <!-- Dropdown card -->
                <!-- Dropdown card -->
                <div
                  @click.away="isOpen = false"
                  x-show.transition.opacity="isOpen"
                  class="absolute mt-1 transform -translate-x-40 bg-white rounded-md shadow-lg min-w-max"
                >
                  <div class="flex flex-col p-4 space-y-1 font-medium border-b">
                    <span class="text-gray-800" id="nameUser"></span>
                    <span class="text-sm text-gray-400" id="emailUser"></span>
                  </div>
                  <div class="flex items-center justify-center p-4 text-blue-700 underline border-t">
                    <a href="#" id="cerrarSesion">Logout</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </header>
        <!-- Main content -->
        <main class="flex-1 max-h-full p-5 overflow-y-scroll">
          <!-- Start Content -->
         <div class="" >
          <div class="flex items-stretch grid gap-2 mt-2 sm:grid-cols-1 lg:grid-cols-4">
              <div class="p-4 transition-shadow border hover:border-green-600 rounded-lg shadow-sm hover:shadow-lg">
                <div class="flex items-start justify-between">
                  <div class="flex flex-col space-y-2">
                    <span class="text-gray-600">Gasolina 95</span>
                    <span class="text-lg font-semibold" id="precioG95">- -</span>
                  </div>
                  <div class="imagen"><img src="imagenes/tipoGasolinaIconos/E5.png" alt="ubicacion" title="ubicación" width="60"></div>
                </div>
              </div>
            <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:border-green-300 hover:shadow-lg ">
                <div class="flex items-start justify-between">
                  <div class="flex flex-col space-y-2">
                    <span class="text-gray-600">Gasolina 98</span>
                    <span class="text-lg font-semibold" id="precioG98">- -</span>
                  </div>
                  <div class="imagen"><img src="imagenes/tipoGasolinaIconos/E10.png" alt="ubicacion" title="ubicación" width="60"></div>
                </div>
              </div>
              <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg hover:border-gray-900">
                <div class="flex items-start justify-between">
                  <div class="flex flex-col space-y-2">
                    <span class="text-gray-600">Diesel</span>
                    <span class="text-lg font-semibold" id="precioD">- -</span>
                  </div>
                  <div class="imagen"><img src="imagenes/tipoGasolinaIconos/B7.png" alt="ubicacion" title="ubicación" width="60"></div>
                </div>
              </div>
              <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg hover:border-gray-400">
                <div class="flex items-start justify-between">
                  <div class="flex flex-col space-y-2">
                    <span class="text-gray-600">Diesel Premium</span>
                    <span class="text-lg font-semibold" id="precioDP">- -</span>
                  </div>
                  <div class="imagen"><img src="imagenes/tipoGasolinaIconos/B10.png" alt="ubicacion" title="ubicación" width="60"></div>
                </div>
              </div>
          </div>
          <div>
          <span class=" mt-10 pr-2 block font-bold">Seleciona tu gasolinera de confianza: </span>
            <select class="mt-1 font-serif w-full pl-3 pr-10 py-2 text-black placeholder-gray-400 transition duration-100 ease-in-out bg-white border border-gray-300 rounded shadow-sm focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:outline-none focus:ring-opacity-50 disabled:opacity-50 disabled:cursor-not-allowed " name="conf" id="selectConf"></select>
          </div>
          
        </div>
              <h3 class="mt-10 text-2xl font-serif">Gasolineras Favoriotas</h3>
              <div class="flex flex-col">
                <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-0 w-6/6">
                  <div class="inline-block min-w-full py-2 align-middle">
                    <div class="overflow-hidden border-b border-gray-200 rounded-md shadow-md">
                      <table class="min-w-full overflow-x-scroll divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                          <tr>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase"
                            >
                              Nombre
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase"
                            >
                              DIRECCIÓN
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase"
                            >
                              MUNICIPIO
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-left text-gray-500 uppercase"
                            >
                              HORARIO
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-center text-gray-500 uppercase"
                            >
                              Gasolina 95
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-center text-gray-500 uppercase"
                            >
                              Gasolina 98
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-center text-gray-500 uppercase"
                            >
                              Diesel
                            </th>
                            <th
                              scope="col"
                              class="px-6 py-3 text-xs font-medium tracking-wider text-center text-gray-500 uppercase"
                            >
                              Diesel Plus
                            </th>
                            <th scope="col" class="relative px-6 py-3">
                              <span class="text-xs font-medium tracking-wider text-center text-gray-500 uppercase">Ubicación</span>
                            </th>
                          </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200" id="tabla">
                         
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </main>

              <!-- Settings Panel Content ... -->
            </div>
          </div>
        </div>
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.7.3/dist/alpine.min.js" defer></script>
        <script>
          const setup = () => {
            return {
              loading: true,
              isSidebarOpen: false,
              toggleSidbarMenu() {
                this.isSidebarOpen = !this.isSidebarOpen
              },
              isSettingsPanelOpen: false,
              isSearchBoxOpen: false,
            }
          }
        </script>
    </div>
</body>
</html>