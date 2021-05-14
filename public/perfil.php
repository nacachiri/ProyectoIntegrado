<?php
    session_start();

    if ($_SESSION['logged'] == false) {
        
        header('location:public/login.html');

    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script src="js/perfil.js"></script>
    <link rel="icon" type="image/png" href="Logo/logoFavicon.png">
    <title>CoinFuel | Perfil</title>
</head>
<body>
    <div>
        <div class="flex h-screen overflow-y-hidden bg-white">
          
          <div class="flex flex-col flex-1 h-full overflow-hidden">
            <!-- Navbar -->
            <header class="flex-shrink-0 border-b">
              <div class="flex items-center justify-between p-2">
                <button class="bg-blue-light rounded p-2 font-bold text-sm mr-2 flex">
                  <div><img class="w-1/6" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPGc+DQoJPGc+DQoJCTxwYXRoIGQ9Ik00MjEuOTM2LDIxMS43ODZ2MjM4LjUzM2gtOTAuMDY0VjM0Ny4xNTVjMC05LjA0NS03LjMzMS0xNi4zNzUtMTYuMzc1LTE2LjM3NUgyMDAuMzI0DQoJCQljLTkuMDQ1LDAtMTYuMzc1LDcuMzMxLTE2LjM3NSwxNi4zNzV2MTAzLjE2NEg5NC40MzFWMjExLjc4Nkg2MS42ODF2MjU0LjkwOGMwLDkuMDQ1LDcuMzMxLDE2LjM3NSwxNi4zNzUsMTYuMzc1aDEyMi4yNjkNCgkJCWM5LjA0NSwwLDE2LjM3NS03LjMzMSwxNi4zNzUtMTYuMzc1VjM2My41MzFoODIuNDIydjEwMy4xNjRjMCw5LjA0NSw3LjMzMSwxNi4zNzUsMTYuMzc1LDE2LjM3NWgxMjIuODE1DQoJCQljOS4wNDUsMCwxNi4zNzUtNy4zMzEsMTYuMzc1LTE2LjM3NVYyMTEuNzg2SDQyMS45MzZ6Ii8+DQoJPC9nPg0KPC9nPg0KPGc+DQoJPGc+DQoJCTxwYXRoIGQ9Ik01MDYuODE1LDI1NS41MDhMMjY5LjM3MywzMy4zNTFjLTYuMjUtNS44NTctMTUuOTY2LTUuODk1LTIyLjI3LTAuMTA0TDUuMjk1LDI1NS40MDUNCgkJCWMtNi42NTksNi4xMTktNy4wOTYsMTYuNDc0LTAuOTc3LDIzLjEzM2MzLjIyNiwzLjUyMSw3LjYzNiw1LjMsMTIuMDYzLDUuM2MzLjk1NywwLDcuOTMxLTEuNDMsMTEuMDc1LTQuMzE4TDI1OC4wODUsNjcuNjM1DQoJCQlsMjI2LjM1NSwyMTEuNzg3YzYuNjE2LDYuMTg0LDE2Ljk2NSw1LjgzLDIzLjE0NC0wLjc3QzUxMy43NTgsMjcyLjA0Nyw1MTMuNDE5LDI2MS42ODcsNTA2LjgxNSwyNTUuNTA4eiIvPg0KCTwvZz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjwvc3ZnPg0K"></div>
              </button>
              <div class="text-2xl font-serif"></div>
                <!-- Navbar right -->
                <div class="relative flex items-center space-x-3">
                  <!-- avatar button -->
                  <div class="relative" x-data="{ isOpen: false }">
                    <button class="p-1 bg-gray-200 rounded-full focus:outline-none focus:ring">
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
                    <div
                      @click.away="isOpen = false"
                      x-show.transition.opacity="isOpen"
                      class="absolute mt-3 transform -translate-x-full bg-white rounded-md shadow-lg min-w-max"
                    >
                      <div class="flex flex-col p-4 space-y-1 font-medium border-b">
                        <span class="text-gray-800">Ahmed Kamel</span>
                        <span class="text-sm text-gray-400">ahmed.kamel@example.com</span>
                      </div>
                       <!--<ul class="flex flex-col p-2 my-2 space-y-1">
                        <li>
                          <a href="#" class="block px-2 py-1 transition rounded-md hover:bg-gray-100">Link</a>
                        </li>
                        <li>
                          <a href="#" class="block px-2 py-1 transition rounded-md hover:bg-gray-100">Another Link</a>
                        </li>
                      </ul>-->
                    </div>
                  </div>
                </div>
              </div>
            </header>
            <!-- Main content -->
            <main class="flex-1 max-h-full p-5 overflow-hidden overflow-y-scroll">
              <!-- Start Content -->
             <div flex items-stretch >
              <div class="flex items-stretch grid grid-cols-1 gap-2 mt-0 sm:grid-cols-1 lg:grid-cols-4">
                <template x-for="i in 1" :key="i">
                  <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg ml-32 w-3/5">
                    <div class="flex items-start justify-between">
                      <div class="flex flex-col space-y-2">
                        <span class="text-gray-600">Gasolina</span>
                        <span class="text-lg font-semibold">100,31</span>
                      </div>
                      <div class="imagen"><img src="../logos/maps.png" alt="ubicacion" title="ubicación" width="60"></div>
                    </div>
                  </div>
                </template>
                <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg ml-24 w-3/5">
                    <div class="flex items-start justify-between">
                      <div class="flex flex-col space-y-2">
                        <span class="text-gray-600">Diesel</span>
                        <span class="text-lg font-semibold">100,21</span>
                      </div>
                      <div class="imagen"><img src="../logos/maps.png" alt="ubicacion" title="ubicación" width="60"></div>
                    </div>
                  </div>
                  <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg ml-16 w-3/5">
                    <div class="flex items-start justify-between">
                      <div class="flex flex-col space-y-2">
                        <span class="text-gray-600">RG</span>
                        <span class="text-lg font-semibold">100,22</span>
                      </div>
                      <div class="imagen"><img src="../logos/maps.png" alt="ubicacion" title="ubicación" width="60"></div>
                    </div>
                  </div>
                  <div class="p-4 transition-shadow border rounded-lg shadow-sm hover:shadow-lg ml-8 w-3/5">
                    <div class="flex items-start justify-between">
                      <div class="flex flex-col space-y-2">
                        <span class="text-gray-600">RG</span>
                        <span class="text-lg font-semibold">100,22</span>
                      </div>
                      <div class="imagen"><img src="../logos/maps.png" alt="ubicacion" title="ubicación" width="60"></div>
                    </div>
                  </div>
              </div>
            </div>
              <!-- Table see (https://tailwindui.com/components/application-ui/lists/tables) -->
              <h3 class="mt-20 ml-16 text-2xl font-serif">Gasolineras</h3>
              <div class="flex flex-col mt-6 ml-16 mr-8">
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
                              Gasolina
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
                              RG
                            </th>
                            <th scope="col" class="relative px-6 py-3">
                              <span class="sr-only text-gray-900">Ubicación</span>
                            </th>
                          </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200 ">
                          <template x-for="i in 1" :key="i">
                            <tr class="transition-all hover:bg-gray-100 hover:shadow-lg ">
                              <td class="px-6 py-4 whitespace-nowrap ">
                                <div class="flex items-center ">
                                  <div class="flex-shrink-0 w-10 h-10">
                                    <img
                                      class="w-10 h-10 rounded-full"
                                      src="https://avatars0.githubusercontent.com/u/57622665?s=460&u=8f581f4c4acd4c18c33a87b3e6476112325e8b38&v=4"
                                      alt=""
                                    />
                                  </div>
                                  <div class="ml-4">
                                    <div class="text-sm text-xl font-serif text-gray-900">Ahmed Kamel</div>
                                  </div>
                                </div>
                              </td>
                              <td class="px-6 py-4 whitespace-nowrap text-center ">
                                <div class="text-sm text-xl font-serif text-gray-900">Jose Soto Mico</div>
                              </td>
                              <td class="px-6 py-4 whitespace-nowrap text-center ">
                                <div class="text-sm text-xl font-serif text-gray-900">Jose Soto Mico</div>
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
                          </template>
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