document.addEventListener("DOMContentLoaded", () => {

    let botonEnviar = document.getElementById('saveRegistro');

    botonEnviar.addEventListener('click', (e) => {

        e.preventDefault();

        let name = document.getElementsByName('name');
        let surnames = document.getElementsByName('surnames');
        let email = document.getElementsByName('email');
        let password = document.getElementsByName('password');
        let dni = document.getElementsByName('dni');
        let cp = document.getElementsByName('cp');

        if (name[0].value != null && surnames[0].value != null && name[0].value != '' && surnames[0].value != '' && email[0].value != null && password[0].value != null && email[0].value != '' && password[0].value != '' && dni[0].value != null && cp[0].value != null && dni[0].value != '' && cp[0].value != '') {

            axios.post('../src/registerUser.php', {

                name : name[0].value,
                surnames : surnames[0].value,
                password : password[0].value,
                email : email[0].value,
                dni : dni[0].value,
                cp : cp[0].value,
    
            }).then((response) => {
    
                if (response.data == 1) {

                    let divAlerta = document.getElementById('divAlerta');
                    let spanMensajeAlerta = document.getElementById('divMensajeError');
                    divAlerta.classList.remove('hidden');
                    divAlerta.classList.remove('bg-red-100');
                    divAlerta.classList.add('bg-green-100');
                    spanMensajeAlerta.innerHTML = response.data;

                    // setTimeout(() => {
                    //     window.location.href = 'index.php';
                    // }, 3000);
                
                }else{

                    let divAlerta = document.getElementById('divAlerta');
                    let spanMensajeAlerta = document.getElementById('divMensajeError');
                    divAlerta.classList.remove('hidden');
                    spanMensajeAlerta.innerHTML = response.data;

                }

            })

        }else {

            let divAlerta = document.getElementById('divAlerta');
            let spanMensajeAlerta = document.getElementById('divMensajeError');
            divAlerta.classList.remove('hidden');
            spanMensajeAlerta.innerHTML = 'Alguno de los campos esta vacio';

        }
        
        

    })

});