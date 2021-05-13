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
    
                if (response.data == 1) {

                    window.location.href = 'index.php';

                }else{

                    console.log('Alguno de los campos es erroneo');

                }

            })

        }else {

            console.log('Campos Vacios');

        }
        
        

    })

});