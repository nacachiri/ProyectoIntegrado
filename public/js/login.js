document.addEventListener("DOMContentLoaded", () => {

    let botonEnviar = document.getElementById('saveForm');

    botonEnviar.addEventListener('click', (e) => {

        let email = document.getElementsByName('email');
        let password = document.getElementsByName('password');

        e.preventDefault();
        
        axios.post('./src/lecturaUsuario.php', {

            password : password[0].value,
            email : email[0].value,

        }).then((response) => {

            console.log(response.data);

        })

    })

});