document.addEventListener("DOMContentLoaded", () => {

    let botonEnviar = document.getElementById('saveForm');

    botonEnviar.addEventListener('click', (e) => {

        e.preventDefault();

        let email = document.getElementsByName('email');
        let password = document.getElementsByName('password');

        if (email[0].value != null && password[0].value != null && email[0].value != '' && password[0].value != '') {

            axios.post('../src/lecturaUsuario.php', {

                password : password[0].value,
                email : email[0].value,
    
            }).then((response) => {
                
                console.log(response.data);
    
                if (response.data == 1) {

                    let divAlerta = document.getElementById('divAlerta');
                    let spanMensajeAlerta = document.getElementById('divMensajeError');
                    let errorStrong = document.getElementById('errorStrong');
                    divAlerta.className = 'border text-green-700 px-4 py-3 rounded relative bg-green-100 border-green-400';
                    
                    errorStrong.innerHTML = 'OK!'
                    spanMensajeAlerta.innerHTML = 'Se ha loggeado correctamente';

                    setTimeout(() => {
                        window.location.href = '/';
                    }, 1500);
                
                }else{

                    let divAlerta = document.getElementById('divAlerta');
                    let spanMensajeAlerta = document.getElementById('divMensajeError');
                    divAlerta.classList.remove('hidden');
                    divAlerta.className = 'border text-red-700 px-4 py-3 rounded relative bg-red-100 border-red-400';
                    spanMensajeAlerta.innerHTML = response.data;

                }

            })

        }else {

            let divAlerta = document.getElementById('divAlerta');
            let spanMensajeAlerta = document.getElementById('divMensajeError');
            divAlerta.classList.remove('hidden');
            divAlerta.className = 'border text-red-700 px-4 py-3 rounded relative bg-red-100 border-red-400';
            spanMensajeAlerta.innerHTML = 'Alguno de los campos esta vacio';

        }
        
        

    })

});