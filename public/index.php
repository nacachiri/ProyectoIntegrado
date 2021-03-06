<?php
    session_start();

    if ($_SESSION['logged'] == false) {
        
        header('location:public/login.html');

    }

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="icon" type="image/png" href="Logo/logoFavicon.png">
    <title>CoinFuel | Perfil</title>
</head>
<body>
  <div>
    <div class="flex h-screen bg-white" x-data="setup()" x-init="$refs.loading.classList.add('hidden')">
        <div class="flex flex-col flex-1 h-full">
        <!-- Navbar -->
        <header class="flex-shrink-0 border-b bg-gray-700">
          <div class="flex items-center justify-between p-2">
            <div class="text-xl font-serif cursor-pointer text-white" id="botonVolver"><img class="w-8 h-10 inline-block" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTUwMy40MDEsMjI4Ljg4NGwtNDMuMjUzLTM5LjQxMVY1OC43OWMwLTguMzE1LTYuNzQxLTE1LjA1Ny0xNS4wNTctMTUuMDU3SDM0MC45NzZjLTguMzE1LDAtMTUuMDU3LDYuNzQxLTE1LjA1NywxNS4wNTcgICAgdjguMzc0bC01Mi4yMzYtNDcuNTk3Yy0xMC4wODMtOS4xODktMjUuMjg4LTkuMTg4LTM1LjM2Ny0wLjAwMUw4LjU5OCwyMjguODg1Yy04LjA3Niw3LjM2LTEwLjc0NSwxOC43LTYuNzk5LDI4Ljg4OSAgICBjMy45NDcsMTAuMTg5LDEzLjU1NywxNi43NzIsMjQuNDg0LDE2Ljc3MmgzNi42ODl2MjA5LjcyMWMwLDguMzE1LDYuNzQxLDE1LjA1NywxNS4wNTcsMTUuMDU3aDEyNS45MTMgICAgYzguMzE1LDAsMTUuMDU3LTYuNzQxLDE1LjA1Ny0xNS4wNTdWMzU2LjkzMUgyOTN2MTI3LjMzN2MwLDguMzE1LDYuNzQxLDE1LjA1NywxNS4wNTcsMTUuMDU3aDEyNS45MDggICAgYzguMzE1LDAsMTUuMDU3LTYuNzQxLDE1LjA1Ni0xNS4wNTdWMjc0LjU0N2gzNi42OTdjMTAuOTI2LDAsMjAuNTM3LTYuNTg0LDI0LjQ4NC0xNi43NzIgICAgQzUxNC4xNDcsMjQ3LjU4NSw1MTEuNDc5LDIzNi4yNDUsNTAzLjQwMSwyMjguODg0eiBNNDMzLjk2NSwyNDQuNDMzYy04LjMxNSwwLTE1LjA1Nyw2Ljc0MS0xNS4wNTcsMTUuMDU3djIwOS43MjFoLTk1Ljc5MyAgICBWMzQxLjg3NGMwLTguMzE1LTYuNzQyLTE1LjA1Ny0xNS4wNTctMTUuMDU3SDIwMy45NDJjLTguMzE1LDAtMTUuMDU3LDYuNzQxLTE1LjA1NywxNS4wNTd2MTI3LjMzN2gtOTUuOFYyNTkuNDkgICAgYzAtOC4zMTUtNi43NDEtMTUuMDU3LTE1LjA1Ny0xNS4wNTdIMzYuMjQ1bDIxOS43NTYtMjAwLjI0bDc0LjgzNiw2OC4xOTFjNC40MDgsNC4wMTYsMTAuNzcxLDUuMDUxLDE2LjIyNCwyLjY0NCAgICBjNS40NTQtMi40MSw4Ljk3My03LjgxMiw4Ljk3My0xMy43NzRWNzMuODQ3aDc0LjAwMnYxMjIuMjc2YzAsNC4yMzcsMS43ODQsOC4yNzYsNC45MTYsMTEuMTNsNDAuODAzLDM3LjE4SDQzMy45NjV6IiBmaWxsPSIjZmZmZmZmIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPC9nPjwvc3ZnPg==" /><span class="align-middle"></span></div>
            <!-- Navbar right -->

            <div class="relative flex items-center space-x-3">
              <!-- avatar button -->
              <div class="relative" x-data="{ isOpen: false }">
                <button @click="isOpen = !isOpen" class="p-1 bg-gray-200 rounded-full focus:outline-none focus:ring">
                  <img
                    class="object-cover w-10 h-10 rounded-full"
                    src="imagenes/iconoPerfil.png"
                    
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
                  class="z-50 absolute mt-1 transform -translate-x-40 bg-white rounded-md shadow-lg min-w-max"
                >
                  <div class="flex flex-col p-4 space-y-1 font-medium border-b">
                    <span class="text-gray-800" id="nameUser"></span>
                    <span class="text-sm text-gray-400" id="emailUser"></span>
                  </div>
                  <ul class="flex flex-col p-2 my-2 space-y-1">
                    <li>
                      <a href="public/perfil.php" class="block px-2 py-1 transition rounded-md hover:bg-gray-100">Mi perfil</a>
                    </li>
                  </ul>
                  <div class="flex items-center justify-center p-4 text-blue-700 underline border-t">
                    <a href="#" id="cerrarSesion">Logout</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </header>
        
        <div class="flex w-full">
          <div class="bg-gray-100 shadow rounded-lg p-6 mx-auto w-full mr-4 ml-4 m-6">
            <div class="grid lg:grid-cols-1 gap-6">
              <div class="border focus-within:border-gray-500 focus-within:text-gray-500 transition-all duration-500 relative rounded p-1">
                <div class="-mt-4 absolute tracking-wider px-1 uppercase text-xs">
                  <p>
                    <label for="name" class="bg-gray-100 text-gray-600 px-1">Buscador Municipio</label>
                  </p>
                </div>
                <p>
                  <input  class="z-1 py-1 px-1 text-gray-900 bg-gray-100 outline-none block h-full w-full" type="text" id="selectMunicipio" onkeyup="search(event)">
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="mx-auto">
          <div class="flex flex-wrap container mx-auto " id="targetasContenedor">
          
          </div>
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