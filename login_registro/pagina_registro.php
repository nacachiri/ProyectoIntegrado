<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css">
    <title>Document</title>
</head>
<body>

<div class="flex mx-auto h-screen h-full justify-center items-center">
    <div class="flex bg-white rounded-lg shadow-lg mx-auto max-w-sm lg:max-w-4xl justify-center items-center">
            <div class="block w-full">
                <img class="w-full h-full" src="../Logo/logoConLetras.png" alt="Workflow">
            </div>
        <div class="w-full h-full p-8">
                <h2 class="text-2xl font-semibold text-gray-700 text-center">Welcome back!</h2>
                <div class="mt-8 -mx-3 md:flex mb-4">
                <div class="md:w-1/2 px-3 mb-6 md:mb-0">
            <form action="clases/registro.php" method="post">
                    <label class="w-96 py-2 px-3 font-bold " for="grid-first-name">
                    First Name
                    </label>
                    <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker" type="text" placeholder="Jane" name="nombre">

                </div>
                <div class="md:w-1/2 px-3">
                    <label class="w-96 py-2 px-3 font-bold  " for="grid-last-name">
                    Last Name
                    </label>
                    <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker" type="text" placeholder="Doe" name="apellido">
                </div>
                </div>
                <div class="mb-4">
                    <div class="mb-4">
                        <label class="w-96 py-2 px-3 font-bold" for="email">
                            Email
                        </label>
                        <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker"
                            id="email"
                            type="email"
                            placeholder="Email"
                            name="email"
                        />
                    </div>
                <div class="-mx-3 md:flex mb-4">
                <div class="md:w-full px-3">
                    <label class="w-96 py-2 px-3 font-bold" for="grid-password">
                    Password
                    </label>
                    <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker" id="grid-password" type="password" placeholder="******************" name="contraseña">
                </div>
                </div>
                <div class="-mx-3 md:flex mb-2">
                <div class="md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="w-96 py-2 px-3 font-bold" for="grid-city">
                    DNI
                    </label>
                    <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker" id="grid-city" type="text" placeholder="00000000X" name="dni">
                </div>
                <div class="md:w-1/2 px-3">
                    <label class="w-96 py-2 px-3 font-bold" for="grid-zip">
                    CP
                    </label>
                    <input class="shadow appearance-none border rounded-full py-2 px-4 block w-full text-grey-darker" id="grid-zip" type="text" placeholder="12345" name="cp">
                </div>
                </div>
                <BR>
                <div>
                    <button type="submit" class="transition duration-700 transform hover:-translate-y-1 hover:scale-200 ease-in-out mx-auto flex items-stretch rounded-full py-2 px-4 block  w-full flex justify-center text-bold py-2 px-4 border font-bold text-lg text-white font-medium rounded-md bg-yellow-400 hover:bg-gray-500">
                      Registrate
                    </button>
                </div>
    </div>
</div>
</body>
</html>